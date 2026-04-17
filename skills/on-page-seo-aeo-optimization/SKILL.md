---
name: on-page-seo-aeo-optimization
description: "Turn a draft or existing page into something both Google *and* AI answer engines can index, rank, and cite. This skill operates at the single-page level — keyword research and strategy are inputs, not outputs."
---

## Why this matters

- The "ski ramp" is the single most important on-page pattern for AEO: **44.2% of LLM citations come from the first 30% of the page** (large-sample citation analysis, ~1.2M citations, p-value 0.0).
- **78.4% of citations containing questions come from H2 headings** — LLMs treat H2s as prompts. If your H2s aren't phrased as questions users would ask, you leave citation opportunity on the table.
- **AI crawlers do not execute JavaScript.** Any critical content that renders client-side is invisible to ChatGPT, Perplexity, and Claude. The on-page check must include "does this render in raw HTML?"
- Traditional on-page factors (title tags, schema, internal linking) remain load-bearing for Google — roughly the same rules as the last decade, with the AEO layer added on top.

## Process

1. **Verify target keyword and intent alignment.** Read the brief (from seo-content-strategy). Confirm the target keyword and intent match the SERP reality. If the SERP has shifted since the brief was written, adjust before optimizing.
2. **Optimize title tag and meta description.** Title is the single highest-leverage on-page element.
3. **Structure header hierarchy.** H1 is the topic. H2s are question-based subtopics. H3s are supporting detail. Apply the ski ramp.
4. **Optimize body content.** Front-load the answer. Definitive language. Entity density. Raw-HTML-visible content.
5. **Implement internal links.** Every page links to its pillar. Pillars link to all clusters. Clusters cross-link 2-3 related clusters.
6. **Optimize images.** Alt text, dimensions, modern formats, lazy loading.
7. **Implement schema markup (JSON-LD).** Validate with Rich Results Test before publish.
8. **Run the pre-publish checklist.** Confirm every ski ramp and technical element is in place.

## Frameworks

### Title tag formula

```
[Primary keyword] + [Specificity hook] + [Brand]
```

- **Primary keyword up front** (within the first 60 characters; fronted where natural).
- **Specificity hook** = year, number, format, or differentiator. Examples: "for 2026," "[5 Methods]," "Complete Guide," "with Examples."
- **Brand** at the end, separated by `|` or `–`. Skippable for very long titles.
- **Length target:** 50-60 characters. Google truncates around 580px pixel width; 60 chars is a safe proxy.
- **Uniqueness:** Every title on the site must be unique.

**Examples:**
- ✅ "Product Analytics Guide: 15 Events to Track in 2026 | ExampleCo"
- ✅ "[Tool A] vs [Tool B] vs [Tool C]: Feature + Price Comparison (2026)"
- ❌ "The Ultimate Guide to Everything You Need to Know About Product Analytics (It's Really Comprehensive!)" (too long, buries keyword, hype language)
- ❌ "Blog Post" (no keyword, no specificity)

### Meta description formula

```
[Direct value proposition] + [Specificity/proof] + [Soft CTA]
```

- **155-160 character target.** Google truncates around 920px on mobile, ~160 chars on desktop.
- **Direct value proposition** in the first sentence — what will the reader get?
- **Specificity or proof** — a number, a benefit, a differentiator.
- **Soft CTA** when appropriate — "Read the guide," "Compare tools," "Try free."
- **Do not optimize for keyword density.** Google rewrites ~60% of meta descriptions anyway; write for click-through, not for Google.

### Header hierarchy for AEO

**H1 (one per page):** Primary topic, natural phrasing, includes target keyword. Match or closely mirror the title tag.

**H2s (question-based, sequenced by user journey):** Each H2 mirrors a question a real user would ask an AI tool. LLMs treat H2s as prompts when extracting citations.

**H3s (supporting detail):** Break up long H2 sections. Not every H2 needs H3s — only when the section genuinely has sub-parts.

**H4+:** Use sparingly. If you're at H4, consider whether that section is a distinct topic that deserves its own H2.

**Direct answer pattern:** Every H2 must be followed by 1-2 sentences that directly answer the question — no throat-clearing, no hedging. This is where 78.4% of question-containing citations come from.

**Example (excellent):**
> ## How long does SEO take to show results?
>
> Most sites see initial ranking movement in 3-6 months, with meaningful traffic growth in 6-12 months. The timeline depends heavily on domain authority, competition, and technical baseline — a new site in a competitive niche often needs 12-18 months before organic traffic becomes a primary channel.

**Example (bad):**
> ## SEO Timeline
>
> SEO is a topic that many people have questions about. In this section, we'll explore the timeline and what to expect. It depends on many factors and may vary.

The first example gives the AI a clean prompt/answer pair with specific numbers. The second is unextractable.

### Body content optimization (ski ramp applied)

1. **Front-load the answer in the first paragraph.** Captures 44.2% of LLM citations.
2. **Use definitive language.** "Teams that do X see Y" beats "This may help teams understand X." LLMs penalize hedging.
3. **High entity density (~20%).** Named brands, tools, people, numbers, dates. Natural, not stuffed.
4. **Mid-paragraph information gain.** 53% of citations come from mid-paragraph, not the opener. Put the specific, concrete, citable fact in sentence 2 or 3 of a 3-5 sentence paragraph.
5. **Renders in raw HTML.** View-source test. Any critical content behind JS is invisible to AI.
6. **Summary / wake-up zone at the end.** The last 10% sees a citation bump. Include a Key Takeaways block.

### Schema markup decision matrix

| Page type | Primary schema | Additional schemas |
|-----------|---------------|---------------------|
| **Article / blog post** | `Article` (or `NewsArticle` / `BlogPosting`) | `BreadcrumbList`, `Person` (author), `Organization` (publisher), `FAQPage` (if the page has a clear FAQ) |
| **Product** | `Product` | `AggregateRating`, `Offer`, `Review`, `BreadcrumbList` |
| **How-to** | `HowTo` | `BreadcrumbList`, `VideoObject` (if video present) |
| **FAQ page** | `FAQPage` | `BreadcrumbList` |
| **Local business** | `LocalBusiness` (or specific subtype like `Restaurant`, `Plumber`) | `Service`, `GeoCoordinates`, `OpeningHoursSpecification`, `Review` |
| **Person / author** | `Person` | `sameAs` links to social/credential profiles |
| **Organization** | `Organization` | `sameAs`, `contactPoint`, `logo` |
| **Event** | `Event` | `Place`, `Offer` |
| **Recipe** | `Recipe` | `Review`, `AggregateRating`, `NutritionInformation` |
| **Video** | `VideoObject` | `Clip` (chapters) |
| **Job posting** | `JobPosting` | `Organization`, `Place` |
| **Course** | `Course` | `Organization`, `CourseInstance` |

**Implementation notes:**
- Use **JSON-LD** (not microdata or RDFa) — Google's preferred format.
- Place inside `<script type="application/ld+json">` in the `<head>` or `<body>`.
- Validate with the Rich Results Test (https://search.google.com/test/rich-results) before publish.
- **Do not mark up content that is not visible on the page.** This is a schema violation and can lead to manual action.
- Keep schema in sync with page content — stale schema (wrong price, wrong date, missing fields) hurts more than no schema.

### Internal linking rules

- **Every page links to its parent pillar.** Use the topic name as anchor where natural.
- **Every pillar links to all its clusters.** Typically in a "Deep dives" or "Related articles" section.
- **Cluster pages cross-link to 2-3 related clusters.** Contextual placement inside the body, not in a generic "related posts" widget.
- **Descriptive anchor text.** "Product analytics metrics that matter" beats "click here" or "this guide."
- **No more than ~100 unique outbound internal links per page.** Google can crawl more, but the link equity split becomes negligible.
- **Links in the main content area pass more weight** than links in sidebars or footers.

### Image optimization

- **Alt text:** Describe the image in context. Include the target keyword only if it's natural. Decorative images should have `alt=""` (empty, not missing).
- **Dimensions:** Always set explicit `width` and `height` attributes to prevent CLS. Use CSS `aspect-ratio` for responsive images.
- **Format:** WebP by default; AVIF for best compression. Keep JPEG/PNG fallbacks only if needed for older browsers.
- **Size:** Hero images ≤200KB after compression; in-content images ≤100KB. Preload the LCP image.
- **Lazy loading:** `loading="lazy"` on all below-fold images.
- **File names:** `event-scoping-framework.webp` beats `IMG_3412.webp`.
- **Schema:** Add `ImageObject` to featured images for Article/BlogPosting schema.

### Pre-publish AEO + technical checklist

- [ ] Title tag: 50-60 chars, primary keyword front-loaded, brand at end
- [ ] Meta description: 155-160 chars, direct value prop + soft CTA
- [ ] URL is clean, short, includes primary keyword (no dates, no tracking params)
- [ ] H1 matches or mirrors title
- [ ] Key claim / direct answer in first paragraph (first 30% of page)
- [ ] H2s are question-based, sequenced by reader journey
- [ ] Each H2 followed by a direct, definitive answer in the first 1-2 sentences
- [ ] No hedging language in intro
- [ ] Entity density ~20% (specific names, tools, numbers)
- [ ] Named author with credentials visible on-page
- [ ] Publication date visible
- [ ] Updated date visible (when applicable)
- [ ] Key takeaways / summary block at the end (wake-up zone)
- [ ] Schema markup implemented and validated (Rich Results Test)
- [ ] Content renders in raw HTML (view-source test, no critical content behind JS)
- [ ] Internal links: to pillar + 2-3 related clusters (descriptive anchors)
- [ ] External links: to primary sources where claims are made
- [ ] Images have descriptive alt text, dimensions set, WebP format
- [ ] LCP image preloaded
- [ ] Target keyword used naturally in H1, first paragraph, and at least one H2
- [ ] Mobile-friendly layout (test on real device or DevTools)
- [ ] No orphan page (at least one internal link points here)

## Output format

```
## On-Page Optimization Review — [Page URL]

**Target keyword:** [KW]
**Intent:** [Informational / Commercial / Transactional / Navigational]
**Current ranking:** [Position or "not ranking"]
**Reviewed by:** [Name]
**Review date:** [Date]

### Title + meta
| Element | Current | Recommended | Reason |
|---------|---------|-------------|--------|
| Title   |         |             |        |
| Meta    |         |             |        |
| URL     |         |             |        |

### Header structure
| Level | Current | AEO-optimized recommendation |
|-------|---------|------------------------------|
| H1    |         |                              |
| H2.1  |         |                              |
| H2.2  |         |                              |

### Ski ramp assessment
| Element | Present? | Notes |
|---------|----------|-------|
| Key claim in first 30% | | |
| Question-based H2s | | |
| Direct answers under H2s | | |
| Entity density ~20% | | |
| Mid-paragraph information gain | | |
| Summary / wake-up section | | |
| Renders in raw HTML | | |

### Schema
| Type | Required | Implemented | Valid | Notes |
|------|----------|-------------|-------|-------|

### Internal links
| Link | Target | Anchor | Status |
|------|--------|--------|--------|

### Images
| Image | Alt | Dimensions | Format | Size | Status |
|-------|-----|------------|--------|------|--------|

### Priority fixes
1. **[Critical]** …
2. **[High]** …
3. **[Medium]** …

### Pre-publish checklist: [X/24 items passing]
```

## Example — review of a SaaS comparison post

**Page:** `example.com/blog/tool-a-vs-tool-b`  
**Target keyword:** "[tool a] vs [tool b]" (volume/KD from your research)  
**Current state:** Stagnant ranking, no AI Overview citation.

### Findings

**Title:** Generic question form, too long — truncates; buries specificity.  
- **Recommendation:** "[Tool A] vs [Tool B]: Feature & Price Comparison (2026) | ExampleCo" (~60 chars, year-fresh)

**Meta:** Vague ("we compare two popular options").  
- **Recommendation:** Lead with the segmented verdict hook, proof (hands-on), and year.

**H2 structure (current):** Intro, vendor A, vendor B, features, pricing, conclusion — weak for extraction.

**H2 structure (AEO-optimized):** Buyer questions only, e.g. small-team fit, pricing delta, feature gaps, integrations, when to pick each, takeaway table.

**First paragraph:** Replace throat-clearing with a direct segmented recommendation + scope of the teardown.

**Schema:** Add Article + author; FAQPage aligned to H2 questions; structured comparison (`ItemList` + `Product`) where appropriate.

**Internal links:** Link to category pillar, related alternatives pages, and your best-of listicle — not only vendor homepages.

**Renders in raw HTML:** ✓ Pass when CMS/server-rendered.

**Pre-publish checklist:** Drive toward full pass on title, meta, H2s, intro, schema, internal links, alts, dates.

## Guidelines

- **Titles are the single highest-leverage element.** A bad title cannot be compensated for by great content. Spend 10 minutes on every title.
- **Apply the ski ramp to every important page.** It is the highest-confidence AEO pattern we have. The data is unambiguous (large-sample citation analysis, ~1.2M citations, p=0.0).
- **H2s as prompts is the core mental model.** If your H2 isn't something a user would type into ChatGPT, rewrite it.
- **Never hedge in the first paragraph.** Hedging language ("may," "could," "might help") materially reduces both Google rankings and LLM citation probability.
- **Validate schema before publish.** Broken schema is worse than no schema — Google can apply manual actions for spammy markup. Rich Results Test is free and takes 30 seconds.
- **Render in raw HTML or don't bother with AEO.** Client-side-rendered content is invisible to ChatGPT/Perplexity/Claude. Check with view-source before you ship.
- **Don't over-optimize for keyword density.** Modern Google understands topic and intent. A single target keyword used naturally in H1, intro, and one H2 is enough. Stuffing hurts readability and trust signals.
- **Internal linking compounds.** A single well-placed internal link is low-leverage; a site-wide internal linking strategy is high-leverage. Make sure this page contributes to the site structure, not just its own goals.
- **Pre-publish checklists prevent rework.** Running the 24-item checklist before publish is 5 minutes; fixing issues after indexing takes weeks of recovery.
- **Images set dimensions or CLS will tank.** This is a recurring cause of CLS failures on otherwise-healthy pages. Always specify `width` and `height` or `aspect-ratio`.
- **Meta descriptions are for CTR, not ranking.** Google rewrites them ~60% of the time anyway — write for click-through.

## Cross-skill handoffs

- **← seo-keyword-research:** Receive target keyword, intent, and fan-out sub-queries.
- **← seo-content-strategy:** Receive content brief with ski ramp structure pre-specified.
- **→ seo-technical-audit:** Escalate rendering issues, schema validation failures, or CWV regressions.
- **→ aeo-ai-search-visibility:** Hand off published pages for citation readiness review.
- **→ seo-reporting:** Hand off optimized pages for tracking.
- **→ programmatic-seo-builder skill:** For large-scale templated page production (1000+ similar pages), hand off to that skill — on-page optimization here is per-page.
