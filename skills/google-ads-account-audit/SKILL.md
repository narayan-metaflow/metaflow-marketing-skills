---
name: google-ads-account-audit
description: "Systematic 70+ checkpoint audit covering tracking, structure, keywords, ads, bidding, budgets, audiences, and competitive positioning — with ICE-prioritized recommendations."
---

## Process

1. **Collect data** — Request or gather: campaign data export, search term report (90 days), Quality Score report, auction insights, change history (90 days), conversion tracking status, and account-level settings
2. **Run the audit checklist** — Work through each section below, flagging issues as Critical (red), Optimization (yellow), or Working Well (green)
3. **Score account health** — Calculate overall health score based on findings
4. **ICE-prioritize recommendations** — Score each finding: Impact (1-10) x Confidence (1-10) x Ease (1-10)
5. **Deliver action plan** — Structured output with prioritized fixes and expected impact

## Audit Checklist

### Section 1: Tracking & Measurement

| Checkpoint | What to Check | Flag If |
|-----------|--------------|---------|
| Google Tag active | gtag.js or GTM container firing on all pages | Missing or intermittent |
| GA4 linked | GA4 property connected to Google Ads | Not linked |
| Conversion actions | List all conversion actions — are they meaningful? | Counting micro-conversions as primary |
| Enhanced conversions (web) | Hashing email/phone at tag level for better matching | Not implemented |
| Enhanced conversions (leads) | GCLID-based offline import for lead gen accounts | Not implemented for lead gen |
| Attribution model | Data-driven attribution is default and recommended | Still on last-click without reason |
| Conversion windows | Windows match actual sales cycle | Default windows for long sales cycle |
| Cross-account conversion tracking | Using manager-level conversion tracking if MCC | Duplicate conversion counting across accounts |
| Offline conversion import | Uploading CRM data back to Google Ads | Lead gen account with no offline import |
| Meta tracking | Is the client also running Meta? Check if CAPI is set up | Meta tracking gaps — refer to **meta-ads-tracking-setup** skill |

### Section 2: Account Structure

| Checkpoint | What to Check | Flag If |
|-----------|--------------|---------|
| Campaign-to-objective alignment | Each campaign has a clear strategic purpose | Campaigns mixing objectives |
| Campaign count | 6-10 campaigns with clear distinctions for complex accounts | Over-segmented (20+ campaigns diluting budget) or under-segmented (1-2 campaigns for diverse products) |
| Search + Display mixing | Search and Display should be separate campaigns | Mixed in same campaign |
| PMax asset groups | Segmented by product/service line with distinct audiences | Single asset group for diverse products |
| AI Max setup | Text guidelines configured, Smart Bidding Exploration monitored | AI Max running without text guidelines (launched September 2025, avg 34% conversion improvement) |
| Demand Gen campaigns | Present if awareness/consideration is a goal | Missing from full-funnel accounts (Power Pack strategy: Demand Gen + AI Max + PMax) |
| Naming conventions | Consistent, parseable naming taxonomy | Inconsistent or absent naming system |
| Ad group theming | Tight keyword-to-ad-group mapping by intent | Bloated ad groups mixing unrelated keywords |

### Section 3: Keywords & Match Types

| Checkpoint | What to Check | Flag If |
|-----------|--------------|---------|
| Match type distribution | Balance of broad, phrase, exact appropriate for account maturity | 100% broad match without Smart Bidding, or 100% exact match limiting reach |
| Broad match readiness | Broad match requires Smart Bidding + 50+ conversions/month | Broad match with manual bidding or <50 conversions/month |
| Search term waste | N-gram analysis on search term report | N-grams with $50+ spend and 0 conversions |
| Negative keyword coverage | Themed negative lists: competitors, jobs, free/DIY, irrelevant industries | No shared negative lists, or lists not updated in 90+ days |
| Keyword conflicts | Keywords in different campaigns competing against each other | Same keyword in multiple campaigns without clear priority |
| PMax search term cannibalization | PMax stealing queries that Search campaigns should serve | High-value queries showing in PMax search term insights instead of Search |
| Low search volume keywords | Keywords flagged as low search volume | >20% of keywords with low search volume status |
| Fractional conversion distortion | Data-driven attribution splits conversions into fractions | Evaluating keyword CPA on conversions < 1 — filter to conversions > 1 before judging CPA |

**N-gram analysis quick method:** Break search queries into 1-grams, 2-grams, 3-grams. Aggregate clicks, spend, conversions, and CPA by n-gram. Action framework:
- N-gram with $50+ spend, 0 conversions → Add as negative keyword
- N-gram with strong CPA → Promote to exact-match keyword in dedicated ad group
- N-gram with high impressions, low CTR → Investigate intent mismatch

For automated n-gram analysis, use the **google-ads-scripts** skill (Brainlabs Search Query Mining Script updated for GAQL by Nils Rooijmans, March 2025).

### Section 4: Ads & Creative

| Checkpoint | What to Check | Flag If |
|-----------|--------------|---------|
| RSA completeness | 15 headlines + 4 descriptions per RSA | Under-filled RSAs (<10 headlines) |
| RSA asset performance | Asset-level reporting (2025 feature) | Multiple "Low" rated headlines/descriptions not replaced |
| Ad strength | Google's ad strength indicator | "Poor" or "Average" — target "Good" or "Excellent" |
| Headline diversity | Headlines cover different angles (features, benefits, urgency, social proof) | All headlines say the same thing with minor variations |
| Pin strategy | High-intent or brand headlines pinned to position 1 | No pins and key messages buried, or over-pinning limiting combinations |
| Extensions/assets | Sitelinks (4-6), callouts, structured snippets, images, price, call | Missing extension types — each adds CTR |
| Landing page relevance | Ad message matches landing page headline and CTA | Message mismatch between ad and landing page |
| Mobile optimization | Landing pages load <3 seconds, mobile-friendly | Slow load or poor mobile experience |

### Section 5: Bidding & Budget

| Checkpoint | What to Check | Flag If |
|-----------|--------------|---------|
| Bid strategy appropriateness | Strategy matches campaign maturity and conversion volume | See Bid Strategy Maturity table below |
| ECPC check | **ECPC deprecated March 31, 2025** — campaigns not migrated now run on Manual CPC | Any campaign still showing ECPC status |
| tCPA/tROAS targets | Targets realistic vs actual performance | Target CPA set 50%+ below actual CPA (algorithm can't deliver) |
| Smart Bidding readiness | Minimum conversion volume for strategy tier | tCPA with <30 conversions/month, tROAS with <50 conversions/month |
| Portfolio bid strategies | Shared strategies across related campaigns | Related campaigns on individual strategies that could benefit from pooling (typical lift: 19-27% ROAS improvement) |
| Budget sufficiency | Daily budget adequate for bid strategy | PMax budget < 3x target CPA daily, or < $50-100/day |
| Budget capping | Campaigns limited by budget | Impression share lost to budget > 20% on profitable campaigns |
| AI Max learning phase | 7-14 days for new AI Max campaigns | Changes made during learning phase (September 2025 global beta) |
| Impression share analysis | Search impression share vs targets | <30% = likely underbidding; >95% with low ROI = likely overspending |
| Impression share lost (rank) | Lost to ad rank specifically | High % lost to rank = Quality Score or bid issue |
| Impression share lost (budget) | Lost to budget specifically | High % lost to budget = increase budget or reduce targeting |

**Bid Strategy Maturity Table:**

| Monthly Conversions | Recommended Strategy | Notes |
|--------------------|---------------------|-------|
| 0-15 | Manual CPC or Maximize Clicks (with bid cap) | Not enough data for automation |
| 15-30 | Maximize Conversions | Building data, algorithm learning |
| 30-50 | Maximize Conversions or tCPA | Enough for tCPA if CPA is stable |
| 50+ | tCPA or tROAS | Full Smart Bidding — tROAS needs 50+, ideally 100+ |
| 50+ with broad match | Broad match + tCPA/tROAS | Recommended 2025 default for mature accounts |

### Section 6: Quality Score Deep Dive

Quality Score = expected CTR + ad relevance + landing page experience. Analyze at component level, not just the composite number.

| Component | What Drives It | Fix If Below Average |
|-----------|---------------|---------------------|
| Expected CTR | Historical CTR vs competitors for same query | Improve ad copy relevance, test new headlines, add negative keywords to filter irrelevant impressions |
| Ad Relevance | How closely ad matches search intent | Tighten ad group themes, write intent-specific headlines, use keyword insertion where appropriate |
| Landing Page Experience | Page relevance, speed, mobile-friendliness, navigation ease | Improve message match, speed (<3 sec), mobile UX, add relevant content |

**Action priority:** Landing page experience has the widest impact (affects all keywords pointing to that page). Fix landing pages first, then ad relevance, then expected CTR.

### Section 7: Audiences

| Checkpoint | What to Check | Flag If |
|-----------|--------------|---------|
| Remarketing lists | Active, properly sized, segmented by recency | No remarketing lists, or lists expired |
| Customer match | CRM lists uploaded and refreshed | No customer match lists for accounts with CRM data |
| Audience segments | In-market, affinity, custom segments applied | No audience signals on PMax/Demand Gen campaigns |
| Observation vs targeting | Audiences in correct mode per campaign goal | Observation mode where targeting is intended (or vice versa) |
| Audience performance | Segment-level performance review | Segments with high spend and no conversions not excluded |

### Section 8: Competitive & Change History

| Checkpoint | What to Check | Flag If |
|-----------|--------------|---------|
| Auction Insights trends | Impression share, overlap rate, position above rate over 90 days | New competitor gaining significant share |
| Change history correlation | Last 90 days of account changes vs performance shifts | Performance drop aligns with a specific change (bid strategy switch, new campaign, budget cut) |
| Competitor ad copy | Google Ads Transparency Center review | Competitors testing offers or messaging you're not responding to |

## Health Score Calculation

Score each section 0-10 based on findings:

| Section | Weight | Score |
|---------|--------|-------|
| Tracking & Measurement | 20% | /10 |
| Account Structure | 10% | /10 |
| Keywords & Match Types | 20% | /10 |
| Ads & Creative | 10% | /10 |
| Bidding & Budget | 20% | /10 |
| Quality Score | 10% | /10 |
| Audiences | 5% | /10 |
| Competitive | 5% | /10 |
| **Weighted Total** | | **/10** |

**Interpretation:** 8-10 = Healthy, 6-7.9 = Needs optimization, 4-5.9 = Significant issues, <4 = Critical — major restructuring needed.

## Output Format

```
## Google Ads Account Audit

### Health Score: [X.X / 10] — [Healthy / Needs Optimization / Significant Issues / Critical]

### Critical Issues (fix immediately)
1. **[Issue]** — [What's wrong, specific data] — ICE: [I×C×E = score]
   - Action: [Specific fix]
   - Expected impact: [Estimated improvement]
2. ...

### Optimization Opportunities (fix within 2 weeks)
1. **[Issue]** — [What's wrong, specific data] — ICE: [score]
   - Action: [Specific fix]
   - Expected impact: [Estimated improvement]
2. ...

### Working Well (maintain)
- [What's working and why]
- ...

### Priority Action Plan (next 30 days)
| Priority | Action | ICE Score | Timeline | Owner |
|----------|--------|-----------|----------|-------|
| 1 | [Highest ICE action] | [score] | Week 1 | [who] |
| 2 | ... | ... | Week 1-2 | ... |
| 3 | ... | ... | Week 2-4 | ... |

### 2025 Platform Change Flags
- [ ] ECPC migration status (deprecated March 2025)
- [ ] AI Max for Search adoption opportunity (September 2025)
- [ ] PMax negative keywords enabled (January 2025)
- [ ] PMax search term reporting reviewed
- [ ] Enhanced conversions implemented
- [ ] Power Pack strategy evaluated (Demand Gen + AI Max + PMax)
```

## Example

**Input:** "Here's my Google Ads data for last 30 days. I'm spending $15K/month across 4 Search campaigns and 1 PMax campaign. CPA went from $45 to $72 over the past 6 weeks. Help me figure out what's wrong."

**Output:**

## Google Ads Account Audit

### Health Score: 5.2 / 10 — Significant Issues

### Critical Issues
1. **ECPC still active on 2 Search campaigns** — ECPC was deprecated March 31, 2025. These campaigns reverted to Manual CPC, losing Smart Bidding optimization. — ICE: 9×9×9 = 729
   - Action: Migrate to Maximize Conversions (both campaigns have 35+ conversions/month — sufficient for tCPA)
   - Expected impact: 15-25% CPA reduction once algorithm re-learns (7-14 day learning phase)

2. **Search term waste: $2,340/month on zero-conversion n-grams** — N-gram analysis shows "jobs," "salary," and "careers" 2-grams account for $1,800 in wasted spend. "Free" modifier adds another $540. — ICE: 9×10×10 = 900
   - Action: Add negative keyword lists: jobs/careers, free/DIY. Review remaining zero-conversion n-grams with $50+ spend
   - Expected impact: ~$2,340/month savings = 15.6% of total spend recovered

3. **PMax campaign budget at $25/day with $72 CPA** — Below minimum threshold (daily budget should be 3x target CPA = $135+/day minimum). Algorithm can't optimize with insufficient budget. — ICE: 8×8×7 = 448
   - Action: Increase PMax daily budget to $150/day or pause PMax and consolidate into Search campaigns
   - Expected impact: PMax either performs as designed or stops wasting budget at sub-scale

### Optimization Opportunities
1. **No enhanced conversions** — Missing 10-15% of conversion attribution. — ICE: 7×8×8 = 448
   - Action: Implement enhanced conversions for web (tag-level email/phone hashing)
   - Expected impact: Better attribution → better Smart Bidding decisions → lower CPA

2. **Quality Score: 4 ad groups with avg QS < 5** — Landing page experience "Below Average" on 3 groups, ad relevance "Below Average" on 1. — ICE: 7×7×5 = 245
   - Action: Audit landing pages for message match and page speed. Rewrite ads in low-relevance group
   - Expected impact: QS improvement from 4→6 typically reduces CPC 15-25%

3. **No audience signals on PMax** — PMax running without remarketing lists or customer match. — ICE: 6×7×8 = 336
   - Action: Add remarketing audiences and customer match list as audience signals
   - Expected impact: Faster PMax learning, better targeting accuracy

### Working Well
- Campaign naming conventions are consistent and parseable
- Sitelink and callout extensions present on all Search campaigns
- GA4 properly linked with data-driven attribution active

### Priority Action Plan (next 30 days)
| Priority | Action | ICE Score | Timeline | Owner |
|----------|--------|-----------|----------|-------|
| 1 | Add negative keyword lists (jobs, free/DIY) | 900 | Day 1-2 | Media buyer |
| 2 | Migrate ECPC campaigns to Maximize Conversions | 729 | Day 1-3 | Media buyer |
| 3 | Implement enhanced conversions | 448 | Week 1-2 | Developer + media buyer |
| 4 | Fix PMax budget or consolidate | 448 | Week 1 | Media buyer |
| 5 | Add audience signals to PMax | 336 | Week 2 | Media buyer |
| 6 | Landing page QS improvements | 245 | Week 2-4 | Dev + media buyer |

### 2025 Platform Change Flags
- [x] ECPC migration status — **NOT MIGRATED on 2 campaigns (Critical)**
- [ ] AI Max for Search — not yet adopted, evaluate after fixing current issues
- [x] PMax negative keywords — enabled but no negatives added
- [ ] PMax search term reporting — not yet reviewed (do this week)
- [ ] Enhanced conversions — not implemented
- [ ] Power Pack strategy — evaluate after stabilizing current campaigns

## Guidelines

- **Don't audit without search term data.** Search term reports are the single richest source of waste identification. If the user only provides campaign-level data, request the search term report before completing the audit.
- **Don't recommend tROAS with <50 conversions/month.** The algorithm needs volume. Recommending it prematurely leads to delivery collapse.
- **Don't panic over PMax opacity.** PMax now has campaign-level negatives, full search term reporting, and channel performance reports (all 2025). Use them before concluding PMax is wasteful.
- **Don't ignore change history.** A CPA spike that coincides with a bid strategy change or budget cut has a different fix than one caused by competitive pressure or seasonality.
- **Flag ECPC immediately.** Any campaign still showing ECPC was deprecated March 31, 2025. This is always a Critical finding.
- **Flag AI Max opportunity.** If the account has 50+ monthly conversions and isn't testing AI Max for Search (global beta September 2025, avg 34% conversion improvement), note it as an optimization opportunity.
- **Account for learning phases.** Don't flag bid strategy performance during the 7-14 day learning period after changes.
- **Fractional conversion trap.** Data-driven attribution creates fractional conversions. A keyword showing 0.3 conversions isn't necessarily bad — it contributed to a conversion. Filter to conversions > 1 before evaluating keyword-level CPA.
- **Cross-references:** For Meta tracking issues, use the **meta-ads-tracking-setup** skill. For Meta account auditing, use the **meta-ads-audit** skill. For automated audit scripts, use the **google-ads-scripts** skill.
- **Confidence:** If audit data is incomplete (missing search terms, no QS data, limited date range), state what conclusions are reliable and what needs more data. Never fabricate findings to fill gaps.
