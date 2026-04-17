---
name: paid-search-ads-playbook
description: "Google and Microsoft paid search planning: structure, keywords, match types, negatives, RSAs, bidding lens, and landing-page alignment for conversion-focused spend."
---

## When to Activate

Use this skill for Google Ads (Microsoft Ads analogs) planning: structure, keywords, match types, negatives, RSAs, bidding lens, and landing-page alignment. This is **paid search**, not organic SEO—intent is conversion and efficient spend, not rankings.

## First Questions

1. **Business & offer** — What sells, margin, and primary conversion (lead, purchase, trial)?
2. **Geo & language** — Countries, cities, languages?
3. **Budget & goal** — Daily/monthly cap, target CPA/ROAS (or learning phase expectations)?
4. **Funnel stage** — Brand, non-brand, competitor, remarketing?
5. **Existing assets** — Live account structure (if any), feed/SAIQ, conversion tags health?
6. **Landing pages** — URLs per offer; mobile speed and message match?

---

## Account & Campaign Structure

- **Separation of intent**: Brand, generic non-brand, competitor, and remarketing belong in distinct campaigns (or clear ad groups with budget control at campaign level).
- **Naming**: Consistent convention (geo | network | intent | offer).
- **Budget**: Avoid dilution—fewer strong campaigns beat many starved ones early.
- **Networks**: Search vs Performance Max / Display—do not mix goals blindly; call out when PMax or Display changes assumptions.

---

## Keywords & Match Types

- **Match types** (modern Google): Exact and Phrase are precision tools; Broad requires strong negatives and monitoring.
- **Themes**: One tight theme per ad group (5–15 closely related keywords, not kitchen-sink lists).
- **Cannibalization**: Same keyword in multiple ad groups/campaigns causes auction confusion—consolidate or use negatives to sculpt.
- **Expansion**: Mine search terms reports (conceptually); add winners as keywords, losers as negatives.

---

## Negative Keywords

- Build **shared negative lists** (geo exclusions, job seekers, free-only intent, irrelevant industries).
- **Ad-group-level negatives** to sculpt traffic between sibling groups.
- Review weekly in early phases; stale negatives hide volume.

---

## Responsive Search Ads (RSAs)

- **15 headlines / 4 descriptions** where possible; pin only when legally or brand-required (pinning reduces combinations).
- **Coverage**: At least 3 distinct value props, 2 CTAs, 1 keyword-rich headline, 1 trust/credibility.
- **Policy**: Avoid superlatives without proof; medical/financial sensitivity.

---

## Bidding & Goals (Framing, Not Live Optimization)

- **Learning**: Major changes reset learning; batch edits.
- **tCPA / tROAS**: Need conversion volume; suggest thresholds honestly.
- **Manual / eCPC**: When automation lacks data.
- **Portfolio**: Align bid strategy with actual conversion lag and value rules.

---

## Conversion Tracking & Quality

- **Primary vs secondary** conversions—avoid optimizing on weak proxies.
- **Enhanced conversions** / consent—note when relevant.
- **Landing page**: Message match headline ↔ ad; one clear CTA; speed and mobile UX.

---

## Tools and data sources (keyword/API + page read)

- **Volume & CPC signals**: `seo_search_volume`, `seo_keyword_ideas`, `seo_related_keywords`, `seo_keyword_suggestions` for seeds and expansion.
- **Paid estimates**: `seo_ad_traffic_by_keywords` for impression/click/cost scenarios when comparing bid levels.
- **SERP context**: `seo_serp_analysis` when auction insight helps (ads + organic layout).
- **Landing pages**: `web_scrape` to audit copy, CTAs, and offer clarity—never guess page content without a URL.

Be explicit: tool outputs are **estimates**; validate in the ad platform.

---

## Quality Gate (before final deliverable)

- [ ] Campaign/ad group map matches intent separation (brand vs non-brand vs competitor vs RLSA)
- [ ] Each ad group has a tight theme; no duplicate keyword conflicts across groups
- [ ] Match type choices justified; broad groups paired with negative strategy
- [ ] Negative keyword lists proposed (shared + ad-group sculpting)
- [ ] RSAs: enough unpinned assets; pins only where required
- [ ] Bidding lens matches data volume and business goal
- [ ] Conversion tracking assumptions stated; gaps flagged
- [ ] Landing page message match called out per major ad group
- [ ] Next 7-day action list for the user (what to build first in-platform)
