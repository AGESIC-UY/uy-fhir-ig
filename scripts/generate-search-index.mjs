import { constants } from "node:fs";
import { access, mkdir, readdir, readFile, writeFile } from "node:fs/promises";
import path from "node:path";
import { fileURLToPath } from "node:url";

const projectDir = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");
const outputDir = path.join(projectDir, "output", "es");
const destination = path.join(outputDir, "assets", "js", "uy-search-index.js");
const excludedPage = /(^buscar|\.ai|\.definitions|\.mappings|\.profile|\.snapshot|\.examples|\.json|\.xml|\.ttl)\.html$/i;

try {
  await access(outputDir, constants.R_OK);
} catch {
  console.warn(`Search index skipped: ${path.relative(projectDir, outputDir)} is unavailable.`);
  process.exit(0);
}

function decodeHtml(value) {
  return value
    .replace(/&nbsp;/gi, " ")
    .replace(/&amp;/gi, "&")
    .replace(/&quot;/gi, '"')
    .replace(/&#39;|&apos;/gi, "'")
    .replace(/&lt;/gi, "<")
    .replace(/&gt;/gi, ">");
}

function textFromHtml(value) {
  return decodeHtml(value
    .replace(/<!--[\s\S]*?-->/g, " ")
    .replace(/<script\b[\s\S]*?<\/script>|<style\b[\s\S]*?<\/style>/gi, " ")
    .replace(/<[^>]+>/g, " ")
    .replace(/\s+/g, " ")
    .trim());
}

function contentFromPage(html) {
  const contentStart = html.search(/<div\b[^>]*\bid=["']segment-content["'][^>]*>/i);
  const footerStart = html.search(/<div\b[^>]*\bid=["']segment-footer["'][^>]*>/i);
  return contentStart >= 0 ? html.slice(contentStart, footerStart >= 0 ? footerStart : undefined) : html;
}

function titleFromPage(html, fallback) {
  const title = html.match(/<h2[^>]*>([\s\S]*?)<\/h2>/i) || html.match(/<title[^>]*>([\s\S]*?)<\/title>/i);
  return title ? textFromHtml(title[1]).replace(/ - Guía de Implementación FHIR de Uruguay.*$/, "") : fallback;
}

const names = (await readdir(outputDir))
  .filter((name) => name.endsWith(".html") && !excludedPage.test(name))
  .sort((a, b) => a.localeCompare(b, "es"));

const index = [];
for (const name of names) {
  const html = await readFile(path.join(outputDir, name), "utf8");
  const text = textFromHtml(contentFromPage(html));
  if (text) index.push({ url: name, title: titleFromPage(html, name), text });
}

await mkdir(path.dirname(destination), { recursive: true });
await writeFile(destination, `/* Generated after each site build. Do not edit manually. */\nwindow.UY_SEARCH_INDEX=${JSON.stringify(index)};\n`, "utf8");
console.log(`Generated search index with ${index.length} pages: ${path.relative(projectDir, destination)}`);
