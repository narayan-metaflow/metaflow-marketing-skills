---
name: meta-ads-optimizer
description: "Optimize running Meta Ads campaigns — audience refinement, budget scaling, learning phase management, placement optimization, automation rules, and creative rotation coordination."
---

## Process

1. **Diagnose** — Identify the specific performance issue (rising CPA, declining ROAS, learning phase stuck, placement inefficiency, etc.)
2. **Check tracking first** — Most Meta performance issues trace back to signal quality. Verify CAPI, EMQ, event deduplication before optimizing bids/audiences
3. **Analyze root cause** — Use the Diagnostic Decision Tree
4. **Select optimization lever** — Match problem to framework
5. **Implement changes** — Respect learning phase (don't touch ad sets <7 days old or with recent edits)
6. **Monitor for 5-7 days minimum** — Meta needs time to stabilize after changes
7. **Iterate** — Small, incremental adjustments

## Diagnostic Decision Tree

| Symptom | Most Likely Cause | Start Here |
|---------|------------------|-----------|
| ROAS declining over 2-4 weeks | Creative fatigue (most common) | Creative Rotation → use **meta-ads-creative-engine** skill |
| CPA rising, frequency >4 | Confirmed creative fatigue | Creative Rotation |
| CPA rising, frequency normal | CPM inflation or competition | Budget/Bid Optimization → review CPM trend |
| Ad sets stuck in Learning Limited | Too many small ad sets OR weak signals | Learning Phase Management |
| Delivery dropping suddenly | Check disapprovals, Special Ad Category flags, payment issues | Account Health Check |
| Conversions dropped but clicks stable | Tracking issue — Pixel/CAPI problem | Use **meta-ads-tracking-setup** skill |
| ASC underperforming | Weak tracking, insufficient creative, or ratio wrong | ASC Optimization |
| Great CPA but can't scale | Audience saturation or budget jumps too aggressive | Scaling Playbook |
| Retargeting CPA worse than prospecting | Audience too small (<1K) or fatigued | Audience Refinement |

## Learning Phase Management

Meta's most critical optimization principle: keep ad sets OUT of learning phase as much as possible. Meta research: advertisers with <20% of spend in learning see up to 68% lower CPA.

### Learning Phase Rules

| Rule | Detail |
|------|--------|
| Duration | 5-7 days minimum (50 events needed to exit) |
| What resets learning | Budget change >20%, audience change, creative swap, bid/optimization change, attribution window change |
| What doesn't reset | Adding new ads (without removing old), small budget changes (<20%), pausing within ad set |
| Goal | <20% of total spend in learning phase |
| Event volume needed | 50+ conversions/week per ad set to exit learning optimally. 25+ minimum for stability |

### Fixing "Learning Limited" Status

| Cause | Fix |
|-------|-----|
| Budget too low for optimization event | Increase budget OR optimize for higher-funnel event (e.g., switch Purchase → AddToCart if <25 purchases/week) |
| Audience too narrow | Expand audience (broader lookalikes, remove restrictive filters) |
| Too many ad sets competing | Consolidate ad sets with overlapping audiences |
| Weak Pixel/CAPI signals | Fix tracking first — use **meta-ads-tracking-setup** skill |
| Creative failing to attract conversions | Test new creative (use **meta-ads-creative-engine** skill) |

**Consolidation rule of thumb:** If you have 5+ ad sets stuck in Learning Limited, consolidate to 2-3 larger ad sets with pooled budget. The algorithm prefers fewer, larger ad sets with sufficient event volume.

## Audience Optimization

### Audience Refresh Triggers

| Trigger | Action |
|---------|--------|
| Frequency >4 at creative level for 7+ days | Audience fatigue — expand audience or refresh creative |
| CPA rising with stable creative | Audience saturation — expand lookalikes or add broader audience |
| Retargeting audience <1,000 users | Too small — expand recency window or consolidate with cold |
| CRM list >60 days old | Refresh customer match list |
| Custom audience not growing | Check event pixel firing; audiences capture from creation date forward |

### Expansion Tactics

| Current State | Expansion Move |
|--------------|---------------|
| 1% lookalike saturated | Test 2-3% lookalike |
| 3% lookalike saturated | Test 5-10% or broad targeting |
| Narrow interest targeting | Remove interests, test Advantage+ audience |
| Country-specific lookalike | Expand to new countries with localized creative |

**2025 best practice:** Accounts with strong Pixel + CAPI signals typically find that broader audiences outperform narrower ones. The algorithm does the targeting work — your job is providing creative that converts.

### Exclusion Maintenance

**Post-March 2025:** Detailed targeting exclusions removed. Use customer list exclusions instead.

| Exclusion | Apply To | Refresh Cadence |
|-----------|---------|----------------|
| Past purchasers (all time) | Prospecting campaigns | Monthly |
| Recent purchasers (30 days) | Retargeting campaigns | Monthly |
| Active subscribers | Prospecting | Monthly |
| Engaged leads in pipeline | Prospecting | Weekly |

## Budget Scaling Playbook

### Vertical Scaling (increase budget on winners)

| Action | Rule |
|--------|------|
| Budget increase | 20% maximum per change |
| Frequency | No more than once per 3 days |
| Requirement | Ad set in Active status (not Learning), CPA at or below target for 3+ consecutive days |
| Monitor | Watch for efficiency decay after each increase |
| If efficiency drops | Hold for 7 days before next increase, or roll back |

**Why 20%?** Larger jumps can reset the learning phase or destabilize delivery by shifting the algorithm's pacing too quickly.

### Horizontal Scaling (duplicate or expand)

| Action | When |
|--------|------|
| Duplicate winning ad set with new audience | Current ad set saturated (rising frequency) |
| Launch new lookalike tier (1% → 2% → 5%) | Need new audience pool |
| Launch in new geographies | Validated product-market fit in existing markets |
| Add new creative variants | Fatigue detected (frequency >4) |

### CPM Context (Critical 2025 Factor)

Meta's average ad price rose 9% in 2025 (Meta Q1 2025 earnings). When diagnosing rising CPA, always check if CPM inflation is a contributing factor — it may be partial cause of efficiency decline, not creative or audience failure.

## Placement Optimization

### Advantage+ Placements (Default)

Let Meta distribute across all eligible placements. Recommended default unless:
- You have creative only in certain specs (e.g., only 1:1 square — missing 4:5 Feed and 9:16 Reels)
- You have strict brand safety requirements
- You've verified via placement breakdown that specific placements consistently underperform

### Manual Placement Review

Check placement-level performance monthly:

| Placement | Watch For | Fix |
|-----------|----------|-----|
| Facebook Feed | Strong baseline — primary performance | Ensure 4:5 vertical creative |
| Instagram Feed | Strong for younger audiences | Ensure 4:5 vertical creative |
| Instagram Stories | Ephemeral, high engagement | 9:16 full vertical, captions mandatory |
| Reels | Fastest-growing, mobile-first | 9:16, attention-grabbing hooks |
| Audience Network | Clicks but low quality? | Exclude if conversion quality poor |
| Messenger | Specific use cases | Only include with messaging objective |
| Right Column | Lower CTR but cheap CPM | Include for remarketing |

**Decision rule:** Exclude a placement if its CPA is >2x account average for 30+ days with sufficient volume (100+ clicks).

## Automation Rules

Set up rules in Meta Ads Manager OR use third-party tools (Birch — formerly Revealbot, Madgicx).

### Core Automation Rules

| Rule | Trigger | Action |
|------|---------|--------|
| Pause underperformers | CPA > 2x target for 3 days AND 100+ clicks | Pause ad |
| Budget scale winners | CPA < 70% of target for 3 days AND in Active status | Increase budget 15% |
| Frequency control | Frequency > 5 at creative level | Pause creative (or notify) |
| Low-quality placement exclusion | Placement CPA > 3x account avg for 7 days | Exclude placement |
| Budget reallocation | Ad set A CPA < B CPA by 30%+ | Shift 20% of B's budget to A |
| Creative refresh alert | CTR drops 20% below 7-day average | Notify team to add new creative |

**Best practices:**
- Start with notification-only rules before auto-actions
- Set conservative thresholds first — tighten over time
- Always require minimum volume (100+ clicks, 10+ conversions) before rules trigger
- Exclude learning phase ad sets from optimization rules

## ASC Optimization

Advantage+ Shopping Campaigns have limited manual levers. Optimize these:

| Lever | How |
|-------|-----|
| Creative quality and volume | Add new creatives weekly. Maintain 15-30 active creatives (max 150 per campaign) |
| Customer ratio (new vs existing) | Test 70/30, 80/20, 90/10 splits based on your actual new customer acquisition needs |
| Catalog quality | Keep product feed fresh and complete — ASC uses catalog for dynamic product ads |
| Budget sufficiency | Need 100+ conversions/week for ASC to work well. If volume insufficient, switch to manual campaigns |
| Pixel + CAPI strength | ASC relies entirely on signal quality. EMQ below 6.0 = ASC underperforms |

**When to ditch ASC:** If ASC underperforms manual campaigns after 30 days with strong creative and tracking, the account may not have sufficient conversion volume or signal quality for ASC to work. Fall back to manual 3-campaign structure (Prospecting + Retargeting + Testing).

## Output Format

```
## Meta Ads Optimization Plan

### Current Performance Summary
| Metric | Current | Target | Gap |
|--------|---------|--------|-----|
| CPA | $[X] | $[X] | [gap] |
| ROAS | [X]x | [X]x | [gap] |
| Frequency | [X] | <4 | [status] |
| Learning phase spend % | [X]% | <20% | [status] |

### Root Cause Diagnosis
[Specific reason for the issue, tied to the Diagnostic Decision Tree]

### Optimization Actions (ICE-prioritized)
| Priority | Action | Lever | ICE Score | Timeline |
|----------|--------|-------|-----------|----------|
| 1 | [action] | [audience/budget/placement/automation] | [score] | [when] |

### Automation Rules to Add
[Specific rules with thresholds]

### Monitoring Plan
- Check [metric] after [X] days (minimum 5-7 for learning phase)
- Success criteria: [specific]
- Rollback plan: [if it doesn't work]
```

## Example

**Input:** "I run an ecommerce store on Meta. Spending $12K/month. ROAS was 4.5x last month, now 2.8x. Frequency on my top ad set is 5.2. Using ASC. What should I do?"

**Output:**

## Meta Ads Optimization Plan

### Current Performance Summary
| Metric | Current | Target | Gap |
|--------|---------|--------|-----|
| ROAS | 2.8x | 4.5x | -38% |
| Frequency | 5.2 | <4.0 | +30% over threshold |
| CPA | (implied rising) | Historical | Needs calculation |
| Learning phase spend % | Unknown | <20% | Needs check |

### Root Cause Diagnosis
**Creative fatigue is the primary driver.** Frequency at 5.2 is well past Meta's fatigue threshold (>4). Meta's own research: 45% conversion rate drop at 4+ exposures. Your ROAS decline (-38%) is consistent with severe fatigue.

Secondary factor: Meta's average CPM rose 9% in 2025, contributing some background cost pressure.

### Optimization Actions
| Priority | Action | Lever | ICE Score | Timeline |
|----------|--------|-------|-----------|----------|
| 1 | Refresh ASC creative: add 6-10 new creative variants, pause highest-frequency creatives | Creative | 10×9×8 = 720 | Day 1-3 |
| 2 | Verify CAPI + EMQ (ASC depends on signal quality) | Tracking | 9×8×8 = 576 | Day 1 |
| 3 | Check customer ratio setting — if 50/50, test 80/20 (new/existing) to push more acquisition | ASC config | 7×7×9 = 441 | Day 2 |
| 4 | Add fatigue automation rule: pause creatives at frequency 5+ | Automation | 7×8×8 = 448 | Week 1 |
| 5 | Mix formats — if ASC is heavy on static images, add video/Reels-native content | Creative | 7×7×6 = 294 | Week 1-2 |

### Creative Refresh Plan
Use the **meta-ads-creative-engine** skill for systematic creative testing. Immediate priorities:
1. Pause 3 highest-frequency creatives today
2. Add 6 new variants across formats: 2 static, 2 video (15-30 sec, 9:16 vertical), 2 UGC-style
3. Ensure new creative has strong 3-second hooks and captions (85% of Facebook videos watched without sound)
4. Maintain 15-30 active creatives in ASC (max ceiling is 150)

### Automation Rules to Add
| Rule | Threshold | Action |
|------|-----------|--------|
| Fatigue pause | Creative frequency > 5.0 AND 7+ days active | Pause creative |
| Low performer | Ad CPA > 2x campaign avg AND 100+ clicks | Pause |
| Creative refresh alert | 3+ ads at frequency > 4 | Notify team |

### Monitoring Plan
- **Day 3:** Verify new creatives are spending and delivering
- **Day 7:** Check frequency — should be dropping toward 3-4 range as new creatives absorb impressions
- **Day 14:** ROAS should start recovering toward 3.5-4.0x range as fatigue clears
- **Success criteria:** ROAS above 3.8x within 21 days, frequency stable below 4.0
- **Rollback:** If ROAS continues declining after creative refresh, the problem is deeper (tracking issue, offer/product problem, market shift). Use **meta-ads-audit** skill for full diagnostic.

## Guidelines

- **Don't optimize during learning phase.** 5-7 days minimum. Changes reset learning. The only exceptions are clear tracking failures (stop the bleeding) or disapprovals.
- **Don't change budgets by more than 20% at once.** Even on winners, larger jumps destabilize Smart Bidding pacing.
- **Don't ignore creative frequency.** It's the #1 leading indicator of Meta performance decline. Measure at the CREATIVE level, not ad or ad set level.
- **Don't over-segment ad sets.** 2025 algorithm prefers consolidated ad sets with 50+ conversions/week. Combine warm and cold audiences. Let the algorithm sort.
- **Don't run rules without volume minimums.** Rules triggering on 5 clicks will false-positive constantly. Require 100+ clicks and 10+ conversions minimum.
- **Don't skip tracking checks when performance drops.** A "performance issue" is often a tracking issue. Verify Pixel fires, CAPI fires, EMQ is stable before touching campaigns.
- **Don't forget CPM context.** Meta's avg CPM +9% in 2025. Some rising-CPA cases are partial CPM inflation, not creative/audience failure.
- **Offline Conversions API discontinued May 2025.** If troubleshooting offline tracking, migrate to standard CAPI with `action_source: physical_store` or `system_generated`.
- **Attribution API change (October 2025):** `7d_view` and `28d_view` windows removed from Insights API. If reports pull these, update reporting.
- **Instant Experience change (June 2025):** No longer counts as a landing page view. Don't build funnel metrics assuming it does.
- **Cross-references:** For tracking issues, use the **meta-ads-tracking-setup** skill. For creative testing and fatigue management, use the **meta-ads-creative-engine** skill. For full account diagnostic, use the **meta-ads-audit** skill. For Google Ads optimization, use the **google-ads-optimizer** skill. For cross-channel budget allocation, use the **ad-spend-allocator** skill.
- **Confidence:** Automation rule thresholds are starting points — calibrate to your account's volume and variance. ASC's ~12% CPA reduction vs manual is a Meta benchmark; results vary significantly by account.
