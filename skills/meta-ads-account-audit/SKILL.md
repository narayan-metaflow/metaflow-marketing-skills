---
name: meta-ads-account-audit
description: "Systematic 75+ checkpoint audit based on the Sam Tomlinson framework: ICP validation → signal infrastructure → account structure → audiences → creatives → measurement — with ICE-prioritized recommendations."
---

## Process

1. **Collect data** — Request or gather: Ads Manager export (90 days), Events Manager screenshots (Pixel + CAPI status, EMQ scores), creative performance breakdown, audience overlap reports, frequency data at creative level, and learning phase status per ad set
2. **Run the audit checklist** — Work through each section below, flagging issues as Critical (red), Optimization (yellow), or Working Well (green)
3. **Score account health** — Calculate overall health score based on findings
4. **ICE-prioritize recommendations** — Score each finding: Impact (1-10) x Confidence (1-10) x Ease (1-10)
5. **Deliver action plan** — Structured output with prioritized fixes and expected impact

## Audit Checklist

### Section 1: Signal Infrastructure

This is the foundation. Weak signals = weak delivery via Meta's Andromeda ranking system. Audit this first.

| Checkpoint | What to Check | Flag If |
|-----------|--------------|---------|
| Pixel active | Meta Pixel firing on all relevant pages | Missing or intermittent |
| CAPI active | Conversions API implemented alongside Pixel | **Not configured — this is always Critical in 2025** |
| Event deduplication | Matching `event_id` between Pixel and CAPI | Not configured or double-counting visible |
| EMQ scores | Event Match Quality per event type | Below 6.0 (minimum acceptable). Target 8.0+ |
| Matching keys sent | Email, phone, fbc, fbp, IP, user agent | Missing high-impact keys (email, phone, fbc) |
| Conversion events | Correct events configured as optimization targets | Optimizing for micro-events (PageView) instead of macro-events (Purchase, Lead) |
| Event volume | Conversions per ad set per week | Below 25/week/ad set (stability minimum). Target 50+/week (optimal) |
| Conversion values | Dynamic values sent with Purchase events | Static or missing values for ecommerce |
| Offline tracking | CRM/offline events flowing through CAPI | Using discontinued Offline Conversions API (killed May 2025) — migrate to standard CAPI with `action_source: system_generated` or `physical_store` |
| Attribution windows | 7-day click / 1-day view default | Non-standard windows without clear rationale. Note: `7d_view` and `28d_view` removed from Insights API October 2025 |
| AEM configuration | Aggregated Event Measurement for iOS 14+ | Event priority not configured, or low-value events prioritized over high-value |

For detailed tracking fixes, use the **meta-ads-tracking-setup** skill.

### Section 2: Account Structure

| Checkpoint | What to Check | Flag If |
|-----------|--------------|---------|
| Objective alignment | Campaign objectives match business goals | Using Traffic objective when goal is Sales/Leads |
| Campaign consolidation | Budget concentrated in fewer, well-funded campaigns | Too many small-budget campaigns/ad sets (each needs 50+ conversions/week for optimal learning) |
| Campaign architecture | Clear structure: Prospecting, Retargeting, Testing | No separation between prospecting and retargeting |
| ASC usage (ecommerce) | Advantage+ Shopping Campaigns for ecommerce | Ecommerce account with 100+ conversions/week not testing ASC (typically reduces cost per purchase ~12%) |
| New vs existing split | ASC customer ratio configured intentionally | Default ratio without analysis of actual customer mix |
| Naming conventions | Consistent, parseable taxonomy across campaigns/ad sets/ads | Inconsistent naming making analysis impossible |
| Special Ad Category | Housing, employment, credit categories set where required | Missing Special Ad Category when advertising in regulated industries |

### Section 3: Audience Strategy

| Checkpoint | What to Check | Flag If |
|-----------|--------------|---------|
| Audience size (TOF) | Top-of-funnel audience reach | Below 200K for prospecting campaigns |
| Audience size (remarketing) | Retargeting pool size | Below 1,000 (too small for stable delivery) |
| Audience overlap | Overlap between ad sets in same campaign | Significant overlap causing self-competition |
| Exclusion strategy | Recent converters and existing customers excluded from prospecting | No exclusions — wasting budget showing ads to existing customers |
| Targeting exclusions change | **Detailed targeting exclusions removed March 31, 2025** | Still trying to use interest-based exclusions. Modern approach: customer list exclusions, recent converter exclusions, lifecycle suppression |
| Custom audiences | Website visitors, CRM uploads, engagement audiences | No custom audiences built. CRM upload match rate benchmark: 40-70% |
| Lookalike seeds | Quality of lookalike source audiences | Low-quality seeds (all website visitors) instead of high-quality seeds (purchasers, high-value customers). Start 1%, test up to 5-10% |
| Advantage+ audience | Using algorithm-driven expansion with suggestions | Not testing Advantage+ audience on accounts with strong Pixel/CAPI data |
| Warm + cold mixing | 2025 best practice: combine in single ad sets | Hyper-segmented audiences in separate ad sets limiting algorithm learning |
| Engagement audiences | Proactively building video viewers, page engagers | No engagement audiences — these only capture data from creation date, not retroactively |

### Section 4: Creative Health

| Checkpoint | What to Check | Flag If |
|-----------|--------------|---------|
| Creative frequency | Frequency at the **creative level** (not ad or ad set level) | Frequency > 4 — Meta research: 45% conversion drop at 4 exposures |
| CTR trend | CTR trajectory over 7-day rolling average | CTR declining > 20% from 7-day average = fatigue signal |
| CPC trend | CPC movement correlated with CTR | Rising CPCs alongside declining CTR = confirmed fatigue |
| Creative volume | Number of active creative variants per ad set | Fewer than 4 variants (insufficient for rotation) or more than 150 in ASC (hitting ceiling) |
| Format diversity | Mix of static, video, carousel, Reels-native | Single format only — missing performance from other formats |
| Aspect ratios | 4:5 vertical for Feed/Stories/Reels, 1:1 fallback | Only landscape or only square creative |
| Video hooks | First 3 seconds engagement | No bold hooks, silent-unfriendly (85% of Facebook videos watched without sound) |
| Ad copy length | Primary text effectiveness | Primary text exceeding 125 characters (gets truncated) |
| Refresh cadence | How often new creative is introduced | Same creatives running 30+ days for prospecting (target refresh every 7-14 days) |
| Landing page experience | Post-click experience quality | Slow load (>3 sec), message mismatch, poor mobile UX |

For creative testing frameworks and fatigue management, use the **meta-ads-creative-engine** skill.

### Section 5: Learning Phase Management

| Checkpoint | What to Check | Flag If |
|-----------|--------------|---------|
| Learning phase spend | % of total account spend in learning phase | Exceeds 20% of total spend. Meta: advertisers under 20% see up to 68% lower CPA |
| Ad set edits during learning | Significant changes within first 5-7 days | Edits resetting learning phase (budget changes >20%, audience changes, creative swaps, bid changes) |
| Event volume per ad set | Weekly conversion volume | Below 25/week — ad set may never exit learning |
| Ad set consolidation | Fewer, larger ad sets vs many small ones | Multiple ad sets with <25 conversions/week each — consolidate |
| Learning limited status | Ad sets stuck in "Learning Limited" | Prolonged Learning Limited = restructure needed (consolidate audiences, increase budget, broaden optimization event) |

### Section 6: Budget & Bid Efficiency

| Checkpoint | What to Check | Flag If |
|-----------|--------------|---------|
| Budget allocation | Distribution across campaigns and ad sets | 60/30/10 benchmark: 60% best performers, 30% scaling tests, 10% experiments |
| Bid strategy | Highest Volume, Cost Cap, Bid Cap, ROAS Goal | Using Highest Volume without any guardrails when CPA/ROAS targets exist |
| Budget sufficiency | Enough budget for 50+ conversions/week/ad set | Budget too low for optimization event (switch to higher-funnel event or increase budget) |
| Pacing | Spend trajectory vs budget | Consistently underspending (audience too narrow) or front-loading (audience too broad or bid too high) |
| Cost distribution | Spend across ad sets within campaigns | One ad set consuming 90%+ of budget while others starve |
| Scaling method | How budget increases are applied | Increasing budget >20% at once (risks resetting learning) |
| CPM trends | Cost per 1000 impressions trajectory | Rising CPMs without corresponding performance improvement. Context: Meta avg ad price up 9% in 2025 (Q1 2025 earnings) |

### Section 7: Measurement & Attribution

| Checkpoint | What to Check | Flag If |
|-----------|--------------|---------|
| Attribution window | 7d click / 1d view default | Non-standard without documented reason |
| API attribution change | `7d_view` and `28d_view` removed from Insights API October 2025 | Reporting still pulling deprecated windows |
| Cross-platform attribution | Consistent measurement across Google + Meta | Different windows making cross-channel comparison meaningless |
| Instant Experience | **No longer counts as landing page view (June 2025)** | Funnel metrics inflated by counting Instant Experience as landing page views |
| Incrementality testing | Conversion lift or geo-based lift tests | No incrementality measurement — relying solely on platform-reported ROAS |

## Health Score Calculation

| Section | Weight | Score |
|---------|--------|-------|
| Signal Infrastructure | 25% | /10 |
| Account Structure | 10% | /10 |
| Audience Strategy | 15% | /10 |
| Creative Health | 20% | /10 |
| Learning Phase | 10% | /10 |
| Budget & Bid Efficiency | 15% | /10 |
| Measurement & Attribution | 5% | /10 |
| **Weighted Total** | | **/10** |

**Interpretation:** 8-10 = Healthy, 6-7.9 = Needs optimization, 4-5.9 = Significant issues, <4 = Critical.

## Output Format

```
## Meta Ads Account Audit

### Health Score: [X.X / 10] — [Healthy / Needs Optimization / Significant Issues / Critical]

### Critical Issues (fix immediately)
1. **[Issue]** — [What's wrong, specific data] — ICE: [I×C×E = score]
   - Action: [Specific fix]
   - Expected impact: [Estimated improvement]

### Optimization Opportunities (fix within 2 weeks)
1. **[Issue]** — [What's wrong, specific data] — ICE: [score]
   - Action: [Specific fix]
   - Expected impact: [Estimated improvement]

### Working Well (maintain)
- [What's working and why]

### Priority Action Plan (next 30 days)
| Priority | Action | ICE Score | Timeline | Owner |
|----------|--------|-----------|----------|-------|
| 1 | [Highest ICE action] | [score] | Week 1 | [who] |

### 2025 Platform Change Flags
- [ ] CAPI implemented (mandatory in 2025)
- [ ] Offline Conversions API migrated (discontinued May 2025)
- [ ] Detailed targeting exclusions replaced with suppression strategy (removed March 2025)
- [ ] Instant Experience funnel metric adjustment (June 2025)
- [ ] 7d_view/28d_view API reporting updated (removed October 2025)
- [ ] ASC evaluated for ecommerce
- [ ] CPM trend accounted for (Meta avg +9% in 2025)
```

## Example

**Input:** "I run a DTC skincare brand on Meta. Spending $8K/month across 6 campaigns. ROAS dropped from 4.2 to 2.1 over the last month. What's going on?"

**Output:**

## Meta Ads Account Audit

### Health Score: 4.8 / 10 — Significant Issues

### Critical Issues
1. **Creative fatigue across all prospecting ad sets** — Average creative frequency is 6.8 (threshold: >4). CTR dropped 34% over 30 days. Same 5 creatives running for 45+ days with no refresh. Meta research: 45% conversion drop at 4 exposures. — ICE: 10×9×7 = 630
   - Action: Introduce 4-6 new creative variants per ad set immediately. Mix formats (add video/Reels if currently static-only). Pause creatives with frequency >6
   - Expected impact: Meta data shows avg 8% conversion rate improvement when refreshing fatigued creatives. With this level of fatigue, impact likely higher

2. **No CAPI — Pixel only** — Missing ~20-30% of conversion events. EMQ unavailable (no server events). Algorithm optimizing on incomplete data. — ICE: 9×9×8 = 648
   - Action: Implement CAPI (Shopify native if on Shopify, server-side GTM otherwise). See **meta-ads-tracking-setup** skill for full implementation guide
   - Expected impact: 20-30% more conversion signals → better optimization → lower CPA

3. **6 campaigns with $8K/month = ~$44/day per campaign** — Most ad sets getting <15 conversions/week. 4 of 6 campaigns stuck in Learning Limited. Meta: need 50+/week for optimal, 25+ minimum. — ICE: 9×8×6 = 432
   - Action: Consolidate to 3 campaigns max: (1) Prospecting, (2) Retargeting, (3) Testing. This concentrates budget for faster learning
   - Expected impact: Exiting learning phase → up to 68% lower CPA (Meta benchmark)

### Optimization Opportunities
1. **No customer exclusions on prospecting** — Existing customers seeing acquisition ads. Wasted spend + inflated ROAS (counting repeat purchases as new). — ICE: 7×8×9 = 504
   - Action: Upload customer list, exclude from prospecting campaigns. Detailed targeting exclusions removed March 2025 — use customer list suppression instead
   - Expected impact: 10-15% budget recovered from wasted impressions on existing customers

2. **All creatives are 1:1 square** — Missing 4:5 vertical which outperforms 1:1 by ~15% in Feed (Billo data). No Reels-native content. — ICE: 6×7×6 = 252
   - Action: Create 4:5 versions of top performers. Test Reels-native vertical video
   - Expected impact: ~15% Feed performance improvement from aspect ratio alone

3. **No ASC campaign** — DTC ecommerce brand with sufficient volume should test Advantage+ Shopping Campaigns. Typically reduces cost per purchase ~12% vs manual. — ICE: 7×6×5 = 210
   - Action: Launch ASC with top 10-20 creatives, set 70/30 new/existing split
   - Expected impact: ~12% CPA reduction if ASC outperforms manual (test with 30% of budget)

### Working Well
- Pixel is active and firing correctly on all pages
- Attribution window set to 7d click / 1d view (correct default)
- Product catalog connected and dynamic ads functional

### Priority Action Plan (next 30 days)
| Priority | Action | ICE Score | Timeline | Owner |
|----------|--------|-----------|----------|-------|
| 1 | Implement CAPI | 648 | Week 1-2 | Dev + media buyer |
| 2 | Refresh all creatives (new variants + formats) | 630 | Week 1-2 | Creative + media buyer |
| 3 | Upload customer exclusion list | 504 | Day 1 | Media buyer |
| 4 | Consolidate 6 campaigns → 3 | 432 | Week 1 | Media buyer |
| 5 | Create 4:5 vertical creative variants | 252 | Week 2-3 | Creative team |
| 6 | Launch ASC test | 210 | Week 3-4 | Media buyer |

### 2025 Platform Change Flags
- [ ] CAPI implemented — **NOT CONFIGURED (Critical)**
- [x] Offline Conversions API — N/A (no offline events)
- [ ] Detailed targeting exclusions — replaced with customer list suppression
- [x] Instant Experience — not using
- [x] 7d_view/28d_view — not pulling deprecated windows
- [ ] ASC evaluated — **not yet tested**
- [ ] CPM trend — Meta avg ad price up 9% in 2025, contributing to higher costs

## Guidelines

- **Don't audit creative without frequency data at the creative level.** Ad-level or ad-set-level frequency understates the problem. Meta's own research measures fatigue at the creative level across all ads/campaigns using that creative.
- **Don't recommend drastic changes during learning phase.** If an ad set launched <7 days ago, note it's in learning and defer judgment. Changes during learning reset the clock.
- **Don't recommend hyper-segmented audiences.** The 2025 Meta algorithm prefers consolidated audiences with conversion signals over manually sliced interest targeting. Combine warm + cold in single ad sets.
- **Don't ignore the 50/25 rule.** 50 conversions/week/ad set is optimal; 25 is minimum for stability. If an ad set can't reach 25, recommend consolidating or optimizing for a higher-funnel event.
- **Account for CPM inflation.** Meta's average ad price rose 9% in 2025. A ROAS decline may partly reflect higher costs, not just campaign degradation. Check CPMs alongside efficiency metrics.
- **Flag Offline API migration.** If the account references Offline Event Sets or Offline Conversions API, flag that it was discontinued May 2025 and must migrate to standard CAPI.
- **Attribution API update.** `7d_view` and `28d_view` windows removed from Insights API October 2025. Flag any reporting that still references these.
- **CTR benchmarks vary.** WordStream September 2025 data shows Traffic campaigns average 1.71% CTR, but Lead and Sales campaigns vary significantly by industry. Say "benchmark varies by industry" rather than applying a single number.
- **Cross-references:** For tracking fixes, use the **meta-ads-tracking-setup** skill. For creative testing frameworks, use the **meta-ads-creative-engine** skill. For Google Ads auditing, use the **google-ads-audit** skill. For cross-channel budget analysis, use the **ad-spend-allocator** skill.
- **Confidence:** If audit data is incomplete (no Events Manager access, missing creative-level frequency, limited date range), state what conclusions are reliable and what needs more data.
