---
name: google-ads-campaign-builder
description: "Build and configure Google Ads campaigns across all 10+ campaign types — from campaign type selection through settings, targeting, creatives, and launch."
---

## Process

1. **Define objective** — What business outcome? (Sales, Leads, Traffic, Awareness, App installs)
2. **Select campaign type** — Use the Decision Tree below
3. **Configure settings** — Bid strategy, budget, targeting, schedule
4. **Build ad groups / asset groups** — Structure by theme, product, or audience
5. **Create ads / assets** — RSAs, images, videos per campaign type requirements
6. **Add extensions / assets** — Sitelinks, callouts, structured snippets, etc.
7. **Set audience signals** — Remarketing lists, in-market, custom segments
8. **Launch and monitor** — Learning phase: 7-14 days, don't make changes

Read `references/campaign-types.md` for detailed setup guides per campaign type.
Read `references/rsa-copy-guide.md` for RSA headline and description writing frameworks.

## Campaign Type Decision Tree

**Q1: What's your primary goal?**

| Goal | Best Campaign Type | Conditions |
|------|-------------------|------------|
| Capture high-intent search demand | **Search** or **AI Max** | Have keywords/themes to target |
| Full-funnel automated coverage | **Performance Max** | Have assets (images, video, feed) + $50-100/day minimum |
| Product sales (ecommerce) | **PMax** (with Merchant Center) or **Shopping** | Product feed in Merchant Center |
| Awareness / consideration | **Demand Gen** or **Video** | Have video/image creative assets |
| App installs / engagement | **App** | Have mobile app on iOS/Android |
| Phone calls | **Call** | Service business, mobile-focused |
| Hotel bookings | **Hotel** | Hospitality, Hotel Center linked |
| Remarketing (display) | **Display** | Have remarketing audiences built |

**Q2: Which Search campaign type?**

| Scenario | Recommendation |
|----------|---------------|
| Mature account, 50+ conversions/month, want AI optimization | **AI Max for Search** (global beta September 2025, avg 34% conversion improvement) |
| Need granular keyword control | **Standard Search** |
| New account, building data | **Standard Search** (build to 30+ conversions/month first) |
| Full-funnel with Search + Shopping + Display + Video | **Performance Max** |

**Q3: How does everything fit together? (2025 Power Pack strategy)**
- **Demand Gen** → Awareness and consideration (YouTube, Discover, Gmail)
- **AI Max for Search** → Intent capture with AI-driven optimization
- **Performance Max** → Full-funnel scale across all Google properties
- This replaces the older "Power Pair" (Search + PMax) approach

## Bid Strategy Selection

| Monthly Conversions | Recommended Strategy | Notes |
|--------------------|---------------------|-------|
| 0-15 | Manual CPC or Maximize Clicks (with bid cap) | Not enough data for automation |
| 15-30 | Maximize Conversions | Building data, algorithm learning |
| 30-50 | Maximize Conversions or tCPA | Enough for tCPA if CPA stable |
| 50+ | tCPA or tROAS | Full Smart Bidding. tROAS needs 50+, ideally 100+ |
| Portfolio (multiple campaigns) | Portfolio bid strategies | Shared budget across campaigns. Typical lift: 19-27% ROAS improvement |

**CRITICAL: ECPC deprecated March 31, 2025.** Do not configure or recommend Enhanced CPC. Campaigns not migrated now run on Manual CPC.

**tCPA/tROAS target setting:**
- Start at actual historical CPA/ROAS (not aspirational targets)
- Adjust in 10-15% increments after 2+ weeks of data
- Too aggressive a target = delivery collapse. Algorithm can't hit unrealistic goals

## Budget Rules

| Campaign Type | Minimum Budget | Rule |
|--------------|----------------|------|
| Performance Max | $50-100/day | Daily budget ≥ 3x target CPA. Under $1K/month → use focused Search instead |
| Search | No hard minimum | Budget should allow 10+ clicks/day for meaningful data |
| AI Max | $50-100/day recommended | Similar to PMax — needs budget for AI exploration |
| Demand Gen | $50+/day | Needs volume for YouTube/Discover optimization |
| Display | $20+/day | Lower CPCs but need volume |
| Video | $10-50+/day | Varies by format and objective |

**Budget scaling rule:** Increase by 20% increments maximum. Larger jumps can reset learning and destabilize performance.

**Budget allocation guidance (60/30/10):**
- 60% to proven, high-performing campaigns
- 30% to scaling tests and expansion
- 10% to experimental campaign types or audiences

## Universal Settings Checklist

Apply to every campaign at setup:

| Setting | Recommendation |
|---------|---------------|
| Networks | Search: uncheck Display Network (unless intentional). PMax: all networks automatic |
| Locations | Target "Presence" (people IN location), not "Presence or Interest" (default includes people searching ABOUT the location) |
| Languages | Match your target market. English for English markets |
| Ad schedule | Start 24/7. Optimize day/time after 90 days of conversion data |
| Ad rotation | "Optimize" (let Google prioritize best ads). "Do not optimize" only for strict A/B testing |
| Conversion actions | Select the right primary conversion action per campaign (not account default if it's wrong) |
| Start/end dates | Set end date for promotional campaigns. No end date for evergreen |
| URL expansion | PMax: review and restrict if sending to unintended pages |

## Extensions / Assets Setup

Add all applicable extensions — each type increases ad real estate and CTR:

| Extension Type | What to Include | Priority |
|---------------|----------------|----------|
| Sitelinks | 4-6 deep links to key pages (pricing, features, testimonials, contact) | Must-have |
| Callouts | Unique selling points: "Free Shipping", "24/7 Support", "No Contract" | Must-have |
| Structured snippets | Categories: Services, Brands, Types, Destinations | Must-have |
| Image extensions | Relevant product/brand images | High |
| Price extensions | Product/service pricing tiers | High (if pricing is public) |
| Call extensions | Phone number for call-focused businesses | High (service businesses) |
| Promotion extensions | Active sales, seasonal offers, coupon codes | When applicable |
| Lead form extensions | In-ad lead capture form | Lead gen campaigns |
| Location extensions | Business address (linked Google Business Profile) | Local businesses |
| App extensions | App download link | If you have an app |

## Output Format

```
## Google Ads Campaign Build Plan

### Campaign Overview
- Campaign name: [Platform_Objective_Audience_Geo_Date]
- Campaign type: [type]
- Objective: [Sales/Leads/Traffic/Awareness]
- Bid strategy: [strategy] — rationale: [why]
- Daily budget: $[X] — Monthly: $[X]
- Target CPA/ROAS: [target] (based on [historical data / industry benchmark])

### Campaign Settings
- Networks: [selected networks]
- Locations: [targets] (Presence only)
- Languages: [languages]
- Ad schedule: [schedule]
- Conversion actions: [primary action]

### Ad Groups / Asset Groups
| Group | Theme/Audience | Keywords/Signals | Ads/Assets |
|-------|---------------|-----------------|-----------|
| [name] | [theme] | [keywords or audience signals] | [ad count] |

### Ads / Assets Created
[Campaign-type-specific creative details]

### Extensions
| Type | Content |
|------|---------|
| Sitelinks | [4-6 links] |
| Callouts | [USPs] |

### Launch Checklist
- [ ] Conversion tracking verified
- [ ] Bid strategy and budget set
- [ ] Location targeting set to "Presence"
- [ ] Ad copy reviewed and approved
- [ ] Extensions added (minimum: sitelinks + callouts + structured snippets)
- [ ] Audience signals configured (PMax/Demand Gen)
- [ ] Landing pages tested (load <3 sec, mobile-friendly)
- [ ] Negative keywords added (Search campaigns)
- [ ] 7-14 day learning phase plan: no major changes
```

## Example

**Input:** "I run a B2B SaaS selling HR software. $200 target CPA, $6K/month budget, currently getting about 40 conversions/month from our existing campaigns. I want to set up a new campaign to capture more demo requests."

**Output:**

## Google Ads Campaign Build Plan

### Campaign Overview
- Campaign name: Google_Search_HRSoftware_DemoRequests_US_Apr2026
- Campaign type: **AI Max for Search** — with 40 conversions/month and strong tracking, AI Max is ideal (global beta September 2025, avg 34% conversion improvement vs standard Search)
- Objective: Leads (Demo Requests)
- Bid strategy: **tCPA at $200** — 40 conversions/month meets minimum threshold for tCPA (30+). Set at current actual CPA, not aspirational
- Daily budget: $197/day (~$6K/month)
- Fallback: If AI Max isn't available, standard Search with tCPA

### Campaign Settings
- Networks: Search only (Display Network unchecked)
- Locations: United States — Presence only
- Languages: English
- Ad schedule: 24/7 (optimize after 90 days of day/time conversion data)
- Conversion actions: Primary = "Demo Request Submitted" (not page views or clicks)

### Ad Groups
| Group | Theme | Keywords | Match Type |
|-------|-------|----------|-----------|
| HR Software - Core | Core product | hr software, human resources software, hr management system | Broad (40 conv/mo + tCPA qualifies for broad + Smart Bidding) |
| HR Software - Features | Feature-specific | employee onboarding software, payroll management system, time tracking software | Broad |
| HR Software - Competitors | Competitor alternatives | [competitor] alternative, switch from [competitor] | Exact (protect high-intent competitor queries) |
| HR Software - SMB | Size-segment | hr software small business, affordable hr platform | Phrase (controlled expansion for new theme) |

### RSA Headlines (per ad group — see references/rsa-copy-guide.md for framework)
**Core ad group example (15 headlines):**
1. "HR Software That Saves 10+ Hours/Week" (benefit — pin position 1)
2. "All-in-One HR Management Platform" (category)
3. "Trusted by 2,000+ HR Teams" (social proof)
4. "Onboarding, Payroll & Time Tracking" (features)
5. "See a Demo in 15 Minutes" (CTA — pin position 2)
6. "No Long-Term Contract Required" (objection handling)
7. "Rated #1 HR Software for SMBs" (authority)
8. "Streamline Your Entire HR Workflow" (benefit)
9. "Free Demo — See It in Action" (CTA)
10. "Replace Spreadsheets with [Brand]" (problem/solution)
11. "Built for Growing Companies" (audience)
12. "SOC 2 Compliant & Secure" (trust)
13. "Implementation in Under 2 Weeks" (objection handling)
14. "Custom Pricing for Your Team Size" (pricing)
15. "HR Teams Love Our Platform" (testimonial angle)

**4 Descriptions:**
1. "Book a 15-minute demo and see how [Brand] automates onboarding, payroll, time tracking, and compliance for growing HR teams."
2. "Join 2,000+ companies using [Brand] to cut HR admin time by 60%. No long contracts, SOC 2 compliant, setup in days."
3. "From hiring to payroll to performance reviews — one platform for all your HR needs. Start your free demo today."
4. "Affordable HR software built for 10-500 employee companies. See pricing and get a personalized demo."

### Extensions
| Type | Content |
|------|---------|
| Sitelinks | Pricing, Features, Customer Stories, Book a Demo, Integrations, About Us |
| Callouts | "No Long-Term Contract", "SOC 2 Compliant", "24/7 Support", "2-Week Setup" |
| Structured snippets | Services: Onboarding, Payroll, Time Tracking, Compliance, Performance Reviews |
| Image | Product UI screenshot, team photo, customer logos |
| Lead form | Name, work email, company size → "Request a Demo" |

### Negative Keywords
- **Jobs list:** hr jobs, hr salary, hr manager jobs, hiring, careers, glassdoor
- **Free/DIY:** free hr software, open source hr, hr template, hr spreadsheet
- **Education:** what is hr, hr certification, hr course, shrm, hr degree
- **Enterprise (if SMB-focused):** enterprise hr, hr for 10000 employees

### Launch Checklist
- [ ] Enhanced conversions enabled for "Demo Request Submitted"
- [ ] tCPA set at $200 (actual historical CPA)
- [ ] Location: US, Presence only
- [ ] AI Max text guidelines configured for brand voice
- [ ] All 4 extension types added
- [ ] Landing page loads <3 sec, mobile-optimized, form above fold
- [ ] Negative keyword lists applied (4 lists)
- [ ] 7-14 day learning phase: no bid, budget, or audience changes

## Guidelines

- **Don't launch PMax on a tiny budget.** $50-100/day minimum, daily budget ≥ 3x target CPA. Under $1K/month, use focused Search campaigns instead.
- **Don't use ECPC.** Deprecated March 31, 2025. If someone asks, redirect to Manual CPC or Smart Bidding.
- **Don't change campaigns during learning phase.** 7-14 days. Performance will fluctuate — this is normal. Premature changes reset the learning clock.
- **Don't set aspirational tCPA/tROAS targets.** Start at actual historical performance. Algorithm needs achievable targets. Adjust 10-15% after 2+ weeks.
- **Don't skip location targeting settings.** Default "Presence or Interest" includes people searching ABOUT a location, not just people IN it. Switch to "Presence" for most campaigns.
- **Don't forget negative keywords on Search campaigns.** Build themed lists before launch, not after money is wasted.
- **Don't use broad match without Smart Bidding + 50 conversions/month.** Hard requirement. Broad match with manual bidding wastes budget.
- **AI Max learning phase is real.** Global beta September 2025. Smart Bidding Exploration will test new queries — expect some initial volatility. Monitor but don't intervene for 7-14 days.
- **Cross-references:** For keyword research feeding into Search campaigns, use the **google-ads-keyword-engine** skill. For product feed setup (Shopping/PMax), use the **google-merchant-center** skill. For Meta campaign building, use the **meta-ads-campaign-builder** skill. For ongoing optimization after launch, use the **google-ads-optimizer** skill. For full account audit before building new campaigns, use the **google-ads-audit** skill.
- **Confidence:** Conversion improvement estimates (e.g., AI Max avg 34%) are from Google's early testing data and may vary. Budget recommendations are minimums — more data = better optimization.
