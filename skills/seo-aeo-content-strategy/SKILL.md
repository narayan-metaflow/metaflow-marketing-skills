---
name: seo-aeo-content-strategy
description: "Design content systems that earn both Google rankings *and* AI citations. The core insight: AI answer engines read content differently than humans — they extract the highest-information-gain sentences and treat H2 headings as prompts. The \"ski ramp\" structure optimizes for both."
---

## Why this matters

- **Topic clusters drive ~30% more organic traffic and hold rankings 2.5x longer** than standalone content (industry benchmarks, 2025).
- **44.2% of all LLM citations come from the first 30% of text** (large-sample ChatGPT citation analysis, ~1.2M pages). The intro carries disproportionate weight — front-load your answer.
- **78.4% of citations containing questions come from H2 headings** — LLMs treat H2s as prompts and the following paragraphs as answers.
- **Heavily-cited text has ~20.6% entity density** (brand names, tool names, proper nouns) vs. 5-8% for normal English.
- **53% of citations come from the middle of a paragraph**, not the first sentence. LLMs extract the sentence with the highest information gain, not the opener.
- **Content not updated quarterly is ~3x more likely to lose AI citations** (multi-model freshness benchmarks).
- **Brands are 6.5x more likely to be cited via third-party sources** than their own domains (vendor research, Oct 2025). Distribution matters as much as publication.
- **Earned media distribution increases AI citations up to 325%** vs publishing only on your own site (syndication research, Dec 2025).

All citations above are data-backed. The ski ramp framework has p-value 0.0 (statistically indisputable) in large-sample citation studies.

## Process

1. **Define business goals and audience.** What must the content produce — leads, trials, awareness, authority? Who specifically is the reader, in which intent state?
2. **Map the topic universe.** Core topics (3-7) → subtopics (5-15 per core) → supporting questions (unlimited). This becomes the cluster architecture.
3. **Design cluster architecture.** Pillar pages (broad, 2500+ words, link hub) → cluster pages (specific subtopics, link back to pillar + peers) → supporting content (FAQ, glossary, tools, comparisons).
4. **Audit existing content.** Score every page on the 1-5 matrix below: **keep**, **update**, **consolidate**, **prune**, or identify as a **gap** to create.
5. **Create content briefs with AEO structure baked in.** Use the ski ramp framework by default. See `references/content-brief-template.md` for the complete brief template.
6. **Build the editorial calendar.** Mix new creation with refresh cycles. Assume quarterly review of all priority content.
7. **Define measurement criteria.** What does success look like per content type? Rankings, traffic, AI citations, leads, revenue?

## Frameworks

### Topic cluster design template

```
Pillar page: "The Complete Guide to [Core Topic]"
├── Cluster page 1: "[Specific subtopic]"
├── Cluster page 2: "[Specific subtopic]"
├── Cluster page 3: "[Specific subtopic]"
│   ├── Supporting: FAQ
│   ├── Supporting: Comparison / vs
│   └── Supporting: Tool/calculator
└── Cluster page N: ...
```

**Linking rules:**
- Every cluster page links back to the pillar (upward)
- Pillar links to all clusters (downward)
- Clusters cross-link to 2-3 topically related clusters (sideways)
- Supporting content links to its parent cluster
- Anchor text is descriptive, not "click here"

**Sizing:** pillar pages 2,500-5,000 words; cluster pages 1,200-2,500 words; supporting content as needed. These are guides, not targets — write what the topic actually requires.

### Content audit scoring matrix

| Score | Label | Action | Criteria |
|-------|-------|--------|----------|
| **1** | Strong | **Keep / Monitor** | Ranking top 10, driving conversions, recently updated, AI-cited |
| **2** | Needs refresh | **Update** | Ranking 11-30, traffic declining, outdated info, structurally sound |
| **3** | Duplicative | **Consolidate** | Multiple thin pages on same topic, cannibalizing each other |
| **4** | Underperforming | **Prune or rewrite** | Not ranking, no traffic, no backlinks, thin content |
| **5** | Gap | **Create** | Topic covered by competitors but missing from our site |

**Pruning is not deleting.** A pruned page may be merged into another (301 redirect), rewritten entirely, noindexed (for legal/historical retention), or deleted with a redirect to the most relevant parent page.

### The "Ski Ramp" — AEO content structure

**This is the single most important content framework in this skill.** Derived from large-sample ChatGPT citation analysis (p-value 0.0). Apply it to every piece of content meant to earn AI citations.

**1. Front-load the answer (first 30% captures 44.2% of citations).**
- Put the key claim, definitive answer, or headline finding in the first paragraph.
- No throat-clearing intros. No "In this article, we'll explore…"
- Write the way a journalist writes a news lede: most important fact first.

**2. Use question-based H2 headings (78.4% of question-containing citations come from headings).**
- LLMs treat H2s as prompts and the following paragraphs as answers.
- Phrase H2s the way a user would ask the question: "How long does SEO take to show results?" not "SEO Timeline Overview."
- One topic per H2 section.

**3. Follow each H2 with a direct, definitive answer.**
- No hedging. "Teams that publish twice a week see 2.3x more traffic" beats "Publishing frequency may help traffic."
- The direct answer goes in the first 1-2 sentences after the heading. Supporting detail follows.
- LLMs penalize hedging language in the extraction pass.

**4. High entity density (~20%).**
- Use specific brand names, tool names, numbers, dates, proper nouns.
- "Increase budget by 15% in Q3" beats "increase budget in the second half of the year."
- Dates and numbers are universal citation positives — include real ones whenever possible.

**5. The middle of paragraphs matters.**
- 53% of citations come from mid-paragraph, not the opening sentence.
- Put the information gain — the specific, concrete, citable fact — somewhere in the middle of a 3-5 sentence paragraph, after context and before the transition.

**6. Include a summary/conclusion section (the "wake-up" zone).**
- The last 10% of content before the footer sees a citation bump.
- A short summary or "Key takeaways" block captures this.

**What NOT to do:**
- Don't artificially stuff entities or brand names — modern LLMs detect this and it damages trust signals.
- Don't build content just to be "summarizable." Large-sample work: making content summarizable alone doesn't make earning citations easier. Information gain and entity clarity do.
- Don't use clickbait H2s that don't match the question a user would actually ask. The AI matches on semantic intent, not clever copy.

### Content brief template (summary)

Core fields every brief should include:

| Field | Notes |
|-------|-------|
| Target keyword cluster | Primary + 5-15 supporting |
| Search intent | Informational / commercial / transactional / navigational |
| Fan-out sub-queries | From seo-keyword-research skill |
| Target word count | Based on top-10 SERP average + 20% |
| H1 | Primary topic, natural phrasing, includes target KW |
| H2 structure | **Question-based**, one topic each, sequenced by the user journey |
| First-paragraph key claim | The specific answer/finding to front-load |
| Key entities | Named brands, tools, people, places, dates, numbers to include |
| Internal links | To pillar (required) + 2-3 related clusters + supporting content |
| External citations | Primary sources, data, expert quotes |
| Schema type | Article, FAQPage, HowTo, Product, etc. |
| Competitor content to beat | Top 3-5 currently ranking |
| Information gain angle | What new data/insight do we add that nothing else has? |
| Named author + credentials | Required for E-E-A-T |

See `references/content-brief-template.md` for the complete version with prompts and guidance for each field.

### Content freshness cadence

| Content type | Refresh interval | Triggers an ad-hoc refresh |
|--------------|------------------|----------------------------|
| Pillar pages | Quarterly | Core update, major competitor launch, outdated stat |
| Cluster pages (priority) | Quarterly | Drop below top 10, traffic decay >20%, factual staleness |
| Cluster pages (secondary) | Semi-annually | Significant SERP shift |
| News/trend posts | As needed | Original news posts do not get refreshed; they get superseded |
| Evergreen reference | Annually | Only when facts change |
| Product/pricing pages | On change | Whenever pricing, features, or positioning shifts |

**Why:** Content not updated quarterly is ~3x more likely to lose AI citations in published multi-model benchmarks. Freshness is a confirmed signal across several open and closed LLMs. This is a real, data-backed signal — but remember, AI citation itself is volatile (45.5% of citations change between consecutive observations), so absolute consistency is impossible.

### E-E-A-T checklist

Applies to Google quality rater guidelines and overlaps with LLM trust signals.

- [ ] Named author with real credentials (not "Admin" or "Editorial Team")
- [ ] Author bio / about page with professional history
- [ ] First-party expertise, original research, or direct experience cited
- [ ] Sources linked to primary data (not other blogs citing the same source)
- [ ] Publication date visible on-page
- [ ] Last-updated date visible when content is refreshed
- [ ] Clear editorial process or methodology statement
- [ ] Organization schema with founding date, logo, social profiles
- [ ] Author schema (`Person` type) linking to credentials

### Information gain strategy

"Information gain" = what does this page add that no other page on the topic contains? Without it, you're competing on formatting and word count, which is a losing game against established sites.

**High information gain sources:**
- Original research (surveys, studies, experiments)
- First-party data (usage metrics, customer anonymized data, proprietary analytics)
- Expert commentary from named practitioners
- Proprietary methodology or framework
- Case studies with real numbers
- Specific screenshots, walkthroughs, or demonstrations nobody else has

**Critical amplification insight:** Brands are **6.5x more likely to be cited via third-party sources** than their own domains. **Earned media distribution boosts AI citations up to 325%** vs publishing only on-site. This means original research has *more value when distributed* — a proprietary study pitched to industry publications, syndication partners, and expert podcasts will earn more AI citations than the same study published only on your blog.

Plan information gain as a *distributable asset*, not a blog post. Hand off to **seo-link-building** for the distribution plan.

## Output format

```
## Content Strategy — [Client/Project]

**Business goals:** [List]
**Target audience:** [Persona + intent state]
**Time horizon:** [Quarter / half-year / year]

### Topic universe
| Core topic | Subtopics | Pillar status | Cluster status |
|-----------|-----------|---------------|----------------|

### Cluster architecture
[Visual tree or table showing pillar → cluster → supporting for each core topic]

### Content audit summary
| Score | Count | Action | Est. effort |
|-------|-------|--------|-------------|
| 1 Keep | | | |
| 2 Update | | | |
| 3 Consolidate | | | |
| 4 Prune/rewrite | | | |
| 5 Gap — create | | | |

### Editorial calendar (next 90 days)
| Week | Action | Content | Type | Brief owner | Writer |
|------|--------|---------|------|-------------|--------|

### Content briefs
[Link or reference to detailed briefs for each piece — see references/content-brief-template.md]

### Information gain / distribution plan
[What original assets will we create? How will they be distributed beyond our site?]

### Measurement
| KPI | Baseline | Target | Review cadence |
|-----|----------|--------|----------------|
```

## Example — SaaS analytics startup

**Goals:** 3x organic leads in 6 months; establish topical authority in product analytics.
**Audience:** Product managers and growth leads at B2B SaaS companies, 10-200 employees.
**Time horizon:** Next 90 days (with 6-month vision).

**Topic universe (core topics):**
1. Product analytics fundamentals
2. Event tracking and instrumentation
3. Funnel analysis
4. Retention and cohort analysis
5. A/B testing and experimentation

**Cluster architecture for "Product analytics fundamentals" (example):**
- Pillar: `/product-analytics-guide` (3,500 words, the definitive primer)
  - Cluster: `/product-analytics-vs-web-analytics`
  - Cluster: `/product-analytics-tools-comparison`
  - Cluster: `/how-to-choose-product-analytics-tool`
  - Cluster: `/product-analytics-metrics-that-matter`
  - Supporting: `/product-analytics-glossary`

**Audit (36 existing posts):**
- 8 Strong — keep as-is
- 14 Needs refresh (mostly 2023 posts with outdated stats)
- 6 Consolidate into 2 pillar pages
- 5 Prune (thin, no traffic, no backlinks)
- 12 Gaps identified against 3 competitor sites

**Ski ramp brief for `/product-analytics-guide` pillar:**
- **First paragraph key claim:** "Product analytics tools capture user interactions with your product to answer three questions: what users do, why they do it, and what to change next. Teams that instrument 15-30 core events see 2-3x better retention visibility than teams tracking everything."
- **H2s (all question-based):**
  - What is product analytics?
  - How is product analytics different from web analytics?
  - What events should I track?
  - Which product analytics tool is right for my team?
  - How do I measure retention with product analytics?
  - What does a product analytics stack look like in 2026?
- **Key entities:** named tools in the category, GA4, event, funnel, cohort, retention, activation (adjust to your vertical).
- **Information gain angle:** Original benchmark survey of 240 product teams on instrumentation depth vs retention visibility.
- **Distribution plan:** Syndicate the benchmark to Mind the Product, ProductLed, and offer exclusive cut to one Tier-1 publication for launch day coverage.

**Editorial calendar:** 6 new pieces / month + 4 refreshes / month. Benchmark survey is the Q2 tentpole asset.

## Guidelines

- **Apply the ski ramp to every page meant to earn AI citations.** It is the highest-confidence AEO framework we have (large-sample citation analysis, p=0.0).
- **Never hedge in the first paragraph.** "This may help teams understand X" ranks and cites worse than "Teams that do X see Y." Definitive language wins in both humans and LLMs.
- **Entity density is a knob, not a dial.** Target ~20% entity density naturally — don't stuff. If it reads awkwardly to a human, it reads awkwardly to the ranking systems.
- **Pillar pages cannot be shallow.** 2,500+ words is typical because a true pillar answers the full topic. If you can't write 2,500 words of substance, it's not a pillar topic for you yet.
- **Audit before you build.** Most content budgets are wasted on net-new pieces when existing content would outperform with a refresh. Score before you write.
- **Information gain is leverage.** Original research is 10x the work of rehashing; if distributed well, it's 100x the return. Budget for both creation *and* distribution.
- **Quarterly refresh is the default cadence**, not a best-case. Build it into the calendar from day one.
- **E-E-A-T is not a checkbox.** "Add an author photo" without real credentials is theater. The underlying trust signal has to be real — named expert, actual experience, verifiable history.
- **Do not believe the "AI content penalty" myth.** Large-sample citation studies (~1.9M pages) — 87.8% of AI-cited pages are at least AI-assisted. Quality and information gain matter; origin does not. Use AI tools where they help, review and edit for accuracy and voice.
- **AI citations are volatile.** 45.5% of AI Overview citations change between consecutive observations. Don't chase day-to-day citation movements; measure quarterly patterns at minimum.
- **Do not wait for a "3-month freshness cliff."** The 3-month cliff is a myth in its absolute form. Freshness is a signal; quarterly updates reduce citation loss by ~3x. That's the real data.

## Reference files

When planning content briefs or writing to the standard, read:

- `references/content-brief-template.md` — Complete content brief template with field-by-field guidance and ski-ramp examples. Read when creating or reviewing a content brief.

## Cross-skill handoffs

- **← seo-keyword-research:** Receive clustered keyword map and fan-out sub-queries as input.
- **→ seo-onpage-optimization:** Hand off content briefs for page-level ski ramp implementation.
- **→ seo-link-building:** Hand off information gain assets (original research, data studies) for distribution plans.
- **→ aeo-ai-search-visibility:** Hand off content for citation readiness review.
- **→ seo-reporting:** Hand off priority pages for tracking.
