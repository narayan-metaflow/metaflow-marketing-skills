
# Meta Audience Strategy — Complete Guide

Detailed guidance for Core, Custom, Lookalike, and Advantage+ audience targeting on Meta Ads.

## Table of Contents

1. [Audience Types Overview](#audience-types-overview)
2. [Core Audiences (Interest/Demographic)](#core-audiences)
3. [Custom Audiences](#custom-audiences)
4. [Lookalike Audiences](#lookalike-audiences)
5. [Advantage+ Audience](#advantage-audience)
6. [Audience Strategy by Funnel Stage](#funnel-strategy)
7. [Exclusion Strategy (2025)](#exclusion-strategy)
8. [Audience Sizing Guidelines](#audience-sizing)

---

## Audience Types Overview

| Type | What It Is | Best For | Signal Quality |
|------|-----------|----------|---------------|
| Core | Demographics, interests, behaviors | Cold prospecting starting point | Low (Meta's estimates) |
| Custom | Your data: website, CRM, engagement | Retargeting, warm audiences | High (first-party data) |
| Lookalike | Algorithm-expanded from seed audience | Scaled prospecting | Medium-High (depends on seed) |
| Advantage+ | Algorithm-driven with hints | Broadest reach, mature accounts | Highest (full algorithm control) |
| Broad (no targeting) | Everyone in the country | Mature accounts with strong signals | Highest (algorithm decides everything) |

**2025 trend:** Meta's algorithm increasingly outperforms manual targeting in accounts with strong Pixel + CAPI data. Start with more control, graduate to broader targeting as signals improve.

---

## Core Audiences

Demographics, interests, and behaviors defined by Meta's data.

**Use as:**
- Starting point for new accounts with no first-party data
- "Suggestions" for Advantage+ audience (hints, not restrictions)
- Testing hypotheses about audience segments

**Best practices:**
- Layer demographics + interests for specificity (but don't over-narrow)
- Test 2-3 interest-based ad sets in parallel against broad
- Monitor performance decay — interests can become less relevant over time

**Critical 2025 change:** Detailed targeting exclusions removed March 31, 2025. You can no longer exclude specific interests. Shift to customer list exclusions instead (see Exclusion Strategy below).

---

## Custom Audiences

Built from your first-party data. Highest quality targeting available.

### Website Custom Audiences

| Audience | Recency | Use For |
|----------|---------|---------|
| All visitors (180 days) | Cold-warm | Broad retargeting |
| All visitors (30 days) | Warm | Active retargeting |
| All visitors (14 days) | Hot | Urgent retargeting |
| Page-specific visitors | Varies | Intent-based (visited pricing page, product page) |
| Top 25% by time spent | Varies | High-engagement visitors |
| Visitors who didn't convert | 7-30 days | Cart/form abandoners |

**Recency matters:** 14-day visitors are significantly warmer than 90-day visitors. Bid more aggressively on shorter windows.

### CRM / Customer List Audiences

| List Type | Match Rate | Use For |
|-----------|-----------|---------|
| Email list (all customers) | 40-70% typical | Exclusion from prospecting, upsell campaigns |
| High-value customers (top 10-20%) | 40-70% typical | Lookalike seed (best seed quality), upsell |
| Recent purchasers | 40-70% typical | Exclusion from remarketing, cross-sell |
| Leads (not yet customers) | 40-70% typical | Lead nurturing campaigns |

**Match rate optimization:** Send more identifiers (email + phone + name + city) for higher match rates.

**Refresh cadence:** Update CRM lists at minimum monthly. Weekly for high-volume accounts.

### Engagement Custom Audiences

| Source | Options | Notes |
|--------|---------|-------|
| Video viewers | 25%, 50%, 75%, 95% viewed | 50%+ viewers = strong retargeting signal |
| Facebook/Instagram page | Engagers, profile visitors | Warm but broad |
| Lead form | Opened, submitted | Opened but didn't submit = high-intent retargeting |
| Shopping | Viewed, added to cart, purchased | Product-specific retargeting |
| Instagram account | Engagers, profile visitors | Instagram-specific warm audience |
| Events | Responded, engaged | Event-specific retargeting |

**Critical:** Engagement audiences only capture data from the date they're created. They are NOT retroactive. Build them proactively before you need them.

---

## Lookalike Audiences

Meta finds users who resemble your seed audience.

### Seed Quality Hierarchy (highest to lowest)

| Seed Source | Quality | Why |
|------------|---------|-----|
| Purchase event audience | Highest | Direct signal of who buys |
| High-value purchaser list (top 10% by spend) | Highest | Best customers = best signal |
| All purchaser list | Very high | Broader buyer signal |
| Lead/signup audience | High | Conversion signal (but not revenue signal) |
| Engaged video viewers (75%+) | Medium | Interest signal, not purchase signal |
| All website visitors | Weakest | Broad, includes bouncers and accidental clicks |

**Always use your strongest seed.** A 1% lookalike from top 10% purchasers will dramatically outperform a 1% lookalike from all website visitors.

### Percentage Guidelines

| Percentage | Audience Size | Use When |
|-----------|--------------|----------|
| 1% | Smallest, most similar | Default starting point. Tightest match |
| 2-3% | Moderate expansion | After 1% is saturated (frequency rising) |
| 5% | Broad expansion | Larger countries, need more reach |
| 5-10% | Very broad | Smaller countries need larger % for sufficient reach |
| 10%+ | Very broad | Rarely recommended — loses resemblance to seed |

**Country-level creation:** Create separate lookalikes per country. A US lookalike and UK lookalike will perform better than a multi-country lookalike because user profiles differ by market.

**Minimum seed size:** 1,000 users in the source audience. Larger seeds (5,000+) give Meta more data to find patterns.

---

## Advantage+ Audience

Meta's most algorithm-driven targeting. You provide "suggestions" (demographics, interests), but the algorithm can expand beyond them.

**How it works:**
1. You add audience suggestions (age, gender, interests, lookalikes)
2. Meta starts with your suggestions but expands to find converters anywhere
3. Over time, algorithm learns who converts and optimizes accordingly

**When to use:**
- Accounts with strong Pixel + CAPI data (EMQ 6.0+)
- After testing narrower audiences and finding ceiling
- When manual targeting is underperforming or audience is exhausted

**When NOT to use:**
- New accounts with minimal tracking data
- When you must restrict to specific demographics (regulated industries, Special Ad Categories)
- When testing specific audience hypotheses

**Best practice:** Run Advantage+ alongside a manually targeted ad set for comparison. Many mature accounts find Advantage+ outperforms manual targeting.

---

## Funnel Strategy

### Top of Funnel (Prospecting — 60-70% of budget)

| Approach | Audience | Creative |
|----------|----------|---------|
| Broad prospecting | Advantage+ or broad targeting (country-level, age/gender only) | Problem-aware, attention-grabbing, UGC |
| Lookalike prospecting | 1-3% lookalike from purchasers or high-value customers | Benefit-driven, social proof |
| Interest prospecting | 2-3 interest-based ad sets (for testing) | Interest-specific messaging |

**2025 best practice:** Combine warm + cold audiences in single ad sets. The algorithm prioritizes high-intent users first, then expands. This speeds learning and stabilizes delivery.

### Middle of Funnel (Warm — covered by algorithm in many cases)

| Approach | Audience | Creative |
|----------|----------|---------|
| Engager retargeting | 50%+ video viewers, page engagers, post engagers | Deeper value content, testimonials |
| Website visitors | 15-60 day visitors who didn't convert | Product-specific, social proof, FAQ |

**Note:** In consolidated campaign structures, the algorithm often handles MOFU automatically by serving different creative to warm vs cold users within the same ad set.

### Bottom of Funnel (Retargeting — 20-30% of budget)

| Approach | Audience | Creative |
|----------|----------|---------|
| Hot retargeting | 0-14 day visitors, cart abandoners, form openers | Urgency, offers, reminders |
| Dynamic retargeting | Catalog-based, showing viewed/carted products | Dynamic product ads with personalized content |

**Retargeting minimum audience:** 1,000 users. Below this, delivery will be unstable and CPMs will spike.

---

## Exclusion Strategy

**Post-March 2025:** Detailed targeting exclusions are gone. Use these methods instead:

### Customer List Exclusions (primary method)

| Exclusion | Apply To | Why |
|-----------|---------|-----|
| All past purchasers | Prospecting campaigns | Don't pay to acquire existing customers |
| Recent purchasers (30 days) | Retargeting campaigns | Avoid annoying recent buyers |
| High-frequency purchasers | Prospecting | Already loyal — don't waste acquisition spend |
| Current subscribers | Prospecting | Already converted |
| Employees | All campaigns | Don't show ads to your own team |

### Time-Based Exclusions

| Exclusion | How |
|-----------|-----|
| Recent converters | Exclude 7-30 day converters from retargeting |
| Recent website visitors from retargeting | Separate into recency buckets (0-7, 8-14, 15-30) |

### Platform-Based Exclusions

| Exclusion | How |
|-----------|-----|
| Existing app users | Exclude from install campaigns |
| Existing page followers | Exclude from awareness campaigns (if goal is net-new) |

**Note:** Meta's algorithm often deprioritizes recent converters automatically in 2025, but explicit exclusions are still best practice for cost control.

---

## Audience Sizing Guidelines

| Campaign Type | Minimum Size | Optimal Size | Notes |
|--------------|-------------|-------------|-------|
| TOF Prospecting | 200,000+ | 1M+ | Broad enough for algorithm to optimize |
| Lookalike (1%) | Varies by country | US: ~2.3M | Auto-calculated by Meta |
| Retargeting | 1,000 minimum | 10,000+ | Below 1K = unstable delivery, high CPMs |
| Custom audience (CRM) | 1,000 minimum | 5,000+ | Larger = better match + delivery |
| ASC | Country-level | Full country | No audience size control |

**Too small:** Audience under 1,000 = unstable. Under 10,000 = limited optimization. Under 200,000 = difficult for TOF.

**Too large isn't bad in 2025.** Broad audiences with strong signals often outperform narrow audiences. The algorithm does the targeting — you provide the creative that resonates.
