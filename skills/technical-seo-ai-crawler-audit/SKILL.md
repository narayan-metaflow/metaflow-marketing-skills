---
name: technical-seo-ai-crawler-audit
description: "Diagnose and prioritize the technical issues blocking a site from being crawled, indexed, ranked, and cited. Modern technical SEO has two audiences: Google's crawler/indexer and AI answer engines (GPTBot, PerplexityBot, ClaudeBot, etc.). Both need HTML-visible content and a clean crawl path."
---

## Why this matters

- **72% of websites fail at least one critical technical SEO factor** (third-party site-health benchmarks, 2025).
- **AI crawlers read raw HTML only — they do not execute JavaScript.** If critical content renders client-side, it's invisible to ChatGPT, Perplexity, and most AI assistants. SSR or SSG is mandatory for AI visibility.
- **Cloudflare changed its default to block AI bots.** Many sites accidentally block GPTBot/PerplexityBot/ClaudeBot without realizing it. Check this before anything else if AI visibility is a goal.
- WordPress specifically: only **43.44% pass Core Web Vitals** (Custom Web Audits). Google research shows a **32% higher bounce at 3-second load** time.
- Core Web Vitals thresholds (field data, 75th percentile): **LCP ≤2.5s**, **INP ≤200ms** (replaced FID in March 2024), **CLS ≤0.10**.

## Process

1. **Baseline snapshot.** Capture current state before touching anything: GSC coverage counts, CWV scores, indexed pages, top-ranking pages, crawl budget utilization. You cannot measure improvement without a baseline.
2. **Crawlability audit.** robots.txt rules, crawl budget, server errors (4xx/5xx), crawl depth, orphan pages, sitemap health.
3. **Indexation audit.** GSC coverage report, noindex issues, canonical conflicts, duplicate content, parameter handling, soft 404s.
4. **Core Web Vitals.** Field data from CrUX/GSC first — not Lighthouse lab scores. Lab scores are a starting point for diagnosis, not the KPI.
5. **Site architecture review.** Click depth from homepage, internal link distribution, URL structure, faceted navigation, pagination handling, breadcrumb implementation.
6. **JavaScript rendering audit.** Check what renders in raw HTML vs client-side. View-source test on key templates.
7. **Structured data audit.** Schema validation, coverage by page type, error rate, rich result eligibility.
8. **AI crawler accessibility.** robots.txt rules for GPTBot/PerplexityBot/ClaudeBot/Google-Extended/Bytespider. Cloudflare settings. Server log analysis for AI bot user agents. llms.txt file presence.
9. **Mobile-first verification.** Mobile Googlebot is primary. Confirm mobile renders equivalent content, not a stripped version.
10. **Security.** HTTPS site-wide, no mixed content, valid cert, HSTS if appropriate.
11. **Prioritized fix list.** Critical → High → Medium → Low, ordered by impact and effort.

## Frameworks

### Audit priority matrix

**Always fix in this order** — later work is wasted if earlier layers are broken:

1. **Crawl/index blocking issues** (robots.txt errors, accidental noindex, server errors). If Google can't crawl or index, nothing else matters.
2. **AI crawler access** (if AI visibility is a goal). Block discovery = no citation.
3. **Core Web Vitals** failures on key templates (LCP, INP, CLS).
4. **Duplicate content / canonical conflicts** that split link equity.
5. **Site architecture** (click depth, internal linking).
6. **Structured data** coverage and errors.
7. **Refinements** (image optimization, security headers, minor schema).

### Core Web Vitals thresholds

| Metric | Good | Needs improvement | Poor |
|--------|------|-------------------|------|
| **LCP** (Largest Contentful Paint) | ≤ 2.5s | 2.5s – 4.0s | > 4.0s |
| **INP** (Interaction to Next Paint) | ≤ 200ms | 200ms – 500ms | > 500ms |
| **CLS** (Cumulative Layout Shift) | ≤ 0.10 | 0.10 – 0.25 | > 0.25 |

Thresholds apply to the **75th percentile of field data** (real-user monitoring), not lab scores. Get field data from: GSC Core Web Vitals report (free, authoritative), CrUX dashboard, PageSpeed Insights (field tab, not lab), or your RUM tool.

**INP replaced FID** in March 2024. Do not use FID as a KPI.

### AI crawler access checklist

| Check | What to verify | How |
|-------|---------------|-----|
| **robots.txt** | GPTBot, PerplexityBot, ClaudeBot, Google-Extended, Bytespider, CCBot not blocked | Fetch `https://domain.com/robots.txt`, grep for each user-agent |
| **Cloudflare AI bot blocking** | "Block AI Bots" toggle is OFF in Cloudflare dashboard (default: ON as of 2024) | Cloudflare dashboard → Security → Bots → "Block AI Bots" |
| **Server logs** | AI bot user agents are hitting the site (ChatGPT-User, PerplexityBot, ClaudeBot) | Grep last 30 days of access logs for each UA string |
| **JavaScript rendering** | Critical content visible in raw HTML | Right-click → View Source on key templates; search for visible text |
| **llms.txt** | File at site root providing AI-readable site structure | Fetch `https://domain.com/llms.txt` |
| **Logged-in / paywall content** | Gated content is not accessible to AI crawlers (by design) | Confirm this is intentional |

**robots.txt example (permissive for AI):**
```
User-agent: GPTBot
Allow: /

User-agent: PerplexityBot
Allow: /

User-agent: ClaudeBot
Allow: /

User-agent: Google-Extended
Allow: /
```

**Note on robots.txt semantics:** Absence of a `Disallow` for a user-agent means allowed. The explicit `Allow: /` block above is belt-and-suspenders — useful for clarity and for sites that have a global disallow earlier in the file.

### Common technical issues → fix actions

| Issue | Fix |
|-------|-----|
| Duplicate content across URL variants | Canonical tags to preferred URL; 301 redirect when safe |
| Thin content (<300 words, no unique value) | Noindex, consolidate with related page, or rewrite |
| Redirect chains (3+ hops) | Collapse to single 301 hop |
| Mixed internal linking (http + https, www + non-www) | Standardize on one version; redirect the others |
| Orphan pages (no internal links pointing to them) | Add internal links from topically relevant pages |
| Infinite faceted navigation generating URLs | noindex + parameter handling; disallow crawler traps |
| Slow LCP on key templates | Preload hero image, remove render-blocking CSS/JS, optimize server response |
| Poor INP on interactive pages | Break up long tasks, defer non-critical JS, audit third-party scripts |
| CLS from dynamically-inserted content | Reserve space for ads/images with CSS `aspect-ratio` or fixed dimensions |
| Schema errors (GSC Enhancement reports) | Fix per Schema.org spec; validate with Rich Results Test |
| Content rendered client-side (invisible to AI) | Migrate to SSR/SSG; at minimum, server-render the critical above-fold content |

### Monitoring cadence

- **Weekly:** GSC for new Coverage errors, manual actions, security issues; uptime.
- **Monthly light check:** Key page indexation, CWV scores (mobile + desktop), new issues in GSC Enhancements, AI bot hits in logs, Cloudflare bot settings unchanged.
- **Quarterly deep audit:** Full crawl (desktop crawler), log file analysis, schema coverage, internal link audit, redirect chains.
- **Emergency audit:** Post-migration, post-redesign, post-CMS change, post-CDN change, post-algorithm update with traffic drop.

### Tool reference (free-first)

| Purpose | Free | Paid (if needed) |
|---------|------|------------------|
| Crawl errors + indexation | **Google Search Console** (authoritative) | — |
| Full site crawl | Free desktop crawler (URL limits vary) | Commercial crawl suite |
| Field CWV data | **GSC Core Web Vitals report**, CrUX dashboard | — |
| Lab CWV / diagnosis | **PageSpeed Insights**, Chrome DevTools Lighthouse | — |
| Rendering check | Chrome DevTools, **URL Inspection in GSC** | Prerender.io, Rendertron |
| Schema validation | **Rich Results Test**, Schema.org validator | — |
| Log file analysis | awk/grep on access logs | Log analyzers, SIEM (e.g. Splunk) |
| Competitive technical comparison | — | Commercial SEO audit tools |

GSC is the only fully authoritative source — everything else is a proxy. Always ground findings in GSC when possible.

## Output format

```
## Technical SEO Audit Report

**Site:** [URL]
**Audit Date:** [Date]
**Crawl Tool:** [Desktop crawler / cloud crawl suite / etc.]
**Pages Crawled:** [X]
**Data Sources:** GSC, CrUX, [other]

### Health Score: [X/100]

### 🔴 Critical — Blocks crawling/indexation/AI citation
1. **[Issue]** — [X pages affected]
   - Evidence: [GSC report / crawl finding / log line]
   - Fix: [Specific action]
   - Effort: [Low/Medium/High]
   - Priority: **Immediate**

### 🟡 High Priority — Impacts rankings or CWV
1. **[Issue]** — [X pages affected]
   - Fix: [Specific action]
   - Priority: **This sprint**

### 🟢 Medium / Low — Refinements
...

### AI Crawler Status
| Bot | Allowed in robots.txt | Cloudflare | Seen in logs (last 30d) | Notes |
|-----|----------------------|------------|-------------------------|-------|
| GPTBot | | | | |
| PerplexityBot | | | | |
| ClaudeBot | | | | |
| Google-Extended | | | | |

### JavaScript Rendering Check
| Template | Renders in raw HTML | AI-visible | Action |
|----------|---------------------|------------|--------|
| Homepage | | | |
| Article | | | |
| Product | | | |
| Category | | | |

### Core Web Vitals (Field Data, 75th percentile)
| Metric | Mobile | Desktop | Status |
|--------|--------|---------|--------|
| LCP    |        |         |        |
| INP    |        |         |        |
| CLS    |        |         |        |

### Schema Coverage
| Page type | Schema type | Implemented | Valid | Errors |
|-----------|-------------|-------------|-------|--------|

### Monitoring Plan
- **Weekly:** [metrics]
- **Monthly:** [checks]
- **Quarterly:** [full audit scope]
- **Next audit:** [date]
```

## Example — mid-sized SaaS audit

**Site:** example-saas.com (2,400 URLs, WordPress on Cloudflare)
**Baseline:** 780 indexed, GSC Coverage shows 120 "Crawled — not indexed," CWV mobile all red

**Key findings:**
- 🔴 **Cloudflare blocking all AI bots** by default — zero AI bot hits in logs for 60 days. ChatGPT, Perplexity, Claude cannot reach the site at all.
- 🔴 **200 thin blog archive pages** (`/tag/*`, `/author/*`) indexed, cannibalizing real content. GSC shows "Duplicate without user-selected canonical" on 180 of them.
- 🟡 **LCP 3.8s mobile** on the primary blog template — unoptimized hero image (1.2MB PNG, should be WebP ~180KB) and render-blocking theme CSS.
- 🟡 **React-based pricing page** — pricing numbers render client-side. Invisible to AI crawlers that do not execute JS.
- 🟢 **Schema coverage** is strong on articles but missing on product/pricing pages.

**Prioritized fixes:**
1. [**Immediate**] Disable "Block AI Bots" in Cloudflare dashboard. Add explicit `Allow` directives in robots.txt for GPTBot, PerplexityBot, ClaudeBot, Google-Extended. Verify with log sampling within 7 days.
2. [**Immediate**] Noindex tag/author archive pages in WordPress settings (Yoast → Taxonomies).
3. [**This sprint**] Compress hero images site-wide; convert to WebP; preload on blog template. Target mobile LCP <2.5s.
4. [**This sprint**] Server-render pricing page critical content. At minimum, output pricing numbers in raw HTML with JS progressive enhancement.
5. [**Next sprint**] Add Product + Offer schema to pricing page; add FAQPage schema to help center.

**Monitoring:** Weekly GSC Coverage + CWV check. Monthly log sample for AI bot hits. Quarterly deep audit.

## Guidelines

- **Fix crawl/index blockers before optimizing CWV.** A fast page that isn't indexed is worth nothing. Sequence matters.
- **Use field data (real users), not lab data, for CWV KPIs.** Lighthouse lab scores are a diagnostic starting point, not the target. GSC/CrUX is authoritative.
- **Check AI bot access before assuming "AI isn't finding us."** Cloudflare's default-block setting catches many teams by surprise.
- **AI visibility ≠ SEO visibility.** An SSR'd raw-HTML page is the floor for AI citation. If critical content is in a `<div id="root">` only, AI tools cannot see it.
- **A site audit without GSC access is incomplete.** If you don't have GSC, your first deliverable is "set up GSC." Everything else is guesswork.
- **Don't chase a 100/100 Lighthouse score.** Chase CWV pass rates in field data. Perfect lab scores at the cost of real-user performance is the wrong trade.
- **Log file analysis reveals what crawler-based tools cannot.** If you're diagnosing crawl budget, ranking loss, or AI bot access, server logs are the ground truth.
- **Treat llms.txt as experimental.** Its ecosystem adoption is early. Implement it, but do not rely on it — standard robots.txt and HTML-renderable content remain primary.
- **Never skip the mobile check.** Google's mobile-first indexer is the primary index. "Looks fine on desktop" is irrelevant.
- **Quarterly audits are the default cadence** for most sites. Monthly for large e-commerce or news sites. Post-migration audits are non-negotiable.

## Cross-skill handoffs

- **→ seo-onpage-optimization:** Hand off specific pages with schema gaps, thin content, or rendering issues for page-level fixes.
- **→ aeo-ai-search-visibility:** Hand off AI crawler access findings and JS-rendering gaps as inputs to citation readiness.
- **→ seo-reporting:** Hand off baseline metrics and CWV field data as tracked KPIs.
