---
name: meta-ads-campaign-builder
description: "Build and configure Meta Ads campaigns across all ODAX objectives — from objective selection through audience strategy, placement, budget, and creative launch."
---

## Process

1. **Define business goal** — Sales, leads, app installs, awareness, or traffic
2. **Select objective and conversion location** — Use the ODAX Selector below
3. **Choose campaign structure** — ASC vs manual (see Decision Tree)
4. **Configure ad set** — Audience, placements, budget, schedule, optimization goal
5. **Build creative** — Ad format, copy, media, CTA
6. **Launch and protect learning phase** — No major changes for 5-7 days

Read `references/meta-campaign-types.md` for detailed setup per objective × conversion location.
Read `references/audience-strategy.md` for complete audience targeting guidance.

## ODAX Objective Selector

**Meta's 6 objectives (ODAX system):**

| Objective | Use When | Optimize For | Typical Conversion Location |
|-----------|---------|-------------|---------------------------|
| **Awareness** | Brand reach, video views, store traffic | Reach, Ad Recall Lift, ThruPlay | N/A (upper funnel) |
| **Traffic** | Driving website/app visits | Link Clicks, Landing Page Views | Website, App |
| **Engagement** | Post engagement, video views, messages | Post Engagement, Video Views, Messages | Facebook, Instagram, Messenger |
| **Leads** | Lead form submissions, calls, sign-ups | Leads, Conversions | Instant Forms, Website, Messenger, Calls |
| **App Promotion** | App installs, app engagement | App Installs, App Events | App (iOS/Android) |
| **Sales** | Purchases, catalog sales, ROAS-driven | Conversions, Value, ROAS | Website, App, Shop, Messenger |

**Common mistake:** Using Traffic when you want Sales or Leads. Traffic optimizes for clicks, not conversions. Meta's algorithm will find clickers, not buyers. Always optimize for the deepest meaningful conversion event.

**Objective alignment rule:** If the goal is revenue → Sales. If the goal is leads → Leads. Only use Traffic if you genuinely just want page visits (rare for performance marketers).

## Campaign Structure Decision Tree

**Q1: Ecommerce with 100+ conversions/week?**
- Yes → **Advantage+ Shopping Campaigns (ASC)** — typically reduces cost per purchase ~12% vs manual
- No → Manual campaign structure

**Q2: How should the manual account be structured?**

Use the **simplified 3-campaign architecture** (2025 best practice):

| Campaign | Purpose | Audience | Budget Share |
|----------|---------|----------|-------------|
| **1. Prospecting** | New customer acquisition | Broad / Lookalikes / Advantage+ | 60-70% |
| **2. Retargeting** | Convert warm audiences | Website visitors, engagers, cart abandoners | 20-30% |
| **3. Testing** | Test new creative, audiences, offers | Varies per test | 10% |

**Why consolidated?** Meta's algorithm in 2025 performs better with fewer, larger ad sets that accumulate 50+ conversions/week. Hyper-segmentation starves ad sets of data.

## ASC (Advantage+ Shopping) Setup

| Setting | Configuration |
|---------|-------------|
| Targeting | Country-level only (no interest/behavior targeting) |
| Customer ratio | Set existing vs new customer budget split (e.g., 70% new / 30% existing) |
| Creative | Up to 150 ads per campaign (use this ceiling strategically) |
| Catalog | Required for dynamic product ads |
| Budget | Enough for 50+ conversions/week minimum |
| Pixel + CAPI | **Must be strong** — ASC relies entirely on algorithm learning from signals |

**When ASC works best:** Ecommerce with 100+ conversions/week, strong Pixel + CAPI, diverse creative library, sufficient budget.

**When to skip ASC:** Low conversion volume (<50/week), weak tracking, need granular audience control, non-ecommerce.

## Ad Set Configuration

### Budget & Bid Strategy

| Strategy | When to Use | How It Works |
|----------|------------|-------------|
| **Highest Volume** (default) | No specific CPA/ROAS target, want maximum results | Meta spends full budget to get most conversions |
| **Cost Cap** | Have a target CPA | Sets maximum average CPA — may underspend if target is tight |
| **Bid Cap** | Have a hard maximum per-result bid | Caps individual auction bids — most restrictive |
| **ROAS Goal** | Have a target ROAS (ecommerce) | Optimizes for return on ad spend target |

**Budget sufficiency rule:** Each ad set needs enough budget for 50+ conversions/week (optimal) or 25+ (minimum). If your target CPA is $50, that means $250-$350+/week per ad set minimum.

**60/30/10 allocation:**
- 60% to best-performing audiences/ad sets
- 30% to scaling tests
- 10% to experimental

**Scaling rule:** Increase budgets by 20% increments maximum. Larger jumps risk resetting learning phase.

### Placement Strategy

| Approach | When | Configuration |
|----------|------|--------------|
| **Advantage+ Placements** (default) | Most campaigns | Let Meta optimize across all placements. Recommended default |
| **Manual placements** | Specific creative constraints | Select specific placements (Feed only, Reels only, etc.) |

**Monitor placement performance:** Even with Advantage+, review placement-level ROAS. If Audience Network drives clicks but no conversions, consider excluding it.

**Creative specs by placement:**
- Feed: 4:5 vertical (best) or 1:1 square
- Stories/Reels: 9:16 full vertical
- Right Column: 1:1 square
- In-stream video: 16:9 landscape
- 4:5 vertical outperforms 1:1 by ~15% in Feed (Billo data)

### Attribution Windows

| Window | Best For |
|--------|---------|
| 7-day click, 1-day view (default) | Most campaigns. Standard attribution |
| 1-day click | Short purchase cycles, low-ticket items |
| 7-day click | High-ticket, longer consideration (removes view-through noise) |

**Critical (October 2025):** `7d_view` and `28d_view` windows removed from Insights API. Don't build reporting dependencies on these.

## Ad Creative Setup

### Format Selection

| Format | Best For | Specs |
|--------|---------|-------|
| Single image | Simple messaging, product shots | 1080x1350 (4:5), <30MB |
| Single video | Storytelling, demos, UGC | 4:5 or 9:16, 15-30 sec, <4GB |
| Carousel | Multiple products, feature walkthrough | Up to 10 cards, 1:1 or 4:5 |
| Collection | Ecommerce catalog browsing | Cover image/video + catalog products |
| Reels-native | Mobile-first vertical video | 9:16, 15-60 sec |

### Ad Copy Structure

| Element | Guideline |
|---------|----------|
| Primary text | Under 125 characters (truncation point). Hook → benefit → CTA |
| Headline | Under 40 characters. Clear value prop or offer |
| Description | Under 30 characters. Supporting detail |
| CTA button | Match objective: Shop Now, Learn More, Sign Up, Get Offer |

**Copy framework:** Hook (stop the scroll) → Problem/Pain → Solution/Benefit → CTA

**Video rules:**
- First 3 seconds = hook (determines if user watches)
- Bold, high-contrast captions mandatory (85% of Facebook videos watched without sound)
- Front-load the value proposition
- Graphic CTAs outperform text-only CTAs

For creative testing frameworks, use the **meta-ads-creative-engine** skill.

## Output Format

```
## Meta Ads Campaign Build Plan

### Campaign Overview
- Campaign name: [naming convention]
- Objective: [ODAX objective]
- Conversion location: [Website/App/Instant Forms/etc.]
- Structure: [ASC / Manual 3-campaign / Custom]
- Total monthly budget: $[X]

### Ad Set Configuration
| Ad Set | Audience | Budget | Optimization | Attribution |
|--------|----------|--------|-------------|-------------|
| [name] | [targeting] | $[X]/day | [event] | [window] |

### Audience Strategy
- Prospecting: [approach]
- Retargeting: [approach]
- Exclusions: [who to exclude]

### Creative Plan
| Ad | Format | Hook | CTA | Landing Page |
|----|--------|------|-----|-------------|
| [name] | [format] | [hook concept] | [CTA] | [URL] |

### Launch Checklist
- [ ] Pixel + CAPI verified (EMQ ≥ 6.0)
- [ ] Conversion event configured and firing
- [ ] Audience exclusions set (existing customers from prospecting)
- [ ] Creative meets spec requirements (4:5 vertical, captions on video)
- [ ] Budget sufficient for 50+ conversions/week/ad set
- [ ] Attribution window set (7d click / 1d view default)
- [ ] No changes planned for 5-7 day learning phase
```

## Example

**Input:** "I sell premium candles DTC, average order value $45, target CPA $18. I'm spending $4K/month on Meta. Currently have Pixel + CAPI active with 7.2 EMQ. Getting about 55 purchases/week. Want to set up a proper campaign structure."

**Output:**

## Meta Ads Campaign Build Plan

### Campaign Overview
- Objective: **Sales** (Purchase optimization)
- Conversion location: Website
- Structure: **ASC + Manual retargeting** — 55 purchases/week qualifies for ASC. Run ASC for prospecting + manual for retargeting
- Total monthly budget: $4,000

### Campaign Architecture

**Campaign 1: ASC — Prospecting (70% = $2,800/mo / ~$92/day)**
| Setting | Configuration |
|---------|-------------|
| Customer ratio | 80% new / 20% existing |
| Creative | 15-20 best-performing ads (diverse formats: static, video, carousel) |
| Catalog | Connected — enable dynamic product ads |
| Optimization | Purchase |
| Budget | $92/day (enough for ~35+ purchases/week at $18 CPA) |

**Campaign 2: Manual — Retargeting (20% = $800/mo / ~$26/day)**
| Ad Set | Audience | Budget | Optimization |
|--------|----------|--------|-------------|
| Hot retarget | Website visitors 0-14 days + cart abandoners | $18/day | Purchase |
| Warm retarget | Website visitors 15-60 days + engagers (50%+ video viewers) | $8/day | Purchase |

Exclude: past purchasers (30 days) from both ad sets to avoid wasted spend.

**Campaign 3: Testing (10% = $400/mo / ~$13/day)**
| Ad Set | Purpose | Budget | Duration |
|--------|---------|--------|----------|
| Creative test | Test 2-3 new creative concepts against control | $13/day | 7-10 days per test |

### Audience Strategy
- **Prospecting (ASC):** Country-level (US). Algorithm handles targeting using your strong Pixel + CAPI signals (7.2 EMQ — solid)
- **Retargeting:** Website visitors by recency (14-day warmer than 60-day), cart abandoners, video engagers (50%+ view)
- **Exclusions:** Upload customer purchase list → exclude from prospecting. Exclude 30-day purchasers from retargeting. Note: detailed targeting exclusions removed March 2025 — use customer list suppression instead

### Creative Plan
| Ad | Format | Hook | CTA | Placement |
|----|--------|------|-----|-----------|
| Hero product | 4:5 static image | Lifestyle shot — candle in styled room | Shop Now | Feed, Stories |
| UGC unboxing | 9:16 video (20 sec) | "This is the best candle I've ever owned" | Shop Now | Reels, Stories |
| Scent carousel | Carousel (5 cards) | "Find your signature scent" — one scent per card | Shop Now | Feed |
| Social proof | 4:5 static | Customer quote + product image | Shop Now | Feed |
| Process video | 9:16 video (15 sec) | "Hand-poured in small batches" — behind-the-scenes | Shop Now | Reels |

**Copy example (UGC ad):**
- Primary text: "This candle completely transformed my living room. The scent lasts 60+ hours." (89 chars)
- Headline: "Premium Hand-Poured Candles"
- CTA: Shop Now

### Launch Checklist
- [x] Pixel + CAPI verified (EMQ 7.2 — above 6.0 threshold)
- [ ] Purchase event configured as primary conversion
- [ ] Customer list uploaded → excluded from ASC prospecting
- [ ] 30-day purchaser exclusion on retargeting ad sets
- [ ] All creative in 4:5 vertical (Feed) and 9:16 (Reels/Stories)
- [ ] Video ads have captions (85% watch without sound)
- [ ] ASC budget = $92/day (allows ~35+ purchases/week at $18 CPA)
- [ ] No changes for 5-7 day learning phase after launch

## Guidelines

- **Don't use Traffic when you want Sales.** This is the most common Meta Ads mistake. Traffic finds clickers. Sales finds buyers. Always optimize for the deepest meaningful conversion.
- **Don't launch with weak tracking.** If EMQ is below 6.0 or CAPI isn't active, fix tracking first. Use the **meta-ads-tracking-setup** skill before building campaigns.
- **Don't hyper-segment audiences.** 2025 Meta algorithm prefers fewer, larger ad sets with 50+ conversions/week. Combine warm + cold in single ad sets. Let the algorithm sort.
- **Don't skip customer exclusions.** Detailed targeting exclusions were removed March 2025, but customer list exclusions still work and are essential. Upload your buyer list and exclude from prospecting.
- **Don't ignore learning phase.** 5-7 days minimum. Changes during learning (budget >20%, audience, creative swaps, bid changes) reset the clock. Advertisers under 20% learning spend see up to 68% lower CPA.
- **Don't forget captions on video.** 85% of Facebook videos are watched without sound. No captions = invisible message.
- **Don't exceed 150 ads in ASC.** Hard ceiling. Curate your best creative, don't dump everything in.
- **Instant Experience change (June 2025):** No longer counts as a landing page view. Don't include in funnel metrics.
- **Offline Conversions API (May 2025):** Discontinued. If someone needs offline conversion tracking, direct to CAPI with `action_source: physical_store` or `system_generated`.
- **Cross-references:** For tracking setup, use the **meta-ads-tracking-setup** skill. For creative testing, use the **meta-ads-creative-engine** skill. For ongoing optimization after launch, use the **meta-ads-optimizer** skill. For Google campaign building, use the **google-ads-campaign-builder** skill. For audience deep-dives, read `references/audience-strategy.md`.
- **Confidence:** Budget sufficiency estimates are based on target CPA math. Actual performance depends on creative quality, offer strength, and tracking accuracy. ASC's ~12% CPA improvement is Meta's benchmark — results vary.
