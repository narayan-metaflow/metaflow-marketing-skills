# Brief template

One document. Same eight headings every time. Page type changes the notes under section 5 only.

Fill every heading. If a field was not retrieved, write `unknown` and the source gap. Label tool data, observation, inference, and user-provided input where a reader could mistake a judgment for a measurement.

```
# Content brief: [working title]

## 1. Job

- Working title:
- Query:
- Market (state the assumption):
- Requested page type: blog post | landing page
- Mode: new | refresh
- If refresh, existing URL (do not change it):
- Reader: who they are, what they already know, what they need to do next. One paragraph.
- Business purpose and single next action:
- Format note: dominant type in the results, and why this brief still uses the requested type if they differ. Use "mixed" when the results are split.

## 2. Query

- Primary:
- Volume / difficulty: value or `unknown`. Name the source.
- Supporting terms this same page can satisfy:
- Questions observed (People Also Ask, related searches). Keep them as questions:

## 3. SERP evidence

Features observed (omit any you did not see): AI Overview, featured snippet, People Also Ask, video.

| URL | Fetched? | Page type | Covers | Misses |
|---|---|---|---|---|
| | yes / failed | | | |

Table stakes (present on most of the pages that fetched):

Gaps (each tied to a URL above):

## 4. Angle

One sentence: what this page will contain that the pages above do not.

Evidence and who supplies it:

If this domain cannot supply that evidence, narrow the angle or say the page should wait.

## 5. Outline

**H1:**

For each H2 (and H3 only when the section has real parts), 1–3 lines:

- Point of the section
- Question it answers
- Evidence to include
- Answer-engine note, when it changes the section: where the direct answer sits, whether this heading is a question a person would type, entities that must appear

Do not draft the paragraph.

## 6. Title, meta, slug

| Element | Option | Characters |
|---|---|---|
| Title A | | |
| Title B | | |
| Meta | | |
| Slug | | |

Preview targets, not pass/fail gates: title about 50–60 characters, meta about 135–160. Query once if it fits. No stuffing.

## 7. Links

Outbound (found on the destination domain):

| URL | Suggested anchor | Section |
|---|---|---|

Inbound after publish (existing pages that should link here):

| URL | Suggested anchor |
|---|---|

If no real URLs were found, write: linking plan incomplete.

External sources (named primary pages):

| Claim the writer must support | Source | URL |
|---|---|---|

## 8. Scope and checks

Must cover:

Length of pages opened, as context only (say whether nav and footer were included). Not a quota.

Schema types seen on the pages opened:

Schema types this page should use, because that content will be visible:

Acceptance checks:

- [ ] The opening answers the query or states the offer
- [ ] Every heading in section 5 is present, or the change is explained
- [ ] Every number has a named source and a date
- [ ] The evidence named in section 4 is real
- [ ] Internal links use URLs that exist on the destination domain
- [ ] Nothing was added to hit a word count
```

## Outline notes by page type

Use these as the jobs inside section 5. Drop a job the results do not support. Do not add a job this domain cannot deliver.

### Blog post

1. First section answers the query. That is where the direct answer sits.
2. Sections for table stakes, in the order a reader needs them.
3. The section that carries the angle (the gap).
4. A short close that restates the answer and the next action. This is a heading with a job, not a drafted conclusion.

When the results are a comparison, alternatives, or "best X" page, replace this list with the heading jobs in `bofu-seo-aeo-strategy`.

### Landing page

1. Offer and who it is for. The first screen states both, plus the single action.
2. Problem the offer addresses.
3. Proof (customers, numbers, or a worked example the site can show).
4. How it works.
5. Objections, as questions where the question is real.
6. The same action again.

Do not add a definition essay, a pillar-length background, or `Article` schema to make the page look like a post.
