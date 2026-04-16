# Worked example — Prompt Picker

Generic template: replace bracketed placeholders with the client’s real brand, category, and competitors.

## Seed inputs

| Input              | Example value |
|--------------------|---------------|
| Brand name         | [Your brand] |
| Category           | [e.g. CRM software] |
| Top competitors    | [Competitor A], [Competitor B], [Competitor C] (3–6 names) |
| Business model     | [e.g. B2B SaaS] |
| ICPs / personas    | [Who buys] |
| Core use cases     | [Primary jobs-to-be-done] |
| Differentiators    | [What you want AI answers to emphasize] |
| Objections / fears | [Migration, adoption, pricing, etc.] |

---

## Executive summary (pattern)

- Biggest risk: **early awareness** prompts where buyers describe problems without naming your category.
- Biggest gap: **persona variants** — same funnel stage, different wording by role or company size.
- Most vulnerable: **objection-led** prompts (migration, switching cost, “is it worth it?”).

---

## Prompt architecture (illustrative counts)

| Bucket | Subcategory | Example count |
|--------|-------------|---------------|
| Awareness (non-branded) | Problem / objection / outcome | 8 |
| Consideration (non-branded) | Best-of, use-case, budget | 8 |
| Brand evaluation (branded) | Head-to-head, worth-it, alternatives | 8 |
| Purchase / action | Trial, signup, “start today” | 2–4 |
| Persona variants | By role or segment | 6+ |

---

## Master prompt table — row patterns

Use these **patterns**; fill in `[Your brand]`, `[Category]`, and named competitors only where you intentionally track head-to-head visibility.

| Pattern | Funnel | Notes |
|---------|--------|--------|
| How do I [problem] without [bad outcome]? | Awareness | Tests non-branded discovery |
| Best [category] for [segment] in [year] | Consideration | Category benchmark |
| [Your brand] vs [Competitor A] — which is better for [use case]? | Evaluation | Branded comparison |
| Is [Your brand] worth it for [segment]? | Evaluation | Direct value judgment |
| Affordable [category] alternatives to [incumbent] | Consideration | Price-sensitive, may name one incumbent |
| How do I start a free trial of [Your brand]? | Purchase | Branded action |

---

## Gaps to add later

1. **Verticals** — same prompts for [fintech], [healthcare], etc., once ICP is clear.
2. **Timing** — fiscal year, funding events, seasonality.
3. **Reputation** — “problems with [Your brand]” style (high risk; monitor carefully).
4. **Integrations** — “[category] that works with [system you integrate with].”
5. **Geo** — “best [category] in [country/region].”
