# AI Visibility Measurement Protocol

A detailed methodology for measuring AI search visibility in a way that produces statistically meaningful, reproducible results. The single biggest failure mode in AI visibility measurement is inadequate sample size — measuring once (or a few times) and treating the result as real.

## The core problem

AI answer engines are **probabilistic**, not deterministic. The same prompt produces different responses on different runs. A large replication study (thousands of prompts across many raters, each run 60–100 times on ChatGPT, Claude, Google AI) found:

- **<1% chance** of getting the same brand list from the same prompt
- **<0.1% chance** of getting the same list in the same order
- **Visibility percentage** across many runs is the only reliable metric — position within a single run is noise
- **No caching effect** — popular queries are as volatile as niche ones (Spearman correlation: -0.014 between query popularity and stability)

And AI Overview volatility data (industry research):

- **45.5% of citations change** between consecutive observations of the same query
- **70% of AI Overview content changes** between consecutive runs
- **Semantic similarity is 0.95** — the meaning stays the same, but the sources and phrasing swap constantly

**Practical implication:** A single query run tells you nothing. Three runs tell you nothing. 60-100 runs per prompt per platform is the floor for meaningful measurement.

---

## Protocol

### Step 1 — Define the prompt set

Identify 10-20 prompts that reflect what your target customers actually ask AI tools. Diversify across:

- **Informational**: "What is [category]?" "How does [feature] work?"
- **Commercial**: "Best [category] for [use case]?" "[Tool A] vs [Tool B]"
- **Comparison**: "What are the differences between [X] and [Y]?"
- **Use-case specific**: "How do I [task] at a [company size]?"
- **Brand-inclusive**: "Is [your brand] good for [use case]?"
- **Brand-exclusive**: Same prompt as above but framed without any brand name

**Example prompt set (product analytics SaaS):**

1. What is the best product analytics tool for small SaaS teams?
2. [Tool A] vs [Tool B] vs [Tool C] — which should I use?
3. How do I set up product analytics for a 20-person startup?
4. What's the cheapest product analytics tool that still has funnels and cohorts?
5. What events should a B2B SaaS team track with product analytics?
6. Best product analytics for retention analysis
7. Product analytics for mobile apps vs web apps
8. How do I migrate from Google Analytics to a product analytics tool?
9. What does a product analytics stack look like in 2026?
10. Is [your product] a good alternative to [incumbent]?
11. Best free product analytics tools
12. Product analytics for enterprise SaaS
13. How do I measure activation with product analytics?
14. What metrics should I track in product analytics?
15. Product analytics vs traditional web analytics

This prompt set should be stable across measurement periods — changing prompts invalidates trend analysis.

### Step 2 — Select platforms

Prioritize platforms based on where your audience actually uses AI. For most B2B audiences:

- **ChatGPT** (highest user base)
- **Perplexity** (high for research-heavy audiences)
- **Google AI Overviews** (high-volume passive exposure)
- **Google AI Mode** (growing, separate source pool from AI Overviews)

Copilot and Gemini direct usage are lower-priority unless your audience specifically uses Microsoft or Google ecosystem tools. Treat Claude.ai separately if your audience is developer-heavy.

### Step 3 — Run each prompt 60-100 times per platform

**Why 60-100:** Replication work established this as the threshold below which brand appearance order is fundamentally noise. AI Overview volatility data (~45.5% change between runs in published samples) reinforces this.

**How to run at scale:**

- **Dedicated AI visibility trackers** (commercial or in-house) handle this automatically. Most charge per prompt per run per platform.
- **Custom scripts** using OpenAI API, Anthropic API, Perplexity API, and Google AI APIs. Rate limiting and cost management required. Platforms that only have a web UI (AI Overviews, AI Mode) require browser automation or third-party tooling.
- **Manual runs** are infeasible at this sample size — budget for tooling or a tracker.

**Budget for the scale:** 15 prompts × 60 runs × 4 platforms = **3,600 API calls per baseline**. At current API rates, this is typically $20-200 depending on platform and model.

### Step 4 — Extract and log data per run

For each run, capture:

| Field | Notes |
|-------|-------|
| Prompt | Exact wording |
| Platform | ChatGPT / Perplexity / AI Overviews / AI Mode / Copilot |
| Model version | GPT-4o, Perplexity Pro, etc. |
| Timestamp | ISO 8601 |
| Brands mentioned | Your brand + named competitors |
| Cited URLs / domains | For platforms that surface citations |
| Sentiment | Positive / neutral / negative about each brand |
| Response text | Full response, for qualitative review |

Structure the log as a CSV or database table so you can aggregate.

### Step 5 — Calculate visibility metrics

For each prompt × platform combination, calculate:

**Visibility percentage (primary metric):**
```
Visibility % = (Runs where brand appeared / Total runs) × 100
```

**Competitor share-of-voice:**
```
SOV % = (Runs where competitor appeared / Total runs) × 100
```

**Cited source distribution:**
Which external domains did the AI cite? Count occurrences per domain across all runs for this prompt.

**Aggregate across prompts:**
```
Overall visibility = Average visibility % across all prompts (per platform)
```

### Step 6 — Flag what NOT to measure

**Do not track "rank position" in AI output.** With <0.1% consistency between runs, position is noise. A brand appearing first in one run and last in another is the expected state, not a meaningful data point.

**Do not collapse platforms into a single "AI visibility" score.** 86% of top-cited sources are unique to each platform. A single score masks the platform-specific gaps that actually matter.

**Do not report point-in-time numbers without sample size.** Every AI visibility figure reported to stakeholders should include the sample size used: "visibility 18% across 60 runs" not "visibility 18%."

### Step 7 — Re-measure on a cadence

- **Quarterly** — minimum for ongoing monitoring.
- **Monthly** — for high-priority brands or during active optimization campaigns.
- **Post-change** — whenever you ship a major content update, crawler fix, or brand mention campaign, re-measure to see if the intervention moved the needle.

**Do not over-index on month-over-month fluctuations.** 45.5% of citations change between runs. Some of what looks like "improvement" or "regression" is statistical noise. Look for sustained trends over 2-3 measurement periods, not single-period movement.

---

## Output format

```
## AI Visibility Measurement — [Brand] — [Period]

**Measurement period:** [Start date - End date]
**Platforms:** [List]
**Prompts:** [Count]
**Runs per prompt per platform:** [60+]
**Total queries run:** [Count]
**Tooling:** [Commercial tracker / custom script / etc.]

### Overall visibility
| Platform | Visibility % | ± vs. last period | Notes |
|----------|-------------|-------------------|-------|

### Visibility by prompt (top/bottom)
| Prompt | Platform | Visibility % | Δ |
|--------|----------|-------------|---|

### Competitor share of voice
| Platform | Us | Comp 1 | Comp 2 | Comp 3 |
|----------|-----|--------|--------|--------|

### Top cited sources (by platform)
| Platform | Source | # of prompts where cited |
|----------|--------|--------------------------|

### Sentiment
| Platform | Positive | Neutral | Negative |
|----------|----------|---------|----------|

### Methodology notes
- Prompts used: [link or list]
- Sample sizes and confidence considerations
- Known platform quirks this period
- Tooling limitations

### Key takeaways
[3-5 bullets focused on actionable patterns, not point numbers]
```

## Common pitfalls

- **"I tested it in ChatGPT this morning and we didn't show up — we have a visibility problem."** One run is not data. Run it 60 times before drawing conclusions.
- **"Our visibility dropped from 22% to 18% — what happened?"** 45.5% of citations change between runs. A 4-point drop is inside the noise band. Wait for the next measurement period before acting.
- **"We optimized and visibility jumped from 12% to 28% in a week."** Suspicious. Check: was the measurement methodology identical? Same prompts? Same sample size? Same model version?
- **"Our 'AI Visibility Score' is 67."** Meaningless unless broken down by platform. 86% of top-cited sources are platform-unique. A single score hides actionable detail.
- **Tracking rank position in AI answers.** <0.1% consistency. Don't.

## Reporting to stakeholders

When presenting AI visibility data to stakeholders who are not used to probabilistic measurement, include a prominent caveat:

> **⚠️ AI recommendations are non-deterministic.** Multi-run studies found <1% chance of getting the same brand list twice. All visibility percentages above represent statistical patterns across [N] runs, not fixed positions. Individual queries will vary. Re-measurement shows quarterly trends, not daily movements.

This caveat should appear on every report, every time. It is the difference between using AI visibility data responsibly and generating false precision.
