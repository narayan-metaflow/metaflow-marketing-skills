# BOFU Format Patterns — Deep Reference

Canonical structural patterns for each of the four BOFU formats. Use these as scaffolding for a new page or as a rubric when auditing an existing one. Patterns are named A/B/C/D to match how they are referenced in the main SKILL.md.

---

## Pattern A — Comparison page (X vs Y, X vs Y vs Z)

The most common BOFU format and the most structurally standardized. Two or three named tools, head-to-head, with evaluation across common dimensions.

### Full H2 sequence (canonical)

```
H1: [Product A] vs [Product B]: [year] Comparison
H2: [A] vs [B] at a glance
    (Paragraph: 2–3 sentences summarizing the segmented verdict)
    (Comparison table: 5–10 rows, descriptive cells)
H2: What is [Product A]?
    (120–180 words, factual, no marketing spin)
H2: What is [Product B]?
    (120–180 words, factual, no disparagement)
H2: [A] vs [B]: Feature comparison
    H3: [Feature category 1 — e.g., Reporting]
    H3: [Feature category 2 — e.g., Integrations]
    H3: [Feature category 3 — e.g., Collaboration / Workflow]
    H3: [Feature category 4 — e.g., Admin and Security]
H2: Pricing comparison
    (Table of plans + worked examples at specific volumes)
H2: User reviews and third-party ratings
    (software review scores with excerpts)
H2: Where [A] is the better choice
    (Specific use cases and evaluation criteria where A wins)
H2: Where [B] is the better choice  ← the concession section
    (Specific use cases and evaluation criteria where B wins)
H2: Which should you choose?
    (Segmented recommendation by team size, use case, budget, technical fit)
H2: Frequently asked questions
    (4–8 fan-out sub-queries as H3s, concise answers)
```

### Variations

- **Three-way comparison (X vs Y vs Z):** use the same scaffolding with three "What is" sections and three concession sections. Limit to three; four-way comparisons read as listicles and should use Pattern C.
- **Self-authored ("we are A"):** the "Where B is the better choice" section is the credibility anchor; cannot be skipped or softened.
- **Third-party reviewer:** add a "How we tested" methodology H2 before the feature comparison and a disclosure statement about any affiliate relationships or paid placement.

### Comparison table specifications

The at-a-glance table is the single most-extracted element by AI engines. Structure it for both human scanning and LLM extraction:

- **Rows:** 5–10. More than 10 becomes unscannable and dilutes the signal.
- **Columns:** product name (not "Us" / "Them"). Add a third column for third-party reviewer tables.
- **Cell content:** descriptive, specific, quantified where possible.
  - "Unlimited users" beats "✓"
  - "Starts at $15/user/month, annual only" beats "$$"
  - "Native integration with 150+ tools" beats "Yes"
- **HTML `<table>` markup**, not an image. LLMs cannot extract image-based tables.
- **Row ordering:** lead with the most salient decision dimension for your audience. Price-sensitive audiences → pricing first. Feature-evaluator audiences → core capabilities first.
- **Typical row set:** starting price / pricing model / free tier / core capabilities / key integrations / deployment (cloud/self-host) / user limits / support tier / best for.

### FAQ section — generating the right questions

The FAQ serves fan-out sub-queries that LLMs extract into their syntheses. Generate questions by:

1. **Autocomplete and "People Also Ask"** for `[A] vs [B]` in Google and Bing.
2. **Sales objections the team hears** — the top 3–5 "but what about…" questions asked in discovery calls.
3. **Reddit and community threads** — search `[A] vs [B] reddit` to see what buyers actually ask.
4. **Migration and switching questions** — "how do I migrate from A to B?" is common and extractable.
5. **Pricing edge cases** — hidden costs, annual vs monthly, seat minimums, overage pricing.

Typical BOFU comparison FAQ topics:
- Migration effort from one tool to the other
- Data portability and export
- Which tool is better for a specific common segment
- Pricing at a specific volume
- Free tier or trial differences
- Open-source or self-host availability
- Support quality

### Per-feature H3 sub-structure

Inside each feature category H3, use a consistent micro-pattern:

```
H3: [Feature category]
    Paragraph 1: What each tool provides in this category, factually, 2–3 sentences each.
    Paragraph 2: The meaningful differences — what A does that B doesn't, or vice versa, with specifics.
    Paragraph 3 (optional): Which tool wins for which use case in this category.
```

Avoid the affiliate-style "✓ Tool A has this — Tool B doesn't" checklist inside feature sections. It reads as cherry-picking and LLMs extract it poorly.

---

## Pattern B — Comparison "Use Case" variant

A less common but useful variant where the page leads with use cases and maps tools to them, rather than comparing features across all tools.

```
H1: [Product A] vs [Product B]
H2: TL;DR: Which is right for you?
H2: Best for [persona or use case 1] → [recommendation]
H2: Best for [persona or use case 2] → [recommendation]
H2: Best for [persona or use case 3] → [recommendation]
H2: Feature-by-feature breakdown
H2: Pricing
H2: Final recommendation
```

**When to use Pattern B:**
- When the two tools are strong in genuinely different use cases and a feature-by-feature comparison would miss the point
- When the audience is non-technical and wants a use-case-led buyer's guide
- When both tools are similar enough on features that positioning by use case is more useful than feature parity

**When NOT to use Pattern B:**
- When the audience is technical and expects feature-parity analysis first
- When one tool is clearly stronger across most use cases — the structure becomes awkward

---

## Pattern C — Alternative page and "Best X" listicle

The listicle pattern covers both alternative pages ("Alternatives to X") and "best X" listicles. Same structural scaffolding; different intent framing.

### Full H2 sequence (canonical)

```
H1: [N] Best [Competitor] Alternatives in [year]
     — or —
     The [N] Best [Category] Tools in [year]
H2: Why look for a [Competitor] alternative?
     — or —
     What makes a great [Category] tool?
    (150–250 words; frame the decision problem)
H2: What to look for in a [Category] tool
    (Evaluation criteria — 5–8 bulleted or short-paragraph items)
H2: How we evaluated these tools
    (Methodology — who tested, over what period, against what criteria; disclosed connections)
H2: Quick comparison: Best [Category] tools at a glance
    (Comparison table: tool / starting price / free tier / review score / best for)
H2: 1. [Tool 1] — Best for [specific use case]
    H3: Overview  (2–3 sentences)
    H3: Key features  (3–5 bullet points; specific, not generic)
    H3: Pricing  (starting plan + notable pricing detail)
    H3: Pros  (3–4 specific, evidence-based)
    H3: Cons  (2–3 specific; this is a credibility marker)
    H3: Best for  (1–2 sentences; who should pick this)
H2: 2. [Tool 2] — Best for [specific use case]
    (same sub-structure)
...
H2: [N]. [Tool N] — Best for [specific use case]
H2: How to choose the right [Category] tool
    (Decision framework or flowchart; 200–300 words)
H2: Frequently asked questions
    (4–8 fan-out sub-queries)
```

### Variations: alternative vs listicle

| Dimension | Alternative page | "Best X" listicle |
|---|---|---|
| Framing H2 | "Why look for a [Competitor] alternative?" | "What makes a great [Category] tool?" |
| Tool count | 8–12 | 7–12 (10 is the modal) |
| Incumbent (Competitor) | Usually not included; page frames against it | Not applicable |
| Author's product | Often included as entry 1–3 with positioning hook | Include honestly or exclude (see main SKILL.md) |
| Tone | Solution-aware, problem-confirming | Category-exploratory, evaluative |
| Typical length | 2,000–3,500 words | 2,500–5,500 words |

### Per-tool sub-structure — consistency rules

The per-tool sub-structure must be identical across every tool in the list. Consistency is a quality signal to both readers and Google's quality systems.

**Minimum per-tool fields:**
- Overview (2–3 sentences)
- Key features (3–5 specific items)
- Pricing (starting plan + notable detail)
- Pros (3–4 specific items)
- Cons (2–3 specific items)
- Best for (1–2 sentences)

**Strong additions:**
- Dated screenshot of the tool in use
- Review-site rating with link
- Link to official pricing page
- Integrations list or count
- One specific observation from first-hand use

**Common cons fields readers expect to see addressed:**
- Pricing transparency or hidden costs
- Feature gaps compared to the category leader
- Learning curve or onboarding complexity
- Support quality
- Integration depth or API limits

A listicle with only pros is read as affiliate wallpaper. A credible listicle has real, specific cons on every tool — including the author's own product if included.

### Tool ordering

Three common ordering approaches:

- **By best-for segment.** "1. Best overall / 2. Best for small teams / 3. Best for enterprise / …" — strongest for readers, works well for segmented verdict pages.
- **By ranking (best to worst).** Traditional but harder to defend — requires explicit methodology.
- **Alphabetical.** Neutral; useful when methodology cannot support a ranking.

Default to best-for-segment ordering. It carries more decision value per line of text than ranking and avoids the credibility tax of defending "we rank Tool 3 above Tool 4."

### Methodology section — specifics that work

The methodology H2 is the credibility anchor of a listicle post-Helpful-Content-Update. Include:

- **Number of tools evaluated** (not just the tools that made the final list)
- **Period of evaluation** (e.g., "tested over 6 weeks in Q1 2026")
- **Evaluation criteria** — list them, don't hand-wave
- **Who tested** — named author(s), with relevant experience
- **Disclosed relationships** — affiliate commissions, sponsored placements, product provided free, team familiarity
- **How tools were scored or ranked** — explicit framework, not "our expert opinion"

---

## Pattern D — "Best X for Y" segment page

The segment-page variant of Pattern C. Uses the same scaffolding with two structural adjustments that make the segmentation real, not cosmetic.

### Adjustment 1: evaluation criteria are segment-specific

A "Best CRM for solo consultants" page should list criteria that matter to solo consultants — single-user pricing, lightweight onboarding, client-billing integration, no seat minimums. Not "scalable to thousands of users, enterprise permissions, SSO" — those belong on the enterprise segment page.

If the evaluation criteria look identical to the head-term page's criteria, the segmentation is cosmetic and the page is thin content.

### Adjustment 2: tool list is filtered, not identical

Three valid patterns for filtering the tool list:

- **Same tools, different order.** Category leaders show up differently for different segments. Reorder based on segment fit.
- **Partial overlap.** Remove tools that genuinely don't fit the segment (e.g., an incumbent enterprise vendor on a "Best CRM for solopreneurs" page). Add segment-specific tools that don't make the head-term cut.
- **Disjoint list.** Entirely different tools for a niche segment. Rare but valid — "Best CRM for real estate agents" may share almost nothing with "Best CRM" generically.

If the tool list is 100% identical to the head-term page in the same order, the segmentation is cosmetic.

### H2 sequence — segment-page specific

```
H1: The [N] Best [Category] Tools for [Segment] in [year]
H2: What [Segment] need from a [Category] tool
    (Segment-specific evaluation criteria)
H2: How we chose these tools for [Segment]
    (Segment-specific methodology)
H2: [Segment]-focused comparison at a glance
    (Table with segment-relevant columns, not the generic ones)
H2: 1. [Tool] — Best for [segment-specific sub-use-case]
    (standard per-tool sub-structure, but every field frames for the segment)
...
H2: [N]. [Tool]
H2: How [Segment] should choose
H2: Frequently asked questions  (segment-specific FAQ)
```

### When a segment page is worth creating

**Create:**
- Segment is a real self-identifying buyer group (small business, agencies, remote teams, regulated industries, specific verticals)
- Segment modifier genuinely changes the answer (different tools, different ordering, different considerations)
- You have segment-specific research, case studies, or customer insight to anchor the page
- The segment SERP is not already dominated by a category aggregator for that segment

**Do not create:**
- Modifier is artificial and buyers do not self-identify with it ("best CRM for 37-person teams")
- Tool list and considerations are identical to the head term
- No segment-specific insight beyond a find-and-replace on the head-term page
- Page will be one of 200+ programmatically-generated near-duplicates

### Scaling pattern

Segment pages are the most scalable BOFU format for a vendor, but only if each page is genuinely unique. Two approaches:

1. **Editorial, 8–20 pages.** Hand-written by someone with segment knowledge, each with unique research and recommendations. Publishable inside this skill's scope.
2. **Programmatic, 100+ pages.** Requires a database-driven system with per-segment unique content (user counts, industry data, segment-specific reviews aggregated from review APIs or exports by segment filter). This belongs in a dedicated programmatic SEO system with per-page data, not a skill-driven editorial line. If the plan is to scale past ~20, stop and design the data layer first.

---

## Headings library — ready-to-use patterns

Question-form H2s for the four formats. Adapt to the specific topic; keep the question phrasing.

### Comparison page H2s

- "Which is better for [segment], [A] or [B]?"
- "How do [A] and [B] compare on [feature]?"
- "What's the difference between [A] and [B]?"
- "Is [A] worth the price compared to [B]?"
- "When should you choose [A] over [B]?"
- "When is [B] the better choice than [A]?"
- "How do [A] and [B] compare for [use case]?"
- "Can you migrate from [A] to [B]?"

### Alternative page H2s

- "Why are people looking for [Competitor] alternatives?"
- "What should you look for in a [Competitor] alternative?"
- "Which [Competitor] alternative is best for [segment]?"
- "Is [Tool N] really a [Competitor] alternative?"
- "How do [Competitor] alternatives compare on pricing?"
- "Which [Competitor] alternative has the best free tier?"

### "Best X" listicle H2s

- "What makes a great [Category] tool?"
- "How did we evaluate these tools?"
- "What should you look for in a [Category] tool in [year]?"
- "Which [Category] tool is best for [segment]?"
- "What's the best free [Category] tool?"
- "How do I choose the right [Category] tool for my team?"

### "Best X for Y" segment page H2s

- "What makes a [Category] tool great for [Segment]?"
- "Why [Segment] need different [Category] tools than [broader audience]?"
- "Which [Category] tool is best for [specific sub-segment]?"
- "How much should [Segment] budget for [Category] software?"

---

## Common anti-patterns to avoid

Across all four patterns, these are the structural mistakes that consistently tank pages.

- **Binary checkmark tables.** "✓ / ✗" tables with no nuance. Replace with descriptive cells.
- **Identical per-tool sub-structures filled with generic praise.** "Intuitive UI, robust integrations, great support" repeated for every tool. Specific observations or nothing.
- **Missing cons sections.** Every tool has cons. Hiding them destroys credibility.
- **Bloat for word count.** Padding with generic "What is [category]?" sections to hit a length target. If the topic is covered, stop.
- **Generic intros that delay the answer.** "In this article, we'll explore…" is the anti-ski-ramp. Lead with the segmented verdict.
- **Self-ranking at #1 without earning it.** Readers and Google systems both detect this pattern.
- **Stale pricing, unrefreshed dates.** Competitors changed pricing; your page still shows old numbers. Quarterly review or do not publish.
- **Dishonest feature claims.** "Competitor lacks X" when they shipped X two quarters ago. This gets publicly called out and destroys the page's credibility and search performance.
- **Affiliate-style "our top pick" boxes** with no methodology. Readers read these as ads.
- **Publishing both X-vs-Y and Y-vs-X as separate indexable pages.** Canonicalize one direction.
- **Doorway-page segment spam.** 200+ near-duplicate "best X for Y" pages. Either invest in uniqueness or don't publish.
