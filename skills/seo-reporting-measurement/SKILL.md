---
name: seo-reporting-measurement
description: "Build reports that stakeholders trust, rooted in data sources that are actually reliable. Modern SEO measurement has to reckon with a very specific constraint: **the primary data source (GSC) is ~75% incomplete**, and the AI visibility layer is **probabilistic**, not deterministic. Building reports that ignore these realities produces false confidence."
---

## Why this matters

- **GSC data is ~75% incomplete.** Google filters approximately 75% of search impressions for "privacy" (industry analysis, Feb 2026). Single-source GSC decisions are unreliable.
- **Multi-touch attribution reveals 30-60% more organic value than last-click models** — which is why most SEO teams under-report their actual business contribution.
- **GSC branded query filter** (released November 2025) finally enables native branded vs non-branded segmentation — one of the biggest reporting improvements of the last five years.
- **Median publisher: 10% YoY decline in organic traffic H1 2025** despite maintained visibility — this is the zero-click effect showing up in the numbers. Report on impressions and rankings, not just clicks.
- **AI visibility is probabilistic.** <1% chance of same brand list from same prompt; <0.1% chance of same order (multi-run replication studies). All AI metrics must be reported with sample sizes and confidence notes.
- **Zero-click reality:** 58.5% of US searches and 77.2% of mobile searches end without a click (third-party search studies, 2025). Click-based KPIs alone understate visibility.

## Process

1. **Data foundation audit.** Is GSC connected? Is GA4 set up correctly? Are conversions tracked? Without this, nothing else matters.
2. **Define the KPI hierarchy.** Leading → core → business → AI visibility. Each layer has its own cadence and audience.
3. **Build attribution.** Default to multi-touch when possible. Document the model and its known limitations.
4. **Structure the reports.** Weekly tactical, monthly strategic, quarterly deep-dive. Each has a specific audience and purpose.
5. **Handle algorithm updates.** When Google updates or an AI model shifts, reports need to flag and contextualize — not just show numbers going up or down.
6. **Report on AI visibility with appropriate caveats.** Sample sizes, platform breakdowns, quarterly trends.
7. **Continuously refine.** Retire metrics that don't drive decisions; add metrics that do.

## Frameworks

### Critical data caveat to lead every report with

> **⚠️ GSC impression data is approximately 75% incomplete.** Google filters most search impressions for privacy. Single-source GSC decisions are unreliable. All figures below should be treated as *directional trends*, not absolute numbers. Cross-reference with third-party tools and focus on *deltas over time*, not point values.

This is not boilerplate — stakeholders consistently misinterpret SEO reports when they don't understand the data limits. Lead every report with this caveat.

### KPI hierarchy

Organized from **leading** (early signals) to **lagging** (business outcomes). Each tier has different review cadence and different audiences.

**Leading indicators (weekly review):**
- Impressions (GSC)
- CTR by position band
- Scroll depth by landing page type
- Time on page by intent segment
- Indexed pages count (GSC Coverage)
- Core Web Vitals field scores (GSC)
- Crawl stats (GSC Crawl Stats report)
- New issues detected in GSC

**Core SEO metrics (monthly review):**
- **Organic sessions segmented by intent** (not aggregate) — informational/commercial/transactional
- **Branded vs non-branded traffic** — use GSC branded query filter (November 2025+)
- **Ranking distribution** — top 3, top 10, top 20 keyword counts
- **New vs lost keywords** — velocity of keyword portfolio
- **SERP feature presence** — featured snippets, PAA, AI Overviews
- **Internal link coverage** on priority pages
- **Content freshness** — how many priority pages updated in last quarter

**Business metrics (monthly review, executive audience):**
- **Organic-attributed revenue** (multi-touch model preferred)
- **Lead generation from organic**
- **Conversion rate by landing page type**
- **Customer acquisition cost from organic**
- **Lifetime value from organic customers** (if tracked)

**AI visibility metrics (quarterly review minimum):**
- **Brand mention frequency** across platforms (60-100+ runs per prompt)
- **AI referral traffic** (source/medium reports in GA4)
- **Citation rate** — how often your domain is cited across AI queries
- **Competitor share-of-voice in AI**
- **Per-platform visibility** — never collapse into a single score

### Metrics to retire

Per industry reporting, these metrics should NOT be used as primary KPIs:

| Metric | Why retire it | What to use instead |
|--------|--------------|---------------------|
| **Organic traffic as standalone KPI** | Lacks intent context; treats all traffic as equal | Organic sessions segmented by intent |
| **Average keyword position** | Meaningless in aggregate (averaging ranks across different queries is statistically incoherent) | Ranking distribution buckets (top 3, top 10, top 20) |
| **Domain authority as a business metric** | A third-party proxy score, not a Google metric | Referring domain count and quality, actual ranking performance |
| **Bounce rate in isolation** | GA4 redefined it; often misinterpreted | Engagement rate + task completion signals |
| **Single-run AI visibility "score"** | Non-deterministic; meaningless without sample size | Visibility % across 60+ runs per prompt per platform |
| **Individual meta description CTR** | Google rewrites ~60% of meta descriptions; you're measuring Google's rewrite, not yours | Page-level CTR trends with content changes logged |

### Revenue attribution formula

```
Monthly Organic Value =
  (Organic Sessions × Conversion Rate × Average Order Value)
  +
  (Lead Gen Conversions × Lead Value × Close Rate)
```

**Important:** This is a last-click formula. Multi-touch attribution typically reveals 30-60% more organic value than last-click. If you can, use GA4's data-driven attribution model or build a custom model that credits organic for its role in multi-touch journeys.

**Document your model.** Every report should state which attribution model is used and its known limitations. Stakeholders will ask why "SEO revenue" differs from "paid social revenue" — the model is the answer.

### AI visibility measurement protocol (reporting layer)

When reporting AI visibility to stakeholders, **every metric must include sample size and the measurement protocol**. See `references/ai-metrics-reporting.md` for the detailed reporting patterns.

Core rules:

- **Sample size minimum:** 60 runs per prompt per platform. Anything less is noise.
- **Never report "rank position" in AI output.** <0.1% consistency — it's not a stable metric.
- **Report per-platform, not aggregated.** 86% of top-cited sources are platform-unique; aggregating hides the pattern.
- **Quarterly cadence** is the default; monthly if you're actively optimizing.
- **Flag the confidence** of every AI metric: Data-backed, Directional, or Experimental.

### Algorithm update assessment framework

When Google rolls out a core update or an AI platform shifts behavior:

1. **Pause before reporting.** Google core updates take 2-4 weeks to fully roll out. Initial ranking shifts are not final.
2. **Segment the impact.** Don't report "traffic is down 12%." Break it down: which pages? which intent buckets? which query types?
3. **Cross-reference with known changes.** Was there a recent migration? A new competitor? A CWV regression? Update impact gets blamed for unrelated issues constantly.
4. **Compare to industry.** If traffic dropped 12% and the industry dropped 15%, you're relatively stable. If the industry is flat and you dropped 12%, it's specific to your site.
5. **Flag what you don't know.** "Some of this may be algorithm-driven and some may be zero-click expansion from AI Overviews — it will take 30-60 days to distinguish."
6. **Recommend observation windows, not reactive changes.** The worst thing post-update is to start rewriting content before the update finishes rolling out.

See `references/algorithm-update-playbook.md` for the full diagnostic playbook.

### Report structure template

Adapt to the audience. Executives want the one-pager; SEO teams want the detail.

```
## SEO Performance Report — [Period]

### Executive Summary
[2-3 sentences: what happened this period, what it means for the business, what to do next. No jargon. No fluff.]

### Business Impact
| Metric | This Period | Prior Period | YoY | Target |
|--------|-------------|--------------|-----|--------|
| Organic Revenue | | | | |
| Organic Leads | | | | |
| Organic Sessions (non-branded) | | | | |
| Organic CAC | | | | |

⚠️ Attribution model: [last-click / multi-touch / data-driven]. GSC data ~75% filtered — trends more reliable than absolutes.

### Search Visibility
- Ranking distribution (top 3 / top 10 / top 20)
- Branded vs non-branded impressions and clicks
- SERP feature presence (featured snippets, PAA, AI Overviews)
- New vs lost keywords this period

### AI Search Visibility (if tracking)
| Platform | Visibility % | Δ vs last | Sample size |
|----------|-------------|-----------|-------------|

⚠️ AI metrics are probabilistic. Replication studies: <1% chance of same brand list from same prompt. All figures represent statistical patterns across [X] runs per prompt per platform. Focus on quarterly trends.

### Content Performance
- Top performing pages (by revenue/conversions, not just traffic)
- Decaying content (pages losing rankings or traffic)
- Content refresh priorities (decayed priority pages)
- New content performance (published this period)

### Technical Health
- Core Web Vitals (LCP, INP, CLS — field data)
- Indexation status (indexed vs discovered vs excluded)
- Critical issues (GSC errors, coverage issues, manual actions)
- AI crawler access status

### Competitive Landscape
- Key ranking movements in the competitive set
- Opportunities (pages where we gained position)
- Threats (pages where competitors gained)

### Recommended Actions (Prioritized)
| Priority | Action | Expected Impact | Effort | Timeline |
|----------|--------|----------------|--------|----------|

### Appendix: Methodology Notes
- Data sources: GSC, GA4, rank-tracking / backlink tool, [other]
- Attribution model in use
- AI measurement protocol and sample sizes
- Known limitations: GSC filtering, AI non-determinism, attribution caveats
- Period definitions: [date range, comparison period]
```

### Reporting cadence

| Cadence | Audience | Focus | Output |
|---------|----------|-------|--------|
| **Weekly (tactical)** | SEO team, content team | Rankings changes, traffic anomalies, technical issues, newly indexed pages | Dashboard + 5-bullet weekly note |
| **Monthly (strategic)** | Marketing leadership, department heads | Full performance across KPI hierarchy, content wins/losses, recommendations | Structured report (template above) |
| **Quarterly (deep dive)** | Executive team, board if applicable | Trend analysis, strategy review, competitive repositioning, AI visibility assessment, ROI analysis | Comprehensive presentation |
| **Ad-hoc (incident)** | Relevant stakeholders | Algorithm updates, major traffic shifts, migrations, crises | Incident report with diagnosis + plan |

### Dashboard layer

For ongoing visibility, build a dashboard (Looker Studio, GA4 native, or a BI tool) with:

- Rolling 12-month trend for priority KPIs
- Branded vs non-branded segmentation
- Top pages by revenue (not just traffic)
- Top queries by click volume and by impression volume (two different lists)
- CWV field scores
- Referring domain velocity
- AI visibility panel with sample sizes surfaced

Update weekly; review monthly in the structured report.

## Output format

See the report structure template above. For each report, customize the sections based on what the audience can act on. Executive reports drop the technical detail; SEO team reports drop the business framing.

## Example — monthly SEO report for a mid-market SaaS

**Period:** March 2026
**Audience:** VP of Marketing + Head of Growth

---

### Executive summary

Organic revenue grew 18% month-over-month, driven by 12 new product analytics cluster pages published in Q1 now ranking on page 1. AI visibility on ChatGPT rose from 12% to 19% after rewriting the pricing page to server-side render. Core Web Vitals regressed on mobile (LCP 3.8s vs 2.4s target) after a blog redesign — fix planned for sprint 14.

### Business impact

| Metric | Mar 2026 | Feb 2026 | YoY | Target |
|--------|----------|----------|-----|--------|
| Organic revenue (multi-touch) | $187K | $158K | +34% | $200K |
| Organic demo requests | 142 | 119 | +41% | 150 |
| Organic sessions (non-branded) | 89K | 82K | +22% | 100K |

⚠️ Multi-touch data-driven attribution via GA4. GSC impression data ~75% filtered — trend reliable; absolute impression count understated.

### Search visibility

- **Ranking distribution:** 34 keywords in top 3 (+6), 127 in top 10 (+14), 310 in top 20 (+23)
- **Branded traffic:** 38% of organic sessions (stable)
- **Non-branded traffic:** 62% (up from 58% last month — the 12 new cluster pages are the primary driver)
- **AI Overviews present** on 28 of 50 priority keywords — we are cited in 7 of them
- **New keywords (first rank):** 47 (strong)
- **Lost keywords:** 12 (normal churn)

### AI search visibility

| Platform | Visibility % | Δ vs Feb | Sample size |
|----------|-------------|----------|-------------|
| ChatGPT | 19% | +7% | 15 prompts × 60 runs |
| Perplexity | 24% | +2% | 15 prompts × 60 runs |
| AI Overviews | 14% | +6% | 15 prompts × 60 runs |
| AI Mode | 8% | +1% | 15 prompts × 60 runs |

⚠️ AI metrics are probabilistic. Replication studies: <1% chance of same brand list on same prompt. Figures represent patterns across 60 runs per prompt per platform. ChatGPT gain corresponds to pricing page SSR launch on March 11.

### Content performance

- **Top performers:** `/product-analytics-guide` (pillar, 8.2K sessions, 22 demos), `/amplitude-vs-mixpanel-vs-posthog` (4.8K sessions, 31 demos — highest converting), `/event-scoping-framework` (3.1K sessions, 18 demos)
- **Decaying:** 3 old category pages losing rankings steadily — queued for Q2 refresh
- **Refresh priorities:** `/what-is-product-analytics` (ranked #8, falling from #3 over 3 months)

### Technical health

- **CWV (mobile, field data):** LCP 3.8s ⚠️ (target ≤2.5s), INP 180ms ✅, CLS 0.08 ✅
- **LCP regression** traced to blog redesign — new hero image treatment is 2.1MB unoptimized. Fix in sprint 14.
- **Indexation:** 924 indexed (+12), 18 new Coverage errors (all thin tag archives, queued for noindex)
- **AI crawler access:** GPTBot, PerplexityBot, ClaudeBot all hitting site normally (~40/day, ~25/day, ~10/day respectively)

### Recommended actions

| Priority | Action | Impact | Effort | Timeline |
|----------|--------|--------|--------|----------|
| Critical | Fix LCP regression (compress blog hero images, preload) | High — CWV is page experience signal | Low | Sprint 14 |
| High | Refresh `/what-is-product-analytics` with updated stats, ski ramp structure | High — recovery of top-3 position | Medium | April W2 |
| High | Publish Q2 benchmark data study | High — PR asset + linkable content | High | End of April |
| Medium | Server-render remaining 4 JS-heavy landing pages | Medium — unlocks AI visibility on those pages | Medium | Sprint 15 |
| Medium | Add FAQPage schema to top 10 commercial pages | Medium — rich result eligibility | Low | April W1 |

### Appendix

- Data sources: GSC, GA4 (DDA attribution), rank-tracking tool, AI visibility tracker
- Attribution: GA4 data-driven; may differ from GA4 last-click by ~40% for organic
- AI measurement: 15 prompts × 60 runs across ChatGPT, Perplexity, AI Overviews, AI Mode. Run on 3/28-3/30. Re-measured after pricing page SSR launch.
- Known limitations: GSC ~75% impression filtering, AI probabilistic, CWV field data 28-day lag
- Period: March 1-31, 2026. Compared to February 1-28, 2026 and March 1-31, 2025.

---

## Guidelines

- **Lead every report with the GSC caveat.** Stakeholders consistently misinterpret SEO data because they don't know it's ~75% filtered. State it every time.
- **Always segment organic traffic by intent.** Aggregate organic traffic is near-useless as a KPI — it conflates transactional wins with informational zero-click impressions.
- **Use the GSC branded query filter (November 2025+)** to separate branded and non-branded. This is one of the biggest analytics improvements in years and most teams still don't use it.
- **Retire average keyword position.** Averaging positions across different queries is statistically incoherent. Use ranking distribution (top 3, top 10, top 20) instead.
- **Report AI visibility with sample sizes every time.** "Visibility 18% across 60 runs" not "Visibility 18%." The second form invites false precision.
- **Never collapse AI visibility into a single score.** 86% of top-cited sources are platform-unique. A "unified AI score" hides the actionable signal.
- **Multi-touch attribution reveals the real organic contribution.** Last-click typically under-reports organic by 30-60%. If your stakeholders think SEO is underperforming, the attribution model is often the cause.
- **Zero-click is the new normal.** 58.5% US, 77.2% mobile searches end without a click (third-party search studies). Don't report declining clicks as declining performance if impressions and rankings are stable.
- **Algorithm update impact takes 2-4 weeks to stabilize.** Don't recommend reactive changes within the rollout window — wait for the dust to settle.
- **Content decay is a leading indicator of traffic loss.** A page dropping from #3 to #8 over 90 days predicts a traffic drop; catch it early through content performance tracking.
- **Track referring domains and brand mentions together** — AI visibility depends on both. Mentions without links still feed AI signal.
- **Build for decisions, not dashboards.** Every metric in every report should answer the question "what would we do differently if this number changed?" If nothing, remove the metric.
- **The report is for the reader.** Executives want the one-page summary with the one recommendation. SEO specialists want the detail. Build two versions if needed.
- **Flag confidence levels on every recommendation.** "Data-backed," "directional," or "experimental." This builds trust with stakeholders who will come back to hold you accountable.
- **Reports are a trust instrument.** Over-claiming on good months and hiding bad months destroys the discipline. Show both, contextualize both, and let the trend do the talking.

## Reference files

Read these when the task warrants:

- **`references/ai-metrics-reporting.md`** — Detailed guidance on reporting AI visibility metrics responsibly, including sample-size tables, caveat language, and common stakeholder pitfalls. Read when building an AI visibility section of a report.
- **`references/algorithm-update-playbook.md`** — Diagnostic playbook for responding to Google core updates, AI platform shifts, and traffic anomalies. Read when you suspect an algorithm-driven impact.

## Cross-skill handoffs

- **← all other SEO skills** — Receive baselines, KPIs, and priority actions for tracking.
- **→ seo-keyword-research** — Flag keywords with declining performance for re-evaluation.
- **→ seo-content-strategy** — Flag content with decay for refresh prioritization.
- **→ seo-technical-audit** — Escalate CWV regressions, indexation issues, crawl anomalies.
- **→ aeo-ai-search-visibility** — Feed visibility baseline data for strategy iteration.
