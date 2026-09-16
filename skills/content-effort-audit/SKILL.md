---
name: content-effort-audit
description: "Score visible effort evidence on specified URLs. Use when the user asks for a Content Effort audit, rater-style effort scoring, low-effort AI content review, or whether a page would look Lowest under QRG §3.2. Distinct from library keep/refresh/prune (seo-aeo-content-strategy) and from on-page ski-ramp implementation (on-page-seo-aeo-optimization)."
---

# Content Effort Audit

Score **visible effort** on finished URLs. Production hours, cost, and process do not count unless they left residue a stranger can point at.

## Why this matters

Google’s Search Quality Evaluator Guidelines judge Main Content quality by **effort, originality, and talent or skill**, plus accuracy on informational/YMYL pages. 2025 updates made “little to no effort, originality, and added value” a **Lowest** path, including AI paraphrase and scaled content abuse. Generative AI **alone** does not determine the rating.

Three evidence layers stay separate:

1. **QRG effort** — documented rater criterion (primary source).
2. **Leaked `contentEffort`** — reported LLM estimate for article pages. Mapping it to QRG is **inference**, not a Google statement.
3. **People-first questions** — original information, first-hand expertise, not just rewriting sources.

Do not brief “Content Effort is a confirmed ranking factor.” Operate as if visible effort is industrially scored. Label the leak as speculation.

Cross-links: library keep/refresh/prune → `seo-aeo-content-strategy`. Implementing effort adds on the page → `on-page-seo-aeo-optimization`.

## Process

1. **Classify page purpose.** Recipe, calculator, review, explainer, clip, documentary — the bar is relative to purpose, not word count.
2. **Gather visible evidence only.** First-party facts, original artifacts, synthesis, craft, curation choices, added value vs substitutes. Ignore time logs, “human review” checkboxes, and origin stories that are not on the URL.
3. **Score six signals, 0–2 each (0–12 total).** Use `references/vee-rubric.md`. Do not invent Google’s weights.
4. **Map to QRG language.** 0–3 Lowest-risk evidence, 4–6 Low, 7–9 High, 10–12 Highest-evidence. Then apply the purpose modifier.
5. **Recommend specific effort adds.** A zero on first-party information is a measurement or primary document, not “write more.” See the rubric’s add column.
6. **Flag site-level scaled low-effort** only after sampling 3+ URLs that share a skeleton. One thin URL is a page problem.
7. **Hand off implementation** to on-page SEO/AEO for ski-ramp, titles, and schema. This skill stops at the effort verdict.

## Output

Per URL:

| Field | Required |
|---|---|
| Purpose class | Yes |
| Six-signal table (0–2) | Yes |
| Total /12 and band | Yes |
| QRG-aligned risk (Lowest / Low / High evidence) | Yes |
| Missing-evidence list | Yes |
| Prioritized effort adds | Yes |
| Leak column labeled inference | Yes |
| Scaled low-effort flag | Optional, after 3+ URL sample |

Worked pair: `references/worked-examples.md`.

## Rules

- Visible effort ≠ production effort.
- Origin (human vs AI) ≠ rating.
- Word count is not a signal.
- Do not coin a fake “Google Content Effort score.”
- Do not collapse this audit into E-E-A-T or keep/refresh/prune.
