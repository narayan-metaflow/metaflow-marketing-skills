---
name: google-ads-optimizer
description: "Optimize running Google Ads campaigns — bid strategy tuning, budget reallocation, Quality Score improvement, ad copy iteration, audience refinement, placement management, and scaling."
---

## Process

1. **Diagnose** — Identify the specific performance problem (rising CPA, declining ROAS, low impression share, poor Quality Score, etc.)
2. **Analyze root cause** — Use the Diagnostic Decision Tree to pinpoint the issue
3. **Select optimization lever** — Match the problem to the right framework below
4. **Implement changes** — Follow the specific optimization playbook
5. **Monitor learning phase** — Wait 7-14 days before judging results
6. **Iterate** — Review, adjust 10-15% incrementally, repeat

## Diagnostic Decision Tree

**What's the primary symptom?**

| Symptom | Most Likely Cause | Start Here |
|---------|------------------|-----------|
| CPA rising, conversions stable | Increased competition or bid inflation | Bid Optimization → Budget Reallocation |
| CPA rising, conversions declining | Tracking issue, audience exhaustion, or creative fatigue | Check tracking first → Audience Refinement |
| Low impression share (<30%) | Underbidding or budget constraints | Impression Share Analysis |
| High impression share (>95%) with low ROI | Overspending on low-value queries | Search Term Management → Negative Keywords |
| Quality Score declining | Landing page, ad relevance, or CTR issues | Quality Score Optimization |
| Good clicks, low conversion rate | Landing page problem or audience mismatch | Landing Page Optimization |
| PMax underperforming | Asset quality, audience signals, or budget | PMax Optimization |
| AI Max volatile | Still in learning or exploring new queries | Wait 7-14 days → review Smart Bidding Exploration |

## Bid Optimization

### Smart Bidding Adjustment Rules

| Scenario | Action | Increment |
|----------|--------|-----------|
| CPA consistently below target for 2+ weeks | Lower tCPA target to capture more efficient range | Decrease 10-15% |
| CPA consistently above target for 2+ weeks | Raise tCPA target (or algorithm delivery collapses) | Increase 10-15% |
| ROAS above target for 2+ weeks | Lower tROAS target to allow more volume | Decrease 10-15% |
| ROAS below target for 2+ weeks | Raise tROAS target to tighten efficiency | Increase 10-15% |
| Campaign in learning phase | **Do nothing.** Wait 7-14 days | No changes |
| Delivery collapsed (near-zero spend) | Target too aggressive — raise tCPA / lower tROAS | Increase 20-30% to restore delivery |

**Key rules:**
- Never change targets by more than 15-20% at once (except delivery collapse rescue)
- Use bid simulators before making changes — forecast the impact
- Day-of-week and hour-of-day adjustments: analyze 90 days of conversion data, then apply bid modifiers to high/low performing time slots
- **ECPC is deprecated (March 2025).** If any campaign is running ECPC, it reverted to Manual CPC. Migrate to Maximize Conversions or tCPA immediately

### Portfolio Bid Strategy Optimization

Portfolio strategies pool data across multiple campaigns for better optimization.

| When to Use | Benefit |
|------------|---------|
| Multiple campaigns targeting same conversion | Shared learning = faster optimization |
| Related campaigns with different budgets | Dynamic reallocation across campaigns |
| Account-wide ROAS/CPA goal | Unified strategy. Typical lift: 19-27% ROAS improvement |

**Setup:** Create portfolio strategy → assign related campaigns → set shared target → monitor at portfolio level, not individual campaign level.

## Budget Reallocation

### Intra-Account Reallocation Framework

| Step | Action |
|------|--------|
| 1. Rank campaigns | Sort by primary KPI (CPA, ROAS, or conversion volume) |
| 2. Identify donors | Campaigns with CPA > 1.5x target OR ROAS < 50% of target for 30+ days |
| 3. Identify recipients | Campaigns with CPA < target AND impression share lost to budget > 10% |
| 4. Shift budget | Move 20% of donor budget to recipients. Monitor for 2 weeks |
| 5. Repeat | Continue rebalancing every 2-4 weeks |

**Scaling rule:** Increase winning campaign budgets by 20% increments maximum. Larger jumps destabilize Smart Bidding.

**Day-of-week pacing:** Analyze 90 days of conversion data by day of week. If Tuesdays convert 2x better than Saturdays, use dayparting scripts or budget adjustments to concentrate spend on high-converting days.

**For automated budget pacing and redistribution scripts, use the **google-ads-scripts** skill.**

## Impression Share Analysis

| Metric | Threshold | Interpretation | Action |
|--------|----------|---------------|--------|
| Search IS | <30% | Significantly underbidding or underfunded | Increase budget or raise bids (if profitable) |
| Search IS | 30-70% | Room to grow | Evaluate if more spend is profitable before scaling |
| Search IS | >95% | Dominating — but is it efficient? | If ROI is strong, maintain. If ROI is weak, you're overspending |
| IS Lost (Budget) | >20% on profitable campaigns | Budget-constrained on winners | Priority budget increase |
| IS Lost (Rank) | >30% | Ad rank too low | Improve Quality Score or increase bids |
| Top IS | <50% for brand terms | Competitors above you on your brand | Increase brand campaign bids |

## Quality Score Optimization

Quality Score components, in order of optimization impact:

### 1. Landing Page Experience (widest impact)

| Fix | Expected Impact |
|-----|----------------|
| Page speed <3 seconds (GTmetrix / PageSpeed Insights) | Major — Google's 2025 quality system heavily weights navigation ease |
| Message match: landing page headline mirrors ad headline | High — direct relevance signal |
| Mobile optimization (responsive, thumb-friendly, no pop-ups) | High — mobile-first indexing active |
| Relevant content depth (not thin landing pages) | Medium |
| Clear CTA above the fold | Medium |
| Trust signals (testimonials, badges, reviews) | Medium |

### 2. Ad Relevance

| Fix | Expected Impact |
|-----|----------------|
| Tighten ad group themes (5-15 related keywords per group) | High |
| Write intent-specific headlines matching the keyword theme | High |
| Use keyword insertion in headlines (where natural) | Medium |
| Create separate ad groups for distinct intent clusters | High |

### 3. Expected CTR

| Fix | Expected Impact |
|-----|----------------|
| Add negative keywords to filter irrelevant impressions | High (removes low-CTR impressions) |
| Test new headline angles emphasizing benefits and CTAs | Medium |
| Add extensions (sitelinks, callouts increase ad real estate → CTR) | Medium |
| Improve ad position (higher position → higher CTR, but check ROI) | Low-Medium |

**QS impact on CPC:** Moving Quality Score from 4 to 6 typically reduces CPC by 15-25%. From 6 to 8 reduces another 10-15%. Compounding effect is significant at scale.

## Ad Copy Iteration

### RSA Asset Performance Review

Use Google's 2025 asset-level reporting:

| Asset Rating | Action |
|-------------|--------|
| **Best** | Keep. This is a proven winner. Don't change it |
| **Good** | Maintain but consider testing alternatives |
| **Low** | Replace with new variation. Test a different angle |
| **Unrated** | Needs more data. Wait for significance |

**Replacement strategy:**
1. Review asset ratings monthly
2. Replace 2-3 "Low" rated headlines per RSA
3. Keep at least 5 "Best" or "Good" headlines stable
4. Test new messaging angles: different benefit, different proof point, different CTA
5. Isolate one variable per test cycle

**Ad copy testing areas:**
- Value propositions (speed vs cost vs quality vs convenience)
- Social proof styles (numbers, names, ratings)
- CTA types (demo vs trial vs quote vs buy)
- Emotional vs rational appeals
- Price inclusion vs exclusion

Read `references/rsa-copy-guide.md` in the **google-ads-campaign-builder** skill for headline frameworks.

## Audience Optimization

| Action | When |
|--------|------|
| Refresh remarketing lists | Lists approaching expiration or audience size dropping |
| Upload new customer match lists | Monthly CRM sync minimum |
| Test new in-market segments | Performance plateau — need new audience pools |
| Expand custom intent audiences | Add new URLs and search terms based on converting queries |
| Switch observation → targeting | Audience segment shows strong performance in observation mode |
| Remove underperforming segments | Audience with high spend, zero conversions for 30+ days |
| Add audience signals to PMax | Missing signals = slower PMax learning |

## Placement & Channel Optimization

### PMax Channel Review (2025)

Use PMax channel performance reports to assess where budget is going:

| Channel | Healthy Signal | Problem Signal |
|---------|---------------|---------------|
| Search | Converting at or below tCPA | Queries irrelevant — add negatives |
| Shopping | Product-level conversions visible | Underperforming products need feed optimization |
| YouTube | Assists showing in conversion paths | Clicks but zero conversions — improve video assets |
| Display | Remarketing conversions | Low-quality placements — review placement reports |
| Discover/Gmail | Engagement leading to conversions | High impressions, no conversions — creative issue |

**PMax negatives (January 2025):** Use campaign-level negative keywords to block irrelevant Search queries. Also add exact-match keywords in Search campaigns to control which campaign serves on high-value queries.

### Display Placement Hygiene

- Review placement report monthly
- Exclude low-quality sites, mobile apps, and gaming apps
- Use third-party exclusion lists: DoubleVerify, IAS, Zefr (expanded for PMax in 2025)
- Exclude sensitive content categories

## Landing Page Optimization

| Test | Method | Priority |
|------|--------|----------|
| Headlines | A/B test headline messaging (match winning ad copy) | High |
| CTA button | Text, color, placement, size | High |
| Form length | Fewer fields vs more qualified leads | High (lead gen) |
| Social proof | Type, placement, volume of testimonials | Medium |
| Page layout | Long-form vs short-form, single-column vs multi | Medium |
| Mobile experience | Mobile-specific design, thumb-friendly buttons | High |

**Message match audit:** After changing ad copy, always check that the landing page still matches the new message. Mismatched message = high bounce rate = lower Quality Score.

**Speed target:** <3 seconds load time. Re-test monthly. Use GTmetrix or Google PageSpeed Insights.

## Scaling Playbook

| Phase | Timing | Action |
|-------|--------|--------|
| **Peak window** | Days 7-14 post-launch | Algorithm has data but creative isn't fatigued. Best time to scale |
| **Budget increase** | When CPA < target for 2+ weeks | Increase by 20% max. Monitor for 1-2 weeks |
| **New ad groups** | When current groups saturated | Expand keyword themes based on search term mining |
| **Campaign experiments** | For aggressive tests | Google Campaign Experiments: 50/50 split without risking main campaign |
| **New campaign types** | When ready for full-funnel | Add Demand Gen (awareness) and PMax (full-funnel) per Power Pack strategy |

**AI Max for Search scaling:** Monitor Smart Bidding Exploration for new query categories being discovered. If AI Max is finding converting queries that standard Search misses, consider shifting more budget to AI Max. Learning phase: 7-14 days.

## Output Format

```
## Google Ads Optimization Plan

### Current Performance Summary
| Metric | Current | Target | Gap |
|--------|---------|--------|-----|
| CPA | $[X] | $[X] | [+/-X%] |
| ROAS | [X]x | [X]x | [+/-X%] |
| Impression Share | [X]% | [X]% | [gap] |

### Optimization Actions (ICE-prioritized)
| Priority | Action | Lever | ICE Score | Timeline |
|----------|--------|-------|-----------|----------|
| 1 | [action] | [bid/budget/QS/etc] | [score] | [when] |

### Changes to Implement
[Specific changes with exact values]

### Monitoring Plan
- Check [metric] after [X] days
- Success criteria: [what good looks like]
- Rollback plan: [if it doesn't work]
```

## Example

**Input:** "My Google Ads CPA went from $85 to $140 over 6 weeks. I'm spending $12K/month across 3 Search campaigns and 1 PMax campaign. ROAS dropped from 5.2x to 3.1x. tROAS is set at 500%. What should I do?"

**Output:**

## Google Ads Optimization Plan

### Current Performance Summary
| Metric | Current | Target | Gap |
|--------|---------|--------|-----|
| CPA | $140 | $85 | +65% above target |
| ROAS | 3.1x | 5.0x | -38% below target |
| Monthly spend | $12,000 | $12,000 | On budget |

### Root Cause Analysis
With tROAS set at 500% but actual ROAS at 310%, the algorithm is likely throttling delivery to try to hit an unrealistic target. This creates a death spiral: less data → worse optimization → worse performance → algorithm throttles more.

### Optimization Actions
| Priority | Action | Lever | ICE Score | Timeline |
|----------|--------|-------|-----------|----------|
| 1 | Lower tROAS from 500% to 350% (current actual + 10% buffer) | Bid | 9×9×10 = 810 | Day 1 |
| 2 | Run n-gram analysis on search terms — find and negate $50+ zero-conversion terms | Keywords | 9×8×9 = 648 | Day 1-3 |
| 3 | Review PMax channel performance — identify underperforming channels | Channel | 7×7×8 = 392 | Week 1 |
| 4 | Refresh RSA copy — replace "Low" rated assets | Creative | 6×6×7 = 252 | Week 2 |
| 5 | Test portfolio bid strategy across 3 Search campaigns | Bid | 7×6×6 = 252 | Week 2 |
| 6 | Landing page speed audit + message match review | QS | 6×7×5 = 210 | Week 2-3 |

### Changes to Implement
1. **tROAS adjustment:** Lower from 500% to 350% immediately. This matches actual performance with a 10% improvement buffer. Algorithm can deliver here. After 2 weeks at stable delivery, tighten by 10-15% increments toward 400%.
2. **Search term cleanup:** Export 90-day search term report. Run n-gram analysis. Flag n-grams with $50+ spend and 0 conversions. Based on typical accounts at this spend level, expect to find $1,000-2,000/month in waste.
3. **PMax channel audit:** Pull channel performance reports (2025 feature). If YouTube is consuming 30%+ of PMax budget with no conversions, create more targeted video assets or add negative keywords to block irrelevant Search queries in PMax.
4. **Portfolio bid strategy:** Consolidate 3 Search campaigns into a portfolio strategy with shared tROAS. Typical improvement: 19-27% ROAS lift from dynamic cross-campaign reallocation.

### Monitoring Plan
- **Day 7:** Check if tROAS reduction restored delivery volume. Expect CPA to initially be above target — that's OK. Volume recovery matters first
- **Day 14:** Evaluate CPA trend. Should be declining toward $100-120 range
- **Day 21:** If stable, tighten tROAS by 10% (350% → 385%)
- **Success criteria:** CPA below $110 within 30 days, ROAS above 3.8x
- **Rollback:** If delivery collapses further after tROAS change, drop to Maximize Conversion Value (no target) for 2 weeks to accumulate data, then reintroduce tROAS target

## Guidelines

- **Don't change bid targets by more than 15-20% at once.** Gradual adjustments let the algorithm adapt. Exception: delivery collapse rescue (increase 20-30%).
- **Don't touch campaigns during learning phase.** 7-14 days. Performance will fluctuate. Premature changes reset learning and waste the data collection period.
- **Don't ignore the tROAS/tCPA death spiral.** If targets are set above actual performance, the algorithm throttles delivery, gets less data, and performs worse. Always set targets at or slightly above current performance, then tighten gradually.
- **Don't optimize on fractional conversions.** Data-driven attribution creates fractions. Filter to > 1 conversion before evaluating keyword or ad group CPA.
- **Don't skip search term review.** Even with Smart Bidding, irrelevant queries waste budget. Weekly for new campaigns, bi-weekly for stable ones.
- **ECPC is gone (March 2025).** Any campaign still on ECPC reverted to Manual CPC. Migrate immediately to Maximize Conversions or tCPA.
- **AI Max needs patience (September 2025).** Smart Bidding Exploration tests new query categories. Initial volatility is expected. Monitor but don't intervene for 7-14 days.
- **PMax now has transparency (2025).** Campaign-level negatives, full search term reporting, and channel performance reports. Use them before declaring PMax doesn't work.
- **Cross-references:** For full account diagnostic, use the **google-ads-audit** skill. For keyword research and n-gram analysis, use the **google-ads-keyword-engine** skill. For automation scripts (budget pacing, anomaly detection, n-gram), use the **google-ads-scripts** skill. For Meta optimization, use the **meta-ads-optimizer** skill. For cross-channel budget allocation, use the **ad-spend-allocator** skill.
- **Confidence:** Bid simulator forecasts are directional, not guarantees. The 19-27% ROAS improvement from portfolio strategies is a Google benchmark — results vary by account. Always set rollback criteria before making major changes.
