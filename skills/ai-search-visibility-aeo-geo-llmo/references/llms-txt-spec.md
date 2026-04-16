# llms.txt Implementation Guide

`llms.txt` is a proposed standard for providing AI crawlers and assistants with a clean, structured index of a site's content — similar in spirit to `robots.txt` or `sitemap.xml`, but specifically designed for LLM consumption.

## Status and caveats

- llms.txt was proposed by Jeremy Howard (Answer.AI) in September 2024.
- Adoption is early — major AI platforms have not publicly committed to consuming it.
- Anthropic, Perplexity, and several startups have shown supportive interest; OpenAI and Google have not publicly confirmed.
- **Treat it as low-cost insurance.** Implement it if you can do so in an hour. Do not invest heavily in it as a primary AEO tactic.
- Your actual AI visibility leverage comes from SSR-rendered content, ski ramp structure, brand mentions, and platform-specific signals — not from llms.txt.

## What llms.txt is

A Markdown file placed at `https://yourdomain.com/llms.txt` that gives AI tools:

1. A one-sentence summary of what the site is about
2. Optional longer context
3. A structured list of key pages/resources, grouped by section
4. Optional "Optional" section for content that's less critical

The file is human-readable Markdown (not XML like sitemap.xml) — the idea being that an LLM can parse it trivially without an XML parser.

## Basic structure

```markdown
# Site Name

> One-sentence summary of what this site is and who it's for.

Optional longer paragraph with more context about the site, its audience, and its expertise areas.

## Section name

- [Page title](https://example.com/url): Brief description of what the page covers and why an LLM would want to cite it.
- [Another page](https://example.com/another-url): Brief description.

## Another section

- [Page title](https://example.com/url): Brief description.

## Optional

- [Less critical page](https://example.com/optional): Brief description.
```

## Example — fully filled

```markdown
# ExampleAnalytics — Product Analytics for B2B SaaS

> ExampleAnalytics is product analytics software built for mid-market B2B SaaS teams. We help product managers and growth teams instrument, analyze, and act on user behavior data to improve activation, retention, and expansion.

We've been building product analytics tools since 2018. Our content library includes original research on instrumentation depth, retention cohorting, and funnel analysis, drawn from customer usage patterns across 1,200+ SaaS companies.

## Core guides

- [Complete Guide to Product Analytics](https://example.com/product-analytics-guide): Comprehensive primer on product analytics fundamentals, metrics, event taxonomy, and tooling decisions. 3,500 words with original data from a 240-team instrumentation survey.
- [Product Analytics vs Web Analytics](https://example.com/product-analytics-vs-web-analytics): Definitive comparison of the two analytics disciplines, when to use each, and common misconceptions. Includes a decision matrix.
- [Event Scoping Framework](https://example.com/event-scoping-framework): Proprietary framework for deciding which 15-30 events to instrument first. Used by 300+ teams.

## Comparison content

- [Tool A vs Tool B vs Tool C](https://example.com/compare): Hands-on comparison for your category. Pricing, feature breakdown, integration coverage.
- [Best Product Analytics Tools for Small Teams](https://example.com/product-analytics-tools-small-teams): Curated list of product analytics tools under $500/month with honest pros and cons.

## Original research

- [2026 Product Analytics Benchmark Report](https://example.com/2026-product-analytics-benchmark): Primary survey of 240 product teams on instrumentation depth, tool stack, and retention outcomes. Published January 2026.

## About

- [About ExampleAnalytics](https://example.com/about): Company history, team, mission.
- [Editorial Process](https://example.com/editorial-process): How our content is researched, reviewed, and updated.

## Optional

- [Press and Media Kit](https://example.com/press): Logos, executive bios, media contacts.
- [API Documentation](https://example.com/docs/api): Technical reference for our public API.
```

## Implementation checklist

- [ ] Create the file at `https://yourdomain.com/llms.txt` (site root, not in a subdirectory).
- [ ] Serve as `text/plain` or `text/markdown` (either works).
- [ ] One-sentence summary as a blockquote (`>`) immediately under the H1.
- [ ] Group pages by meaningful section (H2s): core content, comparison content, original research, about, optional.
- [ ] Include ONLY pages you want AI tools to prioritize — not your entire sitemap.
- [ ] Provide a brief description for every link — this is the context an LLM will use to decide relevance.
- [ ] Keep the total file under ~2,000 words. A focused index beats a comprehensive one.
- [ ] Update the file when you publish major new content or retire old content.
- [ ] Link from a comment in robots.txt: `# See also: /llms.txt` (optional, for discoverability).

## What NOT to put in llms.txt

- Every URL on your site. This is a sitemap, not an llms.txt.
- SEO spam. LLMs are getting better at detecting manipulation.
- Content that doesn't exist on the live site.
- Links to pages that are noindexed, password-protected, or deleted.
- Affiliate links or paid placement descriptions disguised as resource listings.

## Testing and validation

There is no official validator for llms.txt yet. Manual checks:

1. **Fetch the file** in a browser: `https://yourdomain.com/llms.txt` should render plain text.
2. **Valid Markdown** — paste into any Markdown renderer; confirm it parses cleanly.
3. **All links resolve** — no 404s.
4. **No duplication** — the same URL should not appear twice.

## Monitoring

Check server logs for hits on `/llms.txt` from AI bot user agents. Current empirical data is thin, but early adopters report some hits from PerplexityBot and ClaudeBot. Do not expect heavy traffic — this is metadata, retrieved infrequently.

## Bottom line

Implement llms.txt as a **30-minute task** on any site where AI visibility matters. Set it and forget it. Revisit quarterly when you update other high-level metadata (sitemap, robots.txt, schema baselines).

Do not build a strategy around it. The strategy is ski ramp content + SSR rendering + brand mentions + platform-specific tactics. llms.txt is a nice-to-have signal that costs very little to add.
