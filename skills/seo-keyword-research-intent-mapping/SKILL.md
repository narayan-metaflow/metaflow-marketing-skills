---
name: seo-keyword-research-intent-mapping
description: Build a keyword universe that reflects how both humans *and* AI answer engines search. Traditional keyword research looks at standalone terms; modern research also maps the **fan-out sub-queries** AI tools generate when breaking down a user prompt.
---

## Why this matters

- 58.5% of US searches and 77.2% of mobile searches end without a click (third-party search studies, 2025). Keyword value now depends on intent + SERP context, not just volume.
- AI Overviews and AI assistants split questions into sub-queries before retrieval. A single target keyword rarely captures the full opportunity — the sub-query fragments do.
- AI Overviews reduce position #1 CTR by 34.5%+ (industry research, large keyword samples). Informational volume no longer converts to traffic the way it used to — intent weighting matters more than ever.

## Process

1. **Seed discovery.** Pull seeds from: business goals, product/service names, customer support tickets, sales call transcripts, Reddit/forum threads, internal search logs, and review-site language. Customer wording beats marketer wording.
2. **Expand the universe.** For each seed: related terms, long-tail variations, question formats (who/what/why/how/when), modifiers (best/top/vs/alternatives/cheap/free/enterprise), and conversational phrasings ("how do I…", "what's the best way to…"). Tools: GSC Performance report (free, your own data), keyword research suites, Google autocomplete, and People Also Ask.
3. **Classify intent.** Map each keyword to one of four intent types (matrix below). If intent is ambiguous, the SERP tells you — check what's actually ranking.
4. **Analyze SERP landscape.** For each cluster, log: dominant content type (article/listicle/product/video), SERP features triggered (AI Overview, Featured Snippet, PAA, Local Pack, Shopping, Video carousel), and whether the top 10 is dominated by brands you can realistically beat. If the SERP is all DR 85+ enterprise tools and you're a startup, keyword difficulty scores understate reality.
5. **Score and prioritize.** Apply the prioritization formula (below). Volume alone is misleading — a 50-volume transactional term can beat a 10K informational one for revenue.
6. **Map to content.** Each cluster gets a target page, content type, pillar/cluster role, and URL status (exists/refresh/create).
7. **Fan-out sub-query analysis for AEO.** For each target keyword that matters in AI search, list the 3-5 sub-queries an AI would generate and check whether your content answers each fragment directly.

## Frameworks

### Intent classification matrix

| Intent | Signals | Content format | Conversion expectation |
|--------|---------|----------------|------------------------|
| **Informational** | "what is", "how to", "guide", "examples", "why" | Articles, tutorials, videos, pillar pages | Low direct; high assist + retargeting value |
| **Commercial** | "best", "top", "vs", "review", "alternatives", "comparison" | Listicles, comparison pages, reviews, category pages | Medium; late-stage consideration |
| **Transactional** | "buy", "pricing", "demo", "free trial", "discount", "coupon" | Product pages, pricing pages, landing pages | High; direct revenue |
| **Navigational** | Brand name, product name, login, specific URL | Homepage, product pages, help docs | High if your brand; low if competitor brand |

**Ambiguity rule:** When a keyword could fit multiple buckets, the SERP is authoritative. If "project management software" shows listicles in the top 10, it's commercial — not transactional — regardless of the words.

### Keyword prioritization formula

```
Priority Score = (Monthly Volume × Intent Weight × Business Relevance) / Keyword Difficulty
```

**Intent weight multipliers:**
- Transactional: **3.0x**
- Commercial: **2.5x**
- Informational: **1.0x**
- Navigational: **0.5x** (unless brand defense)

**Business relevance:** 1-5 scale. 5 = directly sells your core product. 1 = tangential topical authority play.

**Keyword difficulty:** Use the KD score from your tool, but cross-check by manually scanning the top 10. If all results are DR 80+ brands with topical authority, add 20 points to the reported KD.

**Worked example:** "project management software for agencies" at 480 volume, commercial intent (2.5x), relevance 5, KD 42 → (480 × 2.5 × 5) / 42 = **142.9**. Compare against "what is project management" at 12,000 volume, informational (1.0x), relevance 2, KD 78 → (12000 × 1 × 2) / 78 = **307.7**. Higher score doesn't always win — transactional terms convert; informational terms build topical authority. Run both filters.

### SERP feature mapping

| SERP feature | Intent types that trigger it | What it means for strategy |
|--------------|------------------------------|----------------------------|
| **AI Overview** | Informational, conversational, some commercial | High zero-click; optimize for citation, not click-through |
| **Featured Snippet** | Informational (definitional, list, table) | Still valuable; structure content to match snippet format |
| **People Also Ask** | Informational (expanding topic) | Source of sub-query ideas for fan-out mapping |
| **Local Pack** | Local intent (implicit or explicit) | Triggers GBP optimization, not traditional SEO |
| **Shopping/Product** | Transactional product | Feed + Merchant Center, not organic content |
| **Video carousel** | How-to, review, entertainment | YouTube becomes the target surface |
| **Knowledge panel** | Entity/brand queries | Build entity presence on Wikipedia, Wikidata, schema |
| **Top Stories** | News, trending events | Requires Google News inclusion |

### Competitor keyword gap analysis

1. Identify 3-5 direct competitors (same audience + same offer, not just similar domains).
2. Pull each competitor's ranking keywords (organic keyword exports from your rank-tracking tool).
3. Find the set difference: keywords competitors rank for in top 20 that you don't rank for at all.
4. Filter by: relevance to your offer, realistic difficulty, commercial/transactional intent first.
5. For each gap, decide: create new content, update existing content, or skip (out of scope).

### Fan-out sub-query analysis (AEO-specific)

When a user asks an AI tool "What's the best VPN for streaming Netflix in Europe?", the AI typically generates and retrieves for **multiple** sub-queries such as:
- "best VPN 2026"
- "VPN for Netflix streaming"
- "VPN with European servers"
- "VPN Netflix geo-blocking"
- "Netflix regional library differences"

Citations come from pages that surface across *multiple* sub-query results, not pages that perfectly match the full prompt. So for each priority keyword:

1. Write out the full user question as a human would type it into ChatGPT.
2. List 3-5 sub-queries the AI would likely generate (use PAA, autocomplete, and your own reasoning).
3. For each sub-query, check whether your content answers that specific fragment directly in the first 30% of the page.
4. Identify gaps — sub-queries your content doesn't address.
5. Either expand the existing page or create supporting cluster content to cover the fragments.

**Note:** Fan-out is now more prominent in Google AI Overviews since Gemini 3 (January 2026). Fragment-level coverage is a structural advantage.

### Keyword-to-content mapping matrix

| Keyword cluster | Primary KW | Volume | Intent | Page type | URL | Status | Fan-out sub-queries |
|-----------------|-----------|--------|--------|-----------|-----|--------|---------------------|
| project management for agencies | project management software for agencies | 480 | Commercial | Comparison listicle | /pm-software-agencies | Create | agency workflow tools, creative project management, client project software |

Status values: **Create** (new page), **Update** (existing page needs refresh), **Keep** (performing, monitor), **Consolidate** (merge with another page), **Prune** (remove, redirect).

## Output format

```
## Keyword Research Deliverable — [Topic/Project]

**Date:** [Date]
**Seed topics:** [list]
**Universe size:** [X] keywords clustered into [Y] groups
**Primary intent focus:** [transactional/commercial/informational mix]

### Prioritized keyword table
| Keyword | Volume | KD | Intent | SERP features | Priority score | Target page | Fan-out relevance |
|---------|--------|-----|--------|---------------|----------------|-------------|-------------------|

### Cluster summary
| Cluster | Primary KW | Supporting KWs | Page type | Status |
|---------|-----------|----------------|-----------|--------|

### Competitive gaps
[Keywords competitors rank for in top 20 that we don't — prioritized by score]

### AEO sub-query coverage
| Target question | Sub-queries AI would generate | Our coverage | Gap? |
|----------------|-------------------------------|--------------|------|

### Recommended actions
1. Create: [list of new pages needed]
2. Update: [list of existing pages to refresh]
3. Consolidate: [pages to merge]
4. Monitor: [already performing, leave alone]
```

## Example — "project management software" walk-through

**Seeds:** project management software, pm tool, task management, team collaboration software

**Expansion (sample):**
- Related: workflow tools, project tracking, team productivity software
- Long-tail: project management software for agencies, project management tool for remote teams, free project management for small teams
- Questions: what is project management software, how do I choose a PM tool, why use project management software
- Modifiers: best, top, vs, alternatives, free, enterprise, open source
- Conversational: "what's the best project management tool for a design agency of 15 people"

**Intent classification (sample):**
- "project management software" → Commercial (SERP: listicles, comparison pages)
- "asana vs monday" → Commercial (SERP: comparison articles)
- "project management software pricing" → Transactional (SERP: product pages, pricing pages)
- "what is project management" → Informational (SERP: definitional articles, AI Overview)

**Prioritization (sample):**
| Keyword | Vol | Intent | Rel | KD | Score |
|---------|-----|--------|-----|-----|-------|
| project management software for agencies | 480 | Comm (2.5x) | 5 | 42 | 142.9 |
| asana alternatives | 3,200 | Comm (2.5x) | 4 | 55 | 581.8 |
| best project management software 2026 | 8,100 | Comm (2.5x) | 5 | 71 | 1,425.7 |
| project management software pricing | 210 | Trans (3x) | 5 | 28 | 112.5 |

**Fan-out for "best project management software for design agencies":**
- "project management software 2026"
- "design agency workflow tool"
- "creative project management"
- "team collaboration for agencies"
- "agency client project tracking"

**Coverage check:** Current pillar page mentions "agencies" once in the intro. Fails the fragment test for design-specific workflows, client tracking, and creative review workflows. Gap → either expand pillar or spin off a dedicated cluster page.

**Actionable output:** Create a dedicated `/best-project-management-software-agencies` comparison page. Target the 480-volume term as primary, expand to cover all 5 fan-out fragments in distinct H2 sections.

## Guidelines

- **Volume alone is misleading.** A 50-volume transactional keyword can drive more revenue than a 10,000-volume informational one. Always weight by intent and business relevance.
- **Check the SERP before committing.** If the top 10 are all enterprise tools with DR 85+ backlink profiles and you're a seed-stage startup, the reported KD score is too low. Manually scan the top 10 before prioritizing.
- **Zero-volume keywords are not zero-value.** Long-tail transactional queries and "near me" local queries often show 0 in tools but drive real revenue. Trust SERP feature presence (Local Pack, Shopping) over volume.
- **For AEO, think sub-queries.** The full user prompt rarely equals the retrieval query. Identify fragments and make sure each one is answered directly in your content.
- **Group before you prioritize.** A single page can reasonably target a cluster of 5-15 related terms. Don't make separate pages for every variation — that's a cannibalization machine.
- **Revisit quarterly.** SERPs shift, AI Overview presence changes, new competitors enter. A keyword universe built 6 months ago is already stale.
- **Don't over-rely on one tool.** Volume and KD vary by 30%+ across different keyword tools for the same keyword. Triangulate when the decision is material.
- **Customer language beats marketer language.** The phrase your CMO uses is rarely the phrase prospects type. Pull seeds from support tickets, sales calls, and reviews.
- **For programmatic SEO plays** (large sets of similar templated pages), hand off to the programmatic-seo-builder skill — keyword research here is the input, not the build system.

## Cross-skill handoffs

- **→ seo-content-strategy:** Pass the clustered keyword map as input for topic cluster design and content brief creation.
- **→ seo-onpage-optimization:** Pass the per-page target keyword + sub-query fragments as optimization inputs.
- **→ aeo-ai-search-visibility:** Pass the fan-out sub-query analysis as input for content structure and citation readiness.
- **→ seo-reporting:** Pass the priority scores and status labels for tracking which keywords matter most to the business.
