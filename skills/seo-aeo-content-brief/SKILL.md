---
name: seo-aeo-content-brief
description: "Turn a target search term, a working title, a destination domain, and a page type (blog post or landing page) into one brief a writer can execute. Use when the user asks for a content brief, writer brief, blog brief, or landing-page brief before a page is drafted. This skill stops at the brief."
---

## Why this matters

A brief is the contract between the person who chose the page and the person who writes it. A thin brief produces a page that looks like the current results. An over-specified brief drafts the page in disguise, and the writer stops making decisions.

The sources that hold up agree on a short list: one primary query, a reader specific enough to choose the language, a next action, a live SERP, gaps tied to URLs that were actually opened, an angle that names new evidence, real internal URLs, and named external sources. They disagree on outline depth, word-count targets, title length, and schema. This skill takes the side that a writer or `seo-article-writer` can follow without guessing, and it refuses the side that turns competitor length or character counts into quotas.

Google generates title links and snippets from the page. There is no documented character maximum ([title links](https://developers.google.com/search/docs/appearance/title-link), [snippets](https://developers.google.com/search/docs/appearance/snippet)). People-first content is original, complete, and written for an audience that would want it even if they did not arrive from search ([helpful content](https://developers.google.com/search/docs/fundamentals/creating-helpful-content)).

Answer engines still extract from structure. **44.2% of LLM citations come from the first 30% of the text**, and **78.4% of citations that contain a question come from headings** (large-sample citation analysis). Those facts belong in the outline notes. They are not a second outline.

## Inputs

Ask once, in one message, for anything missing. Then proceed.

| Input | Required | Use |
|---|---|---|
| Target search term | Yes | One primary query. If the user gives a list, pick with them. Do not default to the highest-volume term. |
| Working title | Yes | Helps the writer see the idea. It is not the title tag and not the H1. |
| Destination domain | Yes | Existing URLs, internal links, and whether this site can credibly supply the angle. |
| Page type | Yes | `blog post` or `landing page`. |
| Audience | No | Who the reader is and what they already know. Infer from the SERP only when the user has none, and label it an inference. |
| Next action | No | The single thing the page should earn (read next, start a trial, book a call). |
| Competitor URLs | No | Extra pages to read. They do not replace the live results. |

## Process

1. **Lock the inputs.** One query, one domain, one requested page type. State the market. If the user did not name a country, infer it from the domain's country code or language and say so. If there is no signal, use the United States and say so.
2. **Read a live SERP.** Record the organic results you can see, and the features you can see: AI Overview, featured snippet, People Also Ask, video. If volume or difficulty is not returned by a tool, write `unknown` and name the source gap. Do not invent metrics. If two sources disagree, keep both and say which one the decision uses.
3. **Open the top results.** Read enough of the top organic pages to see format, headings, and what they actually cover. Three is the minimum when they fetch. If a URL will not load, say so and work from the pages that did. Do not infer the contents of an unread page.
4. **Check the destination domain.** Search `site:{domain}` for the query and fetch obvious existing paths. If a URL on that domain already targets the term, the mode is `refresh`: what to keep, what to change, what must not move (the URL). If none does, the mode is `new`. Do not brief a second page that cannibalizes the first. If intent is split, brief one intent and name the other page that should serve the rest.
5. **Decide the format in one sentence.** Name the dominant page type in the results and whether this brief follows it. If the user asked for a landing page and the results are articles, or the reverse, say so and still brief the requested type. Record `mixed` when the results themselves are split. Do not switch type in silence.
6. **Write the angle before the outline.** One sentence: what this page will contain that the pages you opened do not. Name the evidence and who supplies it. If the destination site cannot credibly supply it, narrow the angle or say the page should wait.
7. **Fill the eight sections** in `references/brief-template.md`. Outline notes are 1–3 lines per heading: the point of the section, the question it answers, and the evidence to include. Do not draft the paragraphs.
8. **Hand off.** Stop. A human writer or `seo-article-writer` drafts. `on-page-seo-aeo-optimization` runs after a draft exists.

## Frameworks

### Evidence labels

Use these when a claim would otherwise look like a fact. Keep them on the field, not on every sentence.

| Label | Meaning |
|---|---|
| Tool data | A number returned by a named report. Include the report or tool name. |
| Observation | Something you saw on a SERP or a page you opened. |
| Inference | A judgment you made from that evidence: format, angle, outline, audience. |
| User-provided | Audience, goal, or sources the user supplied. |
| Unknown | Not retrieved. Never fill this with a guess. |

Confidence is high, medium, or low. Say what is missing when it is not high.

### What the page type changes

Page type changes the outline notes. It does not change the document.

**Blog post.** The first section answers the query. Later sections cover what most of the opened pages cover (table stakes), then the gap. When the query is a comparison, an alternatives query, or "best X," and that is what the results show, take the heading jobs from `bofu-seo-aeo-strategy` instead of a generic guide. Question-shaped headings are the default where the section answers a real question. A heading can stay a short label ("Pricing") when that label is unambiguous.

**Landing page.** One next action. Outline jobs, in order: the offer and who it is for, the problem, proof, how it works, objections, the same action again. The first screen states the offer. Objection headings can be questions. Do not stretch the page toward a blog length.

**Answer-engine notes, inside the outline, not beside it.** Say where the direct answer sits (first section of a post, first screen of a landing page). Mark which headings are questions a person would actually type. List the entities that must appear because the opened pages or the query require them: product names, numbers, dates, methods. Target natural density around the ~20% seen in heavily cited text. Do not stuff, and do not add a parallel "AEO outline."

### Angle test

The angle fails if it could be pasted onto any of the pages you opened.

Acceptable evidence, with an owner:

- A first-party number, dated, that the ranking pages do not have.
- A screenshot or worked example from using the product or running the process.
- A named person's quote or method.
- A template, calculator, or checklist the reader can use.

"Be more comprehensive," "better structure," and "updated for this year" are not angles unless you name the missing section, the structural job, or the fact that changed.

### Website relevance

Every heading has to be something this domain can actually say. Read the homepage or an equivalent page before you borrow a competitor's section. If the competitor explains a product, a city, or a data set this site does not have, drop that section.

### Title, meta, and slug

Write two title options and one meta description. Report the character count on each.

- Titles: descriptive, one use of the query if it fits, no repeated variants. Preview target about 50–60 characters. Google truncates to the device and may rewrite the title. A few characters outside the range is not a failed brief.
- Meta: an accurate summary and a reason to open the page. Preview target about 135–160 characters. Google rewrites snippets often. Do not withhold the answer to manufacture a click.
- Slug: short, includes the query, no date and no tracking parameters.
- The working title stays in the job section. It is not required to match either title option.

### Links and schema

- Outbound internal links, and the existing pages that should link in after publish. Only URLs you found on the destination domain. If you found none, write that the linking plan is incomplete.
- External sources are named primary pages (the study, the docs, the filing). "A recent study" is an instruction to invent a citation.
- Schema: list the JSON-LD types you actually saw on the pages you opened, then the types this page should use because that content will be visible. Do not add `FAQPage` or `Article` because a template lists them. A landing page that is not an article does not get `Article`.

### Scope

State what the page must cover to finish the reader's job. If you measured length on the pages you opened, report it as context and say whether the count includes navigation and footer. Do not convert that number into a minimum, a maximum, or a padding formula.

## Output format

One markdown document. The writer should not need a second file. Use the headings in `references/brief-template.md`.

```
# Content brief: [working title]

## 1. Job
## 2. Query
## 3. SERP evidence
## 4. Angle
## 5. Outline
## 6. Title, meta, slug
## 7. Links
## 8. Scope and checks
```

Section 5 is headings plus 1–3 line notes. No drafted paragraphs, no sample intro, no FAQ answers written out.

## Example — shape only

**Inputs:** query "what is answer engine optimization," working title "What Is Answer Engine Optimization?," domain `example.com`, page type blog post. No audience supplied.

**Job (compressed):** Mode `new` after a `site:` check finds no URL on that query. Reader inferred from the results: a marketer who has heard the term and needs a definition they can act on. Next action: read the site's AEO guide. Results are articles; the request matches. Market assumed: United States.

**Query:** primary "what is answer engine optimization." Volume `unknown` (no keyword report retrieved). Questions kept as questions from People Also Ask, only the ones observed.

**Angle:** one sentence naming a worked example the company's own pages can show, and who supplies the screenshots. "Cover the topic more completely" would be rejected.

**Outline note (one heading, not a draft):**

> **H2: What is answer engine optimization?**
> Point: define the term in the first sentences. Question: the query itself. Evidence: the definition plus the worked example from the angle. Answer-engine note: this is the first-30% answer.

A landing-page brief for a product query uses the same eight headings. Its outline notes are offer, proof, objections, and one action, not a definition essay.

## Guidelines

- **The brief is done when a writer can start without asking what to cover, what to prove, or where to link.**
- **Open the pages.** A SERP title list is not evidence of what those pages contain.
- **Unknown stays unknown.** A missing volume is better than a remembered one.
- **One angle, specific enough to fail the paste test.**
- **Notes, not prose.** If a section note runs past three lines, you are drafting.
- **Do not pad, and do not set a word-count quota.** Length is a consequence of the questions and the evidence.
- **Do not brief a section this site cannot deliver.**
- **Do not add schema for content the page will not show.**
- **Character counts are preview targets.** Report them. Do not fail the brief for a few characters.
- **People Also Ask is an input.** Use a question as a heading only when that question belongs in this page's job.
- **Stop before the draft.** Implementation of titles, headings, and schema on a written page is `on-page-seo-aeo-optimization`.

## Reference files

- `references/brief-template.md` — the eight-section skeleton, plus the blog and landing notes for the outline. Read it when filling the brief.

## Cross-skill handoffs

- **← seo-keyword-research-intent-mapping:** Receive a chosen query when the brief starts from a keyword map. This skill does not pick the program of queries.
- **← seo-aeo-content-strategy:** Receive a page that the library plan has already decided to create or refresh. Strategy owns the cluster. This skill owns the single page.
- **← bofu-seo-aeo-strategy:** When the results are a comparison, alternatives, or "best" page, use that skill's heading jobs inside section 5.
- **→ seo-article-writer:** Hand off the brief for a draft. The writer does not get permission to invent statistics, quotes, or product facts.
- **→ on-page-seo-aeo-optimization:** Hand off after a draft exists. This skill does not run the pre-publish pass.
- **→ content-effort-audit:** After publish, when the question is whether the page shows visible effort. The angle in section 4 is the claim that audit will look for.
