# Manny Akintayo — personal website

Live website: https://oea101.github.io/

The `source` branch contains the editable website. The `main` branch contains the published static files and is served by GitHub Pages.

## Content

Edit `app/site-content.ts` to change your biography, article links, talks or prototypes. Writing links open the original Coffee Break Substack posts. The initial import includes the 20 posts available in its RSS feed and a link to the full Substack archive. New articles are not imported automatically.

## Build and publish

Use Node.js 22.13 or later. Run `npm ci` then `npm run build`. The output is in `dist/client`. Copy that output (including `.nojekyll` and `_next`) into a checkout of the `main` branch, commit, and push. GitHub Pages publishes the update automatically. Keep editable source on this `source` branch.

Run `npm run dev` for a local preview.

## Domain

An optional custom domain can be connected in repository Settings → Pages.

## Initial content

The biography comes from Manny Akintayo's public Substack profile. Article metadata comes from https://getcbt.substack.com/feed. Speaking and Prototyping await real entries.
