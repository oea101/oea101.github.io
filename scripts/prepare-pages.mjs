import { mkdir, copyFile, writeFile, access } from 'node:fs/promises';
for (const route of ['writing','speaking','prototyping','prototyping/language-model-evaluation','about']) {
  await access(`dist/client/${route}.html`);
  await mkdir(`dist/client/${route}`, { recursive: true });
  await copyFile(`dist/client/${route}.html`, `dist/client/${route}/index.html`);
}
await writeFile('dist/client/.nojekyll', '');
