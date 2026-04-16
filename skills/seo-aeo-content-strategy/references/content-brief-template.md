# Content Brief Template

A content brief is the single document a writer needs to produce a publish-ready draft. A good brief eliminates ambiguity about what to write, why it matters, what to include, and what format the AI extraction layer expects.

## When to use this template

- Creating a new piece of content from scratch
- Commissioning a rewrite for a failing page
- Standardizing briefs across an internal team or freelance network
- Onboarding a new writer to your content standards

Read this file when the user asks for a content brief, a writing spec, or a rewrite plan for a specific page.

---

## The complete brief (fill every section)

### 1. Meta

| Field | Value | Notes |
|-------|-------|-------|
| Brief ID / title | | Internal tracking |
| Author | | Named person, not "Team" |
| Due date | | |
| Priority | High / Medium / Low | |
| Target publish date | | |
| Distribution plan | Organic + email + social + [partners] | |
| Budget | | If commissioning outside |

### 2. Strategic context

**Business goal for this piece:**
> Example: "Generate qualified demo requests from mid-market SaaS PMs evaluating product analytics tools."

**Target reader:**
> Example: "A product manager at a 50-500 person B2B SaaS company, 2-5 years of experience, actively evaluating analytics tools. She's read 3-4 competitor comparison posts and is trying to shortlist 3 to demo."

**Where this fits in the buyer journey:**
Awareness / Consideration / Decision

**How this piece fits in the topic cluster:**
- Pillar it supports: `[URL]`
- Related clusters it should cross-link to: `[URLs]`
- Supporting content that should link to this: `[URLs]`

### 3. Keyword + intent

| Field | Value |
|-------|-------|
| Primary keyword | |
| Monthly search volume | |
| Keyword difficulty | |
| Search intent | Informational / Commercial / Transactional / Navigational |
| Supporting keywords (5-15) | |
| SERP features triggered | AI Overview / Featured Snippet / PAA / Video / Shopping |

**Fan-out sub-queries (AEO):**
> List the 3-5 sub-queries an AI tool would generate when a user asks the full version of this question. Each must be directly answered somewhere in the content — typically a dedicated H2 section or a clearly-labeled sub-point.

Example (target: "best product analytics tool for small SaaS teams"):
1. Product analytics software 2026
2. [Vendor A] vs [Vendor B] vs [Vendor C]
3. Free product analytics tools
4. Product analytics for startups
5. Small team analytics stack

### 4. SERP + competitor analysis

**Top 3 currently ranking pages (URL + what they do well + what they're missing):**

1. `[URL]` — Strong: [X]. Missing: [Y].
2. `[URL]` — Strong: [X]. Missing: [Y].
3. `[URL]` — Strong: [X]. Missing: [Y].

**What we'll do differently (information gain angle):**
> Example: "Original survey of 240 product teams on instrumentation depth vs retention visibility. No competitor has primary research — they all cite the same recycled industry stat."

### 5. Structure — the ski ramp

**H1:**
> Primary topic, natural phrasing, includes target KW. Typically 45-65 characters.

**Target word count:**
> Based on top-10 SERP average + 20%. Do not pad to hit a number — write what the topic requires.

**First paragraph key claim (front-load here, captures 44.2% of LLM citations):**
> Write the definitive answer to the primary question in 1-3 sentences. No hedging. No "in this article." Real data and entities if available.
>
> Example: "Product analytics tools capture user interactions with your product to answer three questions: what users do, why they do it, and what to change next. Teams that instrument 15-30 core events see 2-3x better retention visibility than teams tracking everything — the tool choice matters less than the discipline of scoping event taxonomy."

**H2 outline (question-based, one topic each, sequenced by reader journey):**
1. [Question-phrased H2]
2. [Question-phrased H2]
3. ...

For each H2, specify:
- The direct answer to open with (first 1-2 sentences after the heading)
- Supporting points
- Any specific data, examples, or entities to include
- Internal links to drop in

**Example H2 entry:**

> **H2: What events should I track in a product analytics tool?**
> - Opening answer: "Most teams should start with 15-30 events covering the activation path, core actions, and conversion points. Tracking everything creates noise; tracking too little makes retention invisible."
> - Include: the "event scoping canvas" framework, screenshot of the canvas, link to the glossary entry for "activation event"
> - Internal link: pillar `/product-analytics-guide`, cluster `/event-tracking-instrumentation`
> - Entity density target: high — specific tool names, action names, framework names

**Conclusion / wake-up section:**
> 150-250 words summarizing the key takeaways. This captures the citation bump from the last 10% of content. Use a "Key takeaways" subheading with 3-5 bulleted takeaways.

### 6. Entity and information gain requirements

**Named entities to include (target ~20% density naturally):**
- Product/tool names: `[list]`
- People (experts, founders, researchers): `[list]`
- Companies / case studies: `[list]`
- Frameworks / methodologies: `[list]`
- Numbers / dates / percentages: `[list]`

**Information gain elements (required in every piece):**
- [ ] At least one original data point, screenshot, or first-party example
- [ ] Direct quote or commentary from a named expert (internal or external)
- [ ] A specific number or date that no competitor has

### 7. Internal linking plan

| Link type | Target URL | Anchor text suggestion |
|-----------|-----------|------------------------|
| To pillar (required) | | |
| To related cluster 1 | | |
| To related cluster 2 | | |
| To supporting content | | |
| From pillar to this page | | |

Descriptive anchor text only. Never "click here" or "learn more."

### 8. External citations

List all external sources to be cited, with URLs. Prefer primary sources (original studies, government data, company filings) over secondary blog citations.

| Claim | Source | URL | Link type (follow/nofollow) |
|-------|--------|-----|-----------------------------|

### 9. Schema markup

| Schema type | Required | Notes |
|-------------|----------|-------|
| Article | ✓ | Always for blog content |
| Person (author) | ✓ | Links to author page |
| Organization | ✓ | Publisher |
| FAQPage | If applicable | Use if the page has a clear FAQ section |
| HowTo | If applicable | Use only for true step-by-step guides |
| BreadcrumbList | ✓ | Navigation context |

Hand schema spec off to the writer or dev at publish time — it is not the writer's job to code it, but the brief should specify it.

### 10. E-E-A-T checklist

- [ ] Named author with credentials (Person schema populated)
- [ ] Author bio / about page linked
- [ ] Experience signals: first-party data, screenshots, original insight
- [ ] Expertise signals: named sources, correct terminology, depth
- [ ] Authority signals: cited by others, linked from pillar
- [ ] Trust signals: publication date, last-updated date, editorial disclosure

### 11. Images and media

- Hero image: [description or existing asset]
- In-content images: [list]
- Alt text guidance: descriptive, includes target keyword naturally where appropriate
- All images: set explicit width/height; use WebP; lazy-load below-fold
- Schema: ImageObject populated for featured images

### 12. Pre-publish checklist (for the writer)

Before submitting the draft, confirm:

- [ ] Primary keyword used naturally in H1, first paragraph, and at least one H2
- [ ] First 30% of content contains the key claim/answer
- [ ] H2s are phrased as questions the reader would actually ask
- [ ] Every H2 is followed by a direct, definitive answer in the first 1-2 sentences
- [ ] No hedging language in the intro ("may," "might," "could help")
- [ ] Target entities present and flowing naturally
- [ ] Internal links to pillar + 2-3 related clusters
- [ ] External citations to primary sources
- [ ] Conclusion / key takeaways section at the end
- [ ] Word count is appropriate for topic depth (not padded)
- [ ] Images have alt text and dimensions
- [ ] Fact-check: every claim traces to a source

### 13. Success criteria

| Metric | 30 days | 90 days | 6 months |
|--------|---------|---------|----------|
| Impressions | | | |
| Clicks | | | |
| Top-10 rank for primary KW | | | |
| AI citation (spot check) | | | |
| Leads / demo requests | | | |

Note that rankings and citations fluctuate; 90-day windows are more reliable than day-to-day tracking.

---

## Example: fully-filled brief

### Meta

- Brief: `PILLAR-001 — Product Analytics Guide`
- Author: Jamie Chen
- Due: [date]
- Priority: High (Q2 tentpole)
- Target publish: [date]
- Distribution: organic + email + LinkedIn + exclusive data cut to Mind the Product

### Strategic context

**Business goal:** Generate 40+ demo requests per month within 6 months of publish. Establish topical authority as the primer for PMs researching product analytics.

**Target reader:** Product manager at a 50-500 person B2B SaaS, 2-5 years experience, evaluating analytics for the first time at a new role.

**Journey stage:** Awareness/Consideration overlap.

**Cluster role:** This IS the pillar. Will be linked to by every cluster page in the product-analytics topic.

### Keyword + intent

- Primary: "product analytics"
- Volume: 9,900
- KD: 62
- Intent: Informational (definitional + comparison)
- Supporting: product analytics tools, product analytics software, how to do product analytics, product analytics vs web analytics, product analytics examples, etc.
- SERP features: AI Overview present ✓, Featured Snippet ✓, PAA ✓, Video carousel ✓

**Fan-out sub-queries:**
1. What is product analytics
2. Product analytics tools comparison
3. Product analytics vs web analytics
4. How to implement product analytics
5. Product analytics metrics / KPIs

### First paragraph key claim

"Product analytics captures user interactions inside your product to answer three questions: what users do, why they do it, and what to change next. Teams that instrument 15-30 core events see 2-3x better retention visibility than teams tracking everything — which is why the discipline of scoping events matters more than the tool you pick. This guide covers what product analytics is, how it differs from web analytics, and how to build a stack that fits a 50-person product team."

### H2 outline

1. What is product analytics?
2. How is product analytics different from web analytics?
3. What metrics should a product team track?
4. What events should I instrument first?
5. How do I choose a product analytics tool?
6. What does a minimal product analytics stack look like in 2026?
7. Common product analytics mistakes (and how to avoid them)
8. Key takeaways

### Information gain angle

Primary research: original survey of 240 product teams on instrumentation depth vs retention visibility. Results syndicated exclusively with Mind the Product for launch-day coverage; data cut available as a download asset from the pillar page.

### Distribution plan (hand off to seo-link-building)

- Exclusive launch-day coverage with one Tier-1 publication
- Syndication to Mind the Product, ProductLed, Reforge community
- LinkedIn post from CEO with key chart
- Guest appearance on 2 product-focused podcasts
- Reddit AMA in r/ProductManagement during launch week

---

**Brief this structured is overkill for a 900-word cluster page but appropriate for pillar pages, flagship content, and anything where information gain matters. Scale the template down for smaller pieces — the ski ramp structure and fan-out coverage should never be dropped.**
