// Genera custom-template/data/profile_translations.json a partir de la memoria de
// traducción y de los snapshots publicados. Uso: node scripts/build-profile-translations.mjs [--site <carpeta>] [--pending]
import { existsSync } from "node:fs";
import { readdir, readFile, writeFile } from "node:fs/promises";
import path from "node:path";
import { fileURLToPath } from "node:url";

const projectDir = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");
const args = process.argv.slice(2);
const siteArg = args.indexOf("--site");
if (siteArg >= 0 && (!args[siteArg + 1] || args[siteArg + 1].startsWith("--"))) {
  console.error("--site requiere la carpeta que contiene los snapshots publicados.");
  process.exit(1);
}
const outputDir = siteArg >= 0 ? path.resolve(args[siteArg + 1]) : path.join(projectDir, "output");
const generatedDir = path.join(projectDir, "fsh-generated", "resources");
const memoryFile = path.join(projectDir, "custom-template", "data", "profile_translation_memory.json");
const catalogFile = path.join(projectDir, "custom-template", "data", "profile_translations.json");
const jekyllDataDir = path.join(projectDir, "temp", "pages", "_data");
const fields = ["short", "definition", "comment", "requirements", "binding.description"];
const showPending = process.argv.includes("--pending");

function fieldValue(element, field) {
  return field === "binding.description" ? element.binding?.description : element[field];
}

if (!existsSync(outputDir)) {
  console.error("No existe output/: compilar la guía antes de generar el catálogo.");
  process.exit(1);
}

// Una entrada con "paths" solo se aplica a los elementos cuyo id o base.path figura en la lista
// y prevalece sobre la entrada general del mismo texto.
const memory = new Map();
for (const entry of JSON.parse(await readFile(memoryFile, "utf8"))) {
  if (!fields.includes(entry.field) || !entry.source || !entry.target) {
    console.error(`Entrada inválida en la memoria: ${JSON.stringify(entry).slice(0, 120)}`);
    process.exit(1);
  }
  const key = `${entry.field}\u0000${entry.source}`;
  if (!memory.has(key)) memory.set(key, { general: null, scoped: [] });
  if (entry.paths) memory.get(key).scoped.push(entry);
  else if (memory.get(key).general) {
    console.error(`Texto duplicado en la memoria (${entry.field}): ${entry.source.slice(0, 80)}`);
    process.exit(1);
  } else memory.get(key).general = entry;
}

function translate(element, field, source) {
  const found = memory.get(`${field}\u0000${source}`);
  if (!found) return null;
  const scoped = found.scoped.find((entry) => entry.paths.includes(element.id) || entry.paths.includes(element.base?.path));
  return (scoped || found.general)?.target ?? null;
}

// output/ puede conservar páginas de perfiles retirados en compilaciones anteriores.
// El catálogo solo incluye las definiciones presentes en la compilación FSH actual.
if (!existsSync(generatedDir)) {
  console.error("No existe fsh-generated/resources/: ejecutar SUSHI antes de generar el catálogo.");
  process.exit(1);
}
const currentDefinitions = new Set((await readdir(generatedDir))
  .filter((name) => /^StructureDefinition-[^ ]+\.json$/.test(name)));
const names = (await readdir(outputDir))
  .filter((name) => currentDefinitions.has(name))
  .sort((a, b) => a.localeCompare(b, "en"));
if (!currentDefinitions.size || names.length !== currentDefinitions.size) {
  console.error("Faltan definiciones publicadas de la compilación FSH actual: completar la compilación de la guía antes de regenerar el catálogo.");
  process.exit(1);
}
const definitions = [];
for (const name of names) {
  const definition = JSON.parse(await readFile(path.join(outputDir, name), "utf8"));
  if (!definition.snapshot?.element?.length) {
    console.error(`Falta el snapshot publicado de ${name}: completar la compilación de la guía.`);
    process.exit(1);
  }
  definitions.push(definition);
}

// Los textos asignados en algún diferencial propio son descripciones de la guía, no texto heredado.
const local = new Set();
for (const definition of definitions) {
  for (const element of definition.differential?.element ?? []) {
    for (const field of fields) {
      const value = fieldValue(element, field);
      if (value) local.add(`${field}\u0000${value}`);
    }
  }
}

const catalog = {};
const pending = new Map();
let translated = 0;
let untranslated = 0;
for (const definition of definitions) {
  const entries = [];
  const prohibited = (definition.snapshot?.element ?? []).filter((element) => element.max === "0").map((element) => `${element.id}.`);
  for (const element of definition.snapshot?.element ?? []) {
    // El Publisher no muestra los descendientes de un elemento prohibido.
    if (prohibited.some((prefix) => element.id.startsWith(prefix))) continue;
    for (const field of fields) {
      const source = fieldValue(element, field);
      if (!source || local.has(`${field}\u0000${source}`)) continue;
      const target = translate(element, field, source);
      if (target && target !== source) {
        entries.push({ element: element.id, field, source, target });
        translated += 1;
      } else if (!target) {
        untranslated += 1;
        const key = `${field}\u0000${source}`;
        pending.set(key, (pending.get(key) ?? 0) + 1);
      }
    }
  }
  if (entries.length) catalog[definition.id] = entries;
}

const lines = Object.entries(catalog).map(([id, entries]) =>
  `${JSON.stringify(id)}: [\n${entries.map((entry) => `  ${JSON.stringify(entry)}`).join(",\n")}\n]`);
const serialized = `{\n${lines.join(",\n")}\n}\n`;
await writeFile(catalogFile, serialized, "utf8");
// Permite regenerar solo el HTML (opción jekyll de _build) sin repetir la compilación completa.
if (existsSync(jekyllDataDir)) await writeFile(path.join(jekyllDataDir, "profile_translations.json"), serialized, "utf8");

console.log(`Catálogo generado: ${path.relative(projectDir, catalogFile)}`);
console.log(`  perfiles: ${Object.keys(catalog).length}; traducciones aplicables: ${translated}`);
console.log(`  textos heredados sin traducción: ${untranslated} (${pending.size} textos distintos)`);
if (showPending) {
  for (const [key, count] of [...pending].sort((a, b) => b[1] - a[1])) {
    const [field, source] = key.split("\u0000");
    console.log(`${count}\t${field}\t${JSON.stringify(source)}`);
  }
}
