---
name: meta-ads-playbook
description: "Meta ads planning playbook: objectives, structure, audiences, creative, testing cadence, Pixel/CAPI measurement. Does not assume live Marketing API access."
---

## When to Activate

Use this skill for Meta ads planning: objective selection, account structure, audiences, creative formats, copy, testing cadence, and measurement concepts (pixel, CAPI). **Live Meta Marketing API access is not assumed** unless the user has connected integrations—use `llm_call` (e.g. Perplexity) for policy and trend research and `web_scrape` for URLs the user provides.

## First Questions

1. **Offer & conversion** — Purchase, lead, app install, engagement? Value per conversion?
2. **Geo & placements** — Countries; Feed, Stories, Reels, RHS; any placement exclusions?
3. **Budget & duration** — Daily cap, flight dates, learning phase tolerance?
4. **Creative assets** — Video UGC, static, catalog/DPAs, existing hooks?
5. **Data** — Pixel/CAPI status, offline conversions, lists (customer file, engagement)?
6. **Brand constraints** — Disclaimers, restricted categories, tone?

---

## Objectives & Structure

- Match **campaign objective** to true outcome (Sales / Leads / Traffic / Awareness)—avoid optimizing for clicks when you need purchases.
- **ASC / Advantage+ shopping** vs manual: spell out tradeoffs (creative control vs automation).
- **Consolidate** when learning is fragmented; **separate** when budgets or offers truly differ.

---

## Audiences

- **Prospecting**: Broad + creative feed, or interest/stacked signals when niche.
- **Remarketing**: Site, engagers, customer lists—frequency caps and creative refresh.
- **Lookalikes** (where available): Seed quality matters more than percentage size.
- **Exclusions**: Purchasers, low-intent site sections, employees.

---

## Creative

- **Formats**: Single image, carousel, collection, Reels, short video—match platform norms (safe zones, thumb-stop in first 2s).
- **Angles**: Pain, outcome, social proof, objection handling, urgency (honest)—rotate 3–5 concepts.
- **Copy**: Primary text variants, headline, description; CTA button alignment with landing promise.
- **Fatigue**: Plan refresh cadence and naming for tests.

---

## Testing

- **Hypothesis**: One clear variable (audience vs creative vs landing)—avoid multivariate soup.
- **Duration & spend**: Enough conversions per cell; don’t call winners on noise.
- **Document**: What was tested, result, next iteration.

---

## Measurement & Privacy

- **Pixel + CAPI**: Redundancy for web events; server-side helps iOS/signal loss—conceptual checklist only unless user provides integration status.
- **Attribution**: Call out that Meta reporting ≠ last-click GA; compare definitions when user has both.
- **Consent**: Mention when ads touch EU/UK and consent mode matters.

---

## Tools and data sources

- **`llm_call`**: Current policy questions, format specs, competitor **public** positioning research—do not fabricate metrics.
- **`web_scrape`**: User-supplied landing pages, help articles, public policy pages.

If the user connects Meta via app integrations, Composio tools may apply—**never guess** tool slugs; follow integration search workflow when available.

---

## Quality Gate (before final deliverable)

- [ ] Objective matches business outcome and conversion definition
- [ ] Campaign structure maps to prospecting vs retargeting (or catalog) clearly
- [ ] Audience strategy stated with exclusions
- [ ] Creative matrix: ≥3 angles × stated formats; hooks for video
- [ ] Primary text / headline variants provided or templated
- [ ] Test plan: hypothesis, budget split, minimum runtime guidance
- [ ] Measurement checklist (pixel/CAPI/offline) with gaps flagged
- [ ] Limitations stated: no live account data unless user provides exports or integrations
