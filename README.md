# I am Rodion

Personal CV site for Rodion Butkevich, senior backend engineer. Domain: `iamrodion.com`.

Static site, no build step, no JavaScript. One page: intro, experience, skills, education, contact. It follows the visitor's light or dark setting, and printing it (or saving as PDF) gives a clean CV.

Files:

- `index.html`: all the content. Each job is an `<article class="job">`; copy one to add a role. The stack chips under each job are a plain list.
- `style.css`: colour and font tokens at the top (light, then dark), then one block per part of the page, then phone and print rules.
- `favicon.svg`: "rb" on the accent green.
- `og.jpg`: the picture shown when the link is posted on LinkedIn, Slack, WhatsApp and so on. It's rendered from `tools/share-card.html` with `sh tools/render-share-card.sh` (needs Chrome). LinkedIn caches previews; to refresh one after changing the card, paste the URL into the [Post Inspector](https://www.linkedin.com/post-inspector/).
- `CNAME`: the custom domain for GitHub Pages.

The phone number is deliberately left off, since the page is public. The contact email is `rodion.butkevich@gmail.com`.

After changing `style.css` or `favicon.svg`, bump the `?v=` number on its link in `index.html` so browsers don't keep the old copy.

## Deploy (GitHub Pages)

Same setup as iamalena.com: served by GitHub Pages from the `main` branch root, with the domain's DNS at Porkbun pointing the apex at GitHub Pages' `A`/`AAAA` addresses and `www` at `rodion-b.github.io`.
