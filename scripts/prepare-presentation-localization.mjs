// Sincroniza las fuentes de localización antes de regenerar solo HTML con Jekyll.
import { cp, mkdir, readdir, readFile, writeFile } from "node:fs/promises";
import { existsSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");
const pages = path.join(root, "temp", "pages");
if (!existsSync(pages)) throw new Error("Falta temp/pages/: ejecutar primero el Publisher.");
await mkdir(path.join(pages, "_plugins"), { recursive: true });
await mkdir(path.join(pages, "_data"), { recursive: true });
await cp(path.join(root, "custom-template", "content", "_plugins"), path.join(pages, "_plugins"), { recursive: true });
await cp(path.join(root, "custom-template", "data"), path.join(pages, "_data"), { recursive: true });
await cp(path.join(root, "custom-template", "translations", "stringsBase.json"), path.join(pages, "_data", "stringsBase.json"));
// El Publisher sustituye ReleaseHeader después de Jekyll. Al ejecutar Jekyll
// solo, conservar el aviso real anterior o identificar explícitamente la build local.
const noticeFile = path.join(pages, "_data", "local_build_notice.json");
let notice = null;
for (const relative of ["es/index.html", "index.html"]) {
  const filename = path.join(root, "output", relative);
  if (!existsSync(filename)) continue;
  const html = await readFile(filename, "utf8");
  const match = html.match(/<p\b[^>]*\bid=["']publish-box["'][^>]*>([\s\S]*?)<\/p>/);
  if (match && !match[1].includes("Publish Box goes here")) { notice = { html: match[1] }; break; }
}
if (!notice && existsSync(noticeFile)) notice = JSON.parse(await readFile(noticeFile, "utf8"));
if (!notice) {
  const fhir = JSON.parse(await readFile(path.join(pages, "_data", "fhir.json"), "utf8"));
  const escape = (text) => String(text).replace(/[&<>"']/g, (ch) => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" })[ch]);
  notice = { html: `${escape(fhir.ig.title)} - Local Development build (v${escape(fhir.igVer)}).` };
}
await writeFile(noticeFile, JSON.stringify(notice, null, 2) + "\n");
// Los informes previos pertenecen al Publisher, no a la regeneración de presentación.
const reports = path.join(pages, "_localization_reports");
await mkdir(reports, { recursive: true });
for (const name of await readdir(path.join(root, "output"))) {
  if (/^qa.*\.html$/.test(name)) await cp(path.join(root, "output", name), path.join(reports, name));
  // Jekyll elimina archivos que no están en su fuente; una revisión de texto no
  // debe borrar los paquetes y descargas generados previamente por el Publisher.
  if (/\.(tgz|zip)$/.test(name)) await cp(path.join(root, "output", name), path.join(pages, name));
}
console.log("Fuentes de localización sincronizadas para Jekyll.");
