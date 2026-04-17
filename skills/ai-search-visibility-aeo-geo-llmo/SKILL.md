---
name: ai-search-visibility-aeo-geo-llmo
description: "AI search and citation behavior change quickly. The frameworks below use the best available public data as of early 2026 (Google surfaces, ChatGPT, Perplexity, Gemini, and large-sample studies). Re-check assumptions as platforms update."
---

## Why this matters

- **AI search is a visibility surface, not always a traffic channel.** Some companies report strong conversion rates from AI-referred traffic; others see LLM referral volume flatten or shrink as products change. Be a presence, not a dependency.
- **AI Overviews reduce #1 CTR by 34.5%+** (industry studies, large keyword samples). When they appear, zero-click rate jumps to ~83%. The click traffic you used to earn is being converted into citations in someone else's answer.
- **AI brand recommendations are probabilistic, not deterministic.** Multi-run studies across ChatGPT, Claude, and Google AI show **<1% chance of getting the same brand list** from the same prompt, **<0.1% chance of same order**. Visibility percentage across many runs is the only reliable metric.
- **Platform divergence is extreme.** 86% of top-cited sources are unique to each AI platform (industry research). Only 7 of the top 50 most-cited domains appear on all three major AI platforms. An AEO strategy for "AI" isn't coherent — you need a strategy per platform.

## Process

1. **AI visibility baseline assessment.** Query ChatGPT, Perplexity, Gemini, and Google AI Mode with customer-relevant prompts. **Minimum 60-100 runs per prompt per platform** for meaningful data. See `references/measurement-protocol.md`.
2. **AI crawler access audit.** robots.txt, Cloudflare, server logs, llms.txt, JS rendering. Without crawler access, citations are impossible.
3. **Content optimization for AI citation.** Apply the ski ramp (see seo-content-strategy for the full framework). Structure for extractability.
4. **Entity and brand presence strategy.** Third-party mentions, Reddit, YouTube, Wikipedia, review platforms. Brands are 6.5x more likely to be cited via third-party sources than their own domains.
5. **Platform-specific optimization.** Apply the platform matrix below. See `references/platform-profiles.md` for detailed profiles.
6. **Ongoing monitoring and measurement.** Re-measure quarterly minimum. Track visibility percentage, not rank position.

## Frameworks

### AI visibility baseline assessment protocol

**Goal:** Establish a statistically meaningful starting point for AI visibility across the platforms that matter to your audience.

**Step 1 — Prompt selection.** Identify 10-20 prompts your target customers would actually ask an AI tool. Mix:
- Brand-agnostic informational queries ("What's the best [category] for [segment]?")
- Feature-specific queries ("Which [category] has the best [feature]?")
- Comparison queries ("[Your product] vs [Competitor]")
- Use-case queries ("How do I [job-to-be-done] for a [segment]?")

**Step 2 — Run each prompt 60-100x per platform.** This is not optional. Replication studies show <0.1% chance of getting the same brand ordering twice from a single prompt. A single run tells you nothing. Use an AI visibility workflow (commercial tool or custom script) that queries each platform via API with rate limiting.

**Step 3 — Track what matters.**
- **Visibility % per prompt** — how often does your brand appear across the runs?
- **Competitor share-of-voice** — how often do each of 3-5 named competitors appear?
- **Cited source domains** — which external sources are the AI pulling from?
- **Sentiment** — is your brand mentioned positively, neutrally, or negatively?

**Step 4 — Do NOT track rank position.** "We rank #3 in ChatGPT" is meaningless — there is a <0.1% chance of the same ordering on the next run. Visibility percentage is the only stable metric.

**Step 5 — Re-measure quarterly at minimum.** AI Overview citations change 70% of the time for the same query; 45.5% of citations change between consecutive observations. Quarterly is the minimum cadence; monthly is appropriate for high-priority brands.

**Sample size calibration:**
- **Exploratory baseline:** 30 runs × 10 prompts × 3 platforms = 900 total queries.
- **Reliable measurement:** 60-100 runs × 15-20 prompts × 3-4 platforms = 2,700-8,000 total queries.
- **Ongoing monitoring:** Quarterly rerun of the 20 priority prompts.

See `references/measurement-protocol.md` for the detailed methodology.

### AI crawler access checklist

Without crawler access, nothing else in this skill matters. Run this first.

| Check | What to verify | How |
|-------|----------------|-----|
| **robots.txt** | GPTBot, PerplexityBot, ClaudeBot, Google-Extended, Bytespider, CCBot not blocked | Fetch `https://domain.com/robots.txt` |
| **Cloudflare AI bot blocking** | "Block AI Bots" toggle is OFF (default: ON) | Cloudflare dashboard → Security → Bots |
| **Server logs** | AI bot user agents are actually hitting the site | Grep last 30 days for `ChatGPT-User`, `PerplexityBot`, `ClaudeBot`, `GPTBot` |
| **JavaScript rendering** | Critical content visible in raw HTML (no client-side-only content) | View-source test on key templates |
| **llms.txt** | File at site root providing AI-readable structure | Fetch `https://domain.com/llms.txt` — see `references/llms-txt-spec.md` |
| **Gated content** | Logged-in / paywall content is inaccessible to AI — confirm this is intentional | Manual check |

Cloudflare changed its default to block AI bots in 2024. Many sites are accidentally blocking discovery without realizing it.

### Platform-specific optimization matrix

| Platform | Primary signal | Top cited sources | Citation behavior | Key action |
|----------|---------------|-------------------|-------------------|------------|
| **AI Overviews (Google)** | Google rankings + branded web mentions + YouTube presence | Reddit (21%), Wikipedia, YouTube, Google properties, Amazon | Query fan-out; 45.5% citation volatility between runs | Strong SEO baseline + brand mentions + YouTube content |
| **AI Mode (Google)** | Different from AI Overviews (only 13.7% citation overlap) | Wikipedia, YouTube, Google's own blog, Reddit, Quora | Favors forums, Q&A, authoritative reference | Wikipedia + Quora + owned Q&A content |
| **ChatGPT** | Publisher authority + Bing index + training data | Reddit, Wikipedia, Amazon, Forbes, Business Insider, Reuters, AP | Hybrid: RAG via Bing ~31% of the time; training data otherwise | Earned media with authoritative publishers; Reddit presence |
| **Perplexity** | Real-time web crawl diversity | **Reddit (46.5% of citations!)**, diverse global sources, niche/health sites | Pure RAG; most citation-heavy; diverse sourcing | Reddit-first + diverse earned media |
| **Copilot (Microsoft)** | Bing index + Microsoft ecosystem | Similar to ChatGPT but more Bing-weighted | RAG via Bing | Bing ranking + Microsoft-adjacent visibility |

All citation stats above draw on large-sample studies and platform reporting 2025–2026.

The Reddit dominance on Perplexity (46.5%) is from a single-period snapshot. It's likely to shift as platforms adjust their retrieval mix — track it rather than assume it's permanent.

See `references/platform-profiles.md` for a deep dive on each platform.

### Brand mention building strategy (prioritized by impact)

Ordered by typical impact in published analyses.

1. **YouTube content** — YouTube mentions are the strongest *single* correlating factor with AI brand visibility across AI Overviews, ChatGPT, and AI Mode in published analyses. Create video content on your core topics; embed videos in owned content; invest in YouTube channel growth.

2. **Reddit participation** — 21% of AI Overview citations, 46.5% of Perplexity citations. Genuine, valuable participation in relevant subreddits. Do NOT spam links — Reddit self-moderates aggressively and manipulated posts get downvoted out of visibility. Contribute, answer questions, link only when genuinely useful.

3. **Earned media / digital PR** — Brands are 6.5x more likely to be cited via third-party sources than their own domains (vendor research, 2025). Earned media distribution can materially boost AI citations vs publishing only on your own site (syndication studies, 2025). Hand off campaign execution to the seo-link-building skill.

4. **LinkedIn content** — Often the most-cited domain for professional queries across major AI platforms in recent samples. Post authoritative content as an author, not just the company page.

5. **Wikipedia** — Major training data source for all LLMs; appears in top cited sources for AI Overviews, AI Mode, and ChatGPT. Works only if your brand meets notability guidelines — you cannot create your own page, but you can ensure existing mentions are accurate. Do not attempt to manipulate.

6. **Review platforms** — Software review marketplaces are heavily cited across ChatGPT, Perplexity, and AI Overviews for B2B software queries. For software, a strong review-site profile is table stakes. For other categories, industry-specific review sites matter.

7. **Consistent brand messaging across all web properties** — Entity clarity across your owned and earned presence. The AI builds a consistent mental model of your brand when the language aligns. Diverging messaging across channels fragments the entity signal.

**Important caveat:** Branded web mentions correlate 0.664 with AI Overview brand visibility; traditional backlink metrics only 0.218 (large-brand sample studies). But this is specific to AI Overviews — the platform divergence is extreme and this finding does not necessarily generalize to ChatGPT or Perplexity, where different signals dominate.

### Content optimization for AI citation (the ski ramp)

The ski ramp framework is fully documented in the seo-content-strategy skill. Core rules restated here for completeness:

1. **Front-load key claim in first 30%** — captures 44.2% of LLM citations (large-sample analysis, ~1.2M citations, p=0.0).
2. **Question-based H2 headings** — 78.4% of question-containing citations come from headings.
3. **Definitive, un-hedged answers** under each heading. LLMs penalize hedging in extraction.
4. **High entity density** (~20%) — specific brand names, tools, numbers, dates.
5. **Dates and numbers** are universal citation positives in large-sample citation work.
6. **Renders in raw HTML** — AI crawlers do not execute JS.
7. **Summary / wake-up section** at the end — last 10% captures a citation bump.

### Freshness and content maintenance

Content freshness is confirmed as a ranking/citation factor across multiple AI models in public benchmarks. Pages not updated quarterly are ~3x more likely to lose AI citations.

**But:** freshness is not a hard cliff. There is no "3-month content freshness cliff" — AI citation volatility is structural (45.5% change between runs regardless of content age). Quarterly refreshes are the right cadence; obsessive freshness-chasing on a weekly basis wastes effort.

### Translation for international reach

Translated sites gain 327% more visibility in AI Overviews vs untranslated (industry reporting, 2025). If your audience has meaningful non-English coverage, translation is high-leverage for AI visibility.

### What NOT to do (Black Hat LLMO awareness)

Industry reporting has warned about "LLMO black hat" manipulation tactics. Do not adopt these — they are ethically problematic and likely to be ironed out as models mature:

- **Entity saturation** — artificially cramming brand names and entities into content to game the density signal.
- **Strategic text sequences** — injecting JSON-formatted optimization text or structured data designed to manipulate LLM extraction.
- **Reinforcement learning hacking** — specifically crafted text sequences that exploit model training quirks.
- **"Making content summarizable"** as an end in itself — large-sample work suggests this alone doesn't make getting a citation easier. Quality and information gain matter; summarizability is downstream of real substance.
- **Prompt injection attacks** on pages — attempting to inject instructions that override AI behavior. This is adversarial; do not participate.

The entire AI visibility tracking industry is already spending $100M+/year tracking non-deterministic outputs. The economics incentivize hype and false precision. Maintain skepticism.

## Output format

```
## AI Search Visibility Audit

**Brand:** [Name]
**Assessment Date:** [Date]
**Platforms Tested:** [List]
**Prompts Tested:** [X] prompts × [X] runs each
**Measurement Methodology:** [Tool used, or custom protocol]

### Current AI Visibility
| Platform | Visibility % | Top Competitor Visibility % | Gap |
|----------|-------------|----------------------------|-----|
| ChatGPT | | | |
| Perplexity | | | |
| Google AI Overviews | | | |
| Google AI Mode | | | |
| Copilot | | | |

### AI Crawler Access Status
| Check | Status | Action Needed |
|-------|--------|---------------|
| robots.txt (GPTBot, PerplexityBot, ClaudeBot, Google-Extended) | | |
| Cloudflare AI bot settings | | |
| JavaScript rendering of critical content | | |
| llms.txt presence | | |
| AI bot hits in server logs (last 30d) | | |

### Content Citation Readiness (top 10 priority pages)
| Page | Ski Ramp Score /10 | Entity Density | Schema | HTML-Renderable | Gaps |
|------|-------------------|----------------|--------|-----------------|------|

### Brand Presence Across AI Training Sources
| Source | Current Status | Action | Priority |
|--------|---------------|--------|----------|
| YouTube | | | |
| Reddit | | | |
| Wikipedia | | | |
| LinkedIn | | | |
| Review marketplaces | | | |
| Earned media / publisher coverage | | | |

### Cited Source Analysis
For each high-priority prompt, log which external domains the AI is citing. This tells you where your brand needs to show up.

| Prompt | ChatGPT sources | Perplexity sources | AI Overviews sources |
|--------|----------------|-------------------|---------------------|

### Priority Actions
1. **[Action]** — Expected impact: [High/Medium/Low]
2. ...

### ⚠️ Measurement Note
AI recommendations are non-deterministic. Multi-run replication: <1% chance of same brand list, <0.1% chance of same ordering across runs. All visibility figures above represent statistical patterns across [X] runs, not fixed positions. Re-measure quarterly minimum. Track visibility percentage, not rank.
```

## Example — B2B SaaS AI visibility audit

**Brand:** ExampleAnalytics (product analytics for mid-market SaaS)
**Platforms tested:** ChatGPT (4o), Perplexity (Pro), Google AI Overviews, Google AI Mode
**Prompts tested:** 15 prompts × 60 runs each = 900 queries per platform = 3,600 total

**Baseline findings:**
- **ChatGPT visibility:** 12% (appears in 7 of 60 runs on average). Named competitors: 68%, 54%, 31% (illustrative).
- **Perplexity visibility:** 18%. Competitor set as above.
- **AI Overviews visibility:** 8% (partly because pillar page is JS-rendered — see crawler audit).
- **AI Mode visibility:** 3%.

**Crawler access:**
- robots.txt: All AI bots allowed ✓
- Cloudflare: AI bots NOT blocked ✓
- Server logs: GPTBot hits ~40/day, PerplexityBot ~25/day, ClaudeBot ~10/day ✓
- JS rendering: 🔴 Pricing page + primary comparison page render client-side. Invisible to AI crawlers.
- llms.txt: Missing
- Gated content: Help center requires login ⚠️ (intentional, but hurts AI discoverability)

**Content readiness:** 3 of 10 priority pages pass the ski ramp check. Most pages have "About our approach" intros instead of direct answers.

**Brand presence:**
- YouTube: 0 videos. Leading competitors have large channels (illustrative: hundreds of videos).
- Reddit: Brand mentioned rarely in target subreddits last 12 months; competitors mentioned far more often.
- Wikipedia: No page (doesn't meet notability yet).
- LinkedIn: Company page active; no individual thought leadership.
- Review marketplace: few reviews vs. competitors with hundreds.
- Earned media: 2 mentions in industry publications last 12 months.

**Priority actions:**
1. **Critical:** Server-render pricing and comparison pages. AI crawlers cannot see current content. Estimated lift: 30-50% visibility on commercial queries within 8 weeks of indexing.
2. **Critical:** Rewrite top 10 priority pages with ski ramp structure. Front-load direct answers, convert H2s to question format, raise entity density to ~20%.
3. **High:** Launch YouTube channel with 2 videos/month on core topics. Strongest single correlating signal with AI visibility in published analyses.
4. **High:** Reddit presence: allocate a PM on the team to spend 2 hours/week genuinely answering questions in relevant subreddits.
5. **High:** Review-site acquisition sprint — target 100 reviews in 90 days through customer outreach.
6. **Medium:** Earned media: commission original research (instrumentation benchmark survey) and pitch to 10 industry publications. Hand off to seo-link-building skill.
7. **Medium:** Translate pillar content into Spanish and French (327% AI Overview visibility lift on translated content).
8. **Low:** Implement llms.txt file. Cheap to try; treat as secondary to SSR, ski ramp, and distribution.

**Measurement plan:** Re-run the 15-prompt baseline in 90 days. Track visibility % delta per platform. Maintain the cited-source log to understand where AI is pulling answers from.

**⚠️ Measurement Note:** All visibility figures represent statistical patterns across 60 runs per prompt per platform. They are not fixed positions. AI recommendations change 45.5% between runs on identical prompts.

## Guidelines

- **Stay humble about AI visibility.** The field is new; the data is incomplete; the tactics that work today may not work in 6 months.
- **Measure visibility %, never rank position.** Rank position in AI output is meaningless — <0.1% consistency between runs. Visibility percentage across 60+ runs is the only stable metric.
- **Run at least 60 queries per prompt per platform for any measurement you're going to report.** Replication studies are unambiguous on this. Smaller samples are not directional — they are noise.
- **86% of top-cited sources are unique to each platform.** Do not treat "AI visibility" as a single thing. ChatGPT, Perplexity, AI Overviews, and AI Mode have divergent source pools and require platform-specific strategies.
- **Crawler access is the gate.** If GPTBot, PerplexityBot, ClaudeBot cannot reach your content, no amount of content optimization or brand-building earns you a citation. Start here every time.
- **SSR/SSG is non-negotiable for AI visibility.** AI crawlers do not execute JavaScript. Client-side-only content is invisible.
- **Distribution beats publication.** Brands are 6.5x more likely to be cited via third-party sources. Original research distributed to 10 publishers outperforms the same research sitting on your blog. Hand off distribution to the seo-link-building skill.
- **Do not chase fake precision.** "We have 4.4x higher conversion from AI traffic" is a single data point presented as a universal law. Multiple companies confirm higher AI conversion; the specific multiplier varies widely. Report what you measure, flag the sample size.
- **Do not adopt black hat LLMO tactics.** Entity saturation, strategic text sequences, and summarization-gaming are detectable and will be ironed out. They also hurt user trust when caught.
- **YouTube, Reddit, and earned media are the three biggest leverage points** for brand mention building — all three rank highly in correlation studies.
- **Re-measure quarterly minimum.** AI citations change 70% of the time for the same query. A snapshot is not a trend. Absolute numbers are less meaningful than deltas over time.
- **Do not believe the "AI content penalty" myth.** AI-generated and AI-assisted content is cited *more* than human-only content in large-scale citation samples (87.8% of cited pages are at least AI-assisted). Quality and information gain matter; origin doesn't.
- **Do not believe the "5K character limit" myth.** The claim that pages under 5K characters get 66% used and pages over 20K get 12% is from a single practitioner's framework, not large-scale data. Large-sample citation analysis found cited pages have *higher* word counts. Length isn't the signal — ski ramp structure is.
- **Do not assume "brand mentions are 3x more important than backlinks" universally.** True for AI Overviews specifically (0.664 vs 0.218 correlation); platform divergence means this does NOT generalize to ChatGPT or Perplexity.

## Reference files

Read these when you need deep detail:

- **`references/platform-profiles.md`** — Detailed citation behavior profile for each AI platform (ChatGPT, Perplexity, AI Overviews, AI Mode, Copilot). Read when planning platform-specific strategy or diagnosing platform-specific visibility gaps.
- **`references/llms-txt-spec.md`** — llms.txt implementation guide with examples. Read when implementing or auditing llms.txt.
- **`references/measurement-protocol.md`** — Detailed statistical measurement methodology for running 60-100+ query baselines. Read when setting up AI visibility measurement or evaluating a tracking tool.

## Cross-skill handoffs

- **← seo-keyword-research:** Receive fan-out sub-query analysis as input for content gap identification.
- **← seo-content-strategy:** Receive content inventory and ski ramp briefs.
- **← seo-onpage-optimization:** Receive published pages for citation readiness review.
- **← seo-technical-audit:** Receive AI crawler access findings and JS rendering gaps.
- **→ seo-link-building:** Hand off earned media / distribution strategy for information gain assets.
- **→ seo-reporting:** Hand off visibility baseline and measurement protocol as tracked KPIs.
