---
name: ad-spend-allocator
description: "Optimize budget allocation across paid media channels using Marketing Efficiency Ratio (MER), marginal ROAS analysis, diminishing returns modeling, and incrementality-informed decisions."
---

## Process

1. **Collect channel data** — Spend, revenue/conversions, and time period per channel
2. **Calculate core metrics** — MER, channel ROAS, blended CAC
3. **Assess marginal efficiency** — Where is each channel on its diminishing returns curve?
4. **Assign channel roles** — Primary driver, scaling channel, support channel, fill channel
5. **Model reallocation scenarios** — What happens if you shift $X from channel A to B?
6. **Factor incrementality** — Adjust for platform-reported vs actual incremental lift
7. **Build forecast** — Quarterly plan with seasonality and CPM trend context
8. **Recommend moves** — ICE-prioritized action plan with expected outcomes

## Core Metrics Framework

### MER vs Platform ROAS

**Marketing Efficiency Ratio (MER)** = Total Revenue ÷ Total Ad Spend (across ALL channels)

MER is the north star metric. Platform-reported ROAS overcounts because of attribution overlap — Google and Meta both claim credit for the same sale.

| Metric | What It Measures | Use For |
|--------|-----------------|---------|
| **MER** | Blended efficiency across all channels | Strategic planning, board reporting |
| **Platform ROAS** | Platform-attributed revenue ÷ platform spend | Within-platform optimization |
| **Incremental ROAS** | True lift over holdout baseline | Channel investment decisions |
| **Marginal ROAS** | ROAS on the *last* dollar of spend | Allocation decisions |
| **Blended CAC** | Total spend ÷ new customers | Efficiency per new customer |
| **LTV:CAC** | Customer lifetime value ÷ CAC | Long-term channel viability |

**Rule of thumb:** If platform ROAS sums to more than your actual MER, you have attribution overlap. The gap = overclaimed conversions.

### Target MER Benchmarks (Starting Points)

| Business Type | Healthy MER | Notes |
|--------------|-------------|-------|
| DTC ecommerce (physical products) | 3.0-5.0x | Lower for high-margin, higher for low-margin |
| Subscription/SaaS (LTV-driven) | 1.5-3.0x on first purchase | Needs 6-12 month LTV analysis |
| Lead gen (service businesses) | CPL-based, not MER | Use CAC targets instead |
| Luxury/high-AOV | 5.0-10.0x | Can tolerate higher thresholds |

**Confidence note:** MER benchmarks vary significantly by industry, margin structure, and LTV. These are starting points — calibrate to your actual unit economics.

## Marginal ROAS & Diminishing Returns

The key insight: ROAS is not linear with spend. Every channel has a curve.

### The Diminishing Returns Curve

| Zone | Characteristic | Marginal ROAS Behavior | Action |
|------|---------------|----------------------|--------|
| **Under-invested** | Budget capped, high impression share gaps | Marginal ROAS > average ROAS | Scale up aggressively |
| **Efficient frontier** | Sweet spot — spend matches demand | Marginal ROAS ≈ average ROAS | Maintain, test small increments |
| **Saturating** | Diminishing returns setting in | Marginal ROAS < average ROAS but above target | Scale carefully, watch for decay |
| **Over-invested** | Wasting spend on low-intent audiences | Marginal ROAS < target | Cut budget, reallocate |

### Identifying Your Position on the Curve

**Signals of under-investment:**
- Google Search impression share <30% (Lost IS Budget)
- Meta ad set frequency <1.5 (not reaching enough of audience)
- CPA/ROAS stable as spend increased (no efficiency loss)
- Low reach % of eligible audience

**Signals of saturation:**
- Google Search impression share >80-95%
- Meta frequency >4 with rising CPA
- ROAS declining as spend increased
- Diminishing absolute conversion growth per budget dollar

**Practical calculation of marginal ROAS:**
```
Marginal ROAS = (Revenue at spend level B − Revenue at spend level A) ÷ (Spend B − Spend A)
```

Example: Channel grew from $10K/mo ($40K rev, 4.0x ROAS) to $15K/mo ($55K rev, 3.67x ROAS).
- Marginal revenue = $55K − $40K = $15K
- Marginal spend = $5K
- Marginal ROAS = $15K ÷ $5K = **3.0x** (vs 3.67x average)
- Interpretation: The last $5K came at 3.0x. If target is 3.5x, this channel is saturating.

## Channel Role Assignment (Power Pack Thinking)

Not every channel needs to be an efficiency champion. Assign roles:

| Role | Purpose | ROAS Expectation | Example Channels |
|------|---------|-----------------|-----------------|
| **Primary driver** | Bulk of revenue, proven efficient | At or above MER target | Google Search non-brand, Meta Advantage+ Shopping |
| **Scaling channel** | Unlocking new audiences/growth | Slightly below primary, high incremental | Meta prospecting, Google PMax |
| **Support/mid-funnel** | Consideration and warming | Lower direct ROAS, assist-heavy | YouTube, Meta video, Demand Gen |
| **Fill/hygiene** | Brand defense, retargeting | Very high ROAS but low volume | Google brand, retargeting |
| **Experimental** | Testing new channels | Unknown, budget-capped | TikTok, Pinterest, LinkedIn new launch |

**Google Power Pack (2025):** Demand Gen → AI Max → PMax working together. Demand Gen creates interest at the top, AI Max captures it in search, PMax scales at the bottom. Evaluate as a system, not as siloed channels.

**Agency mistake to avoid:** Killing a "low ROAS" channel that's actually feeding your "high ROAS" channel. Run incrementality tests before defunding a suspected assist channel.

## Incrementality-Informed Allocation

Platform attribution lies. Incrementality testing tells the truth.

### Incrementality Hierarchy (highest to lowest evidence quality)

| Method | Evidence Quality | Effort |
|--------|-----------------|--------|
| Geo-based holdout tests | Highest | High — requires geo split |
| Conversion lift tests (Google, Meta native) | High | Medium — use platform tools |
| Marketing Mix Modeling (Google Meridian) | High for strategic | High — needs data science |
| Ghost ads / PSA tests | Medium-High | Medium |
| Pre-post analysis on pause events | Medium | Low (opportunistic) |
| Platform-reported ROAS alone | Low | Zero — but unreliable |

### When Incrementality Testing Is Worth It

- Before major budget shifts ($10K+ reallocations)
- When considering pausing a channel
- When two channels overlap heavily (brand search + Meta retargeting)
- Annually for MMM refresh

**Google Meridian (2025):** Google's open-source Marketing Mix Modeling framework. Incorporates granular video and Search signals. Calibrate with conversion lift tests. Best for organizations with data science capability or larger spenders ($1M+/year).

### Applying Incrementality to Allocation

If platform-reported ROAS is 5.0x but incrementality test shows 60% lift, actual incremental ROAS is 3.0x. Use the incremental number for allocation decisions.

| Channel | Reported ROAS | Incrementality | True Incremental ROAS | Action |
|---------|--------------|----------------|----------------------|--------|
| Google brand | 15x | 20% lift | 3.0x | Defensive only — don't scale beyond natural demand |
| Google non-brand | 4x | 85% lift | 3.4x | Primary driver — scale aggressively |
| Meta prospecting | 3x | 75% lift | 2.25x | Scaling channel — monitor marginal |
| Meta retargeting | 8x | 30% lift | 2.4x | Support — don't pay to reach already-converting users |

## Budget Forecasting

### Quarterly Budget Modeling

Build a forecast that accounts for:
1. **Historical seasonality** — Previous year's monthly index
2. **CPM trend** — Meta's avg ad price climbed 9% in 2025 (Meta Q1 2025 earnings); similar pressure on Google
3. **Planned initiatives** — New product launches, geo expansions, creative refreshes
4. **Diminishing returns** — Don't forecast linearly past saturation zones

### Simple Forecast Template

```
Q[X] Forecast:
  Base spend = [previous quarter adjusted for seasonality]
  CPM inflation factor = +9% (2025 Meta), +[X]% (Google)
  Expected MER = [trend analysis + planned improvements]
  Forecast revenue = Forecast spend × Expected MER
  
  Confidence range: ±15% (narrower if stable, wider if volatile)
```

### Scenario Planning

Always build three scenarios:

| Scenario | Spend Change | Expected Outcome | Risk |
|---------|-------------|-----------------|------|
| **Conservative** | Flat or -10% | Maintain current efficiency | Missing growth opportunity |
| **Base case** | +15-20% | Scale within efficient frontier | Typical execution risk |
| **Aggressive** | +40-50% | Capture growth, risk efficiency decay | Higher CPA, learning resets |

## CPM Trend Context (2025-2026)

| Platform | 2025 CPM Movement | Implication |
|----------|-------------------|-------------|
| Meta | +9% avg ad price (Q1 2025 earnings) | Rising costs compress MER — not always a performance issue |
| Google Search | Competitive pressure on non-brand | Growing Smart Bidding adoption pushes auctions |
| YouTube | Relatively stable | Still cost-efficient for reach |
| TikTok | High volatility | Check quarterly |
| LinkedIn | Premium pricing | Viable for B2B only |

**Implication for allocation:** If channel ROAS declined 10% YoY but CPMs rose 9%, the underlying efficiency is roughly flat. Don't cut a channel that's fighting macro pressure successfully.

## Reallocation Decision Framework

### Step 1: Calculate Current State

| Channel | Spend | Revenue | ROAS | Marginal ROAS | Incrementality | Role |
|---------|-------|---------|------|--------------|----------------|------|
| [channel] | $[X] | $[X] | [X]x | [X]x | [X]% lift | [role] |

### Step 2: Identify Imbalances

- Channels with marginal ROAS > target → **candidates for scaling**
- Channels with marginal ROAS < target → **candidates for cutting or restructuring**
- Channels at saturation → **hold, don't scale**
- Channels with weak incrementality → **evaluate true value**

### Step 3: Size the Move

**Conservative reallocation:** Shift 10-15% of budget at a time. Observe for 14-21 days before next move.

**Why not 50%?** Big reallocations destabilize learning on both sides. The receiving channel enters learning phase, the losing channel loses momentum. Gradual > dramatic.

### Step 4: Expected Impact Calculation

```
Expected new revenue = 
  (Remaining spend on channel A × ROAS_A) +
  (New spend on channel B × Marginal_ROAS_B) +
  (Original spend on channel B × ROAS_B)
```

If expected new revenue > current revenue, the shift is value-creating.

## Output Format

```
## Ad Spend Allocation Analysis

### Current State
| Channel | Spend | Revenue | ROAS | Marginal ROAS | Role |
|---------|-------|---------|------|--------------|------|

**Blended MER:** [X]x (target: [X]x)
**Total Spend:** $[X]/month
**Total Revenue:** $[X]/month

### Key Findings
- [Channel X] is [under-invested / saturating / over-invested]
- Marginal ROAS gap: [specific]
- Incrementality concern: [if applicable]
- CPM trend context: [Meta +9%, etc.]

### Reallocation Recommendations
| Move | From | To | Amount | Expected Impact |
|------|------|-----|--------|----------------|
| 1 | [channel] | [channel] | $[X] (X% of budget) | [specific outcome] |

### Quarterly Forecast
| Scenario | Total Spend | Expected MER | Expected Revenue |
|----------|------------|-------------|-----------------|
| Conservative | $[X] | [X]x | $[X] |
| Base | $[X] | [X]x | $[X] |
| Aggressive | $[X] | [X]x | $[X] |

### Testing & Validation Plan
- [Incrementality tests to run]
- [Monitoring cadence]
- [Rollback criteria]
```

## Example

**Input:** "DTC skincare brand. Monthly spend: Google $18K (Search + PMax), Meta $22K (ASC + prospecting), TikTok $5K, YouTube $3K. Revenue last month: $165K. I'm told by the CMO to either cut 20% or justify why not. Where should I push and where should I cut?"

**Output:**

## Ad Spend Allocation Analysis

### Current State
| Channel | Spend | Revenue (platform-reported) | ROAS | Est. Marginal ROAS | Role |
|---------|-------|----------------------------|------|-------------------|------|
| Google Search (non-brand) | $8K | $32K | 4.0x | 3.5x | Primary driver |
| Google Search (brand) | $2K | $28K | 14.0x | 5.0x (incremental) | Fill/defense |
| Google PMax | $8K | $26K | 3.25x | 2.5x | Scaling |
| Meta ASC | $15K | $48K | 3.2x | 2.4x | Primary driver |
| Meta prospecting | $7K | $14K | 2.0x | 1.8x | Scaling |
| TikTok | $5K | $8K | 1.6x | Unknown | Experimental |
| YouTube | $3K | $5K | 1.67x | Unknown | Support/MOFU |

**Blended platform ROAS (sum):** 4.0x ($161K/$48K)
**Actual MER:** $165K ÷ $48K = **3.44x**
**Attribution overlap:** ~14% (platform sum overcounts by this much)

### Key Findings
1. **TikTok and Meta prospecting are below target** — marginal ROAS underwater. These are the obvious cut candidates IF incrementality doesn't justify them
2. **Google brand search is defensive** — high reported ROAS (14x) but likely 80% would happen organically. True incremental ROAS ~3.0x. Don't scale, don't cut
3. **Google Search non-brand is primary** — healthy marginal ROAS at 3.5x, room to scale
4. **Meta ASC is the workhorse** — 3.2x with 15K spend. Still room before saturation
5. **YouTube is underfunded for meaningful signal** — $3K/mo can't support a real test. Either commit to $10K+ or kill it
6. **CPM context:** Meta +9% in 2025 means Meta ASC efficiency is holding up against pressure — don't punish it for macro costs

### Reallocation Recommendations (don't cut 20% — shift 20%)
| Priority | Move | From | To | Amount | Expected Impact |
|---------|------|------|-----|--------|----------------|
| 1 | Kill TikTok test OR commit $10K+ | TikTok | Google Search non-brand | $5K | +$17-18K revenue at 3.5x marginal |
| 2 | Reduce Meta prospecting | Meta prospecting | Meta ASC | $3K | ASC has better marginal; prospecting feeds ASC but at 1.8x marginal, it's too expensive |
| 3 | Kill YouTube at this scale | YouTube | Google Search non-brand | $3K | $3K is below YouTube's signal threshold — reallocate |
| 4 | **Net result:** | | | No cut; reallocation | Expected MER lift to 3.7x |

### Counter-Argument to Cutting 20%
Cutting 20% ($9.6K) proportionally would:
- Cut $1.6K from Google non-brand (the best performer) — **value destructive**
- Cut $3K from Meta ASC — **value destructive**
- Cut $1.6K from Google brand — **unnecessary, brand defense is cheap**

Instead: **Shift the same $9.6K from underperformers to overperformers.** Keep total spend at $48K, raise expected revenue to ~$177K, MER moves from 3.44x → ~3.69x.

### Quarterly Forecast (next 3 months)
| Scenario | Monthly Spend | Expected MER | Expected Revenue | Notes |
|----------|--------------|-------------|-----------------|-------|
| **Conservative (CMO's cut)** | $38.4K | 3.5x | $134K/mo | Value destructive |
| **Base (reallocation)** | $48K | 3.7x | $178K/mo | Recommended |
| **Aggressive (scale winners)** | $58K | 3.5x | $203K/mo | Requires creative refresh pipeline |

### Incrementality Testing Plan
Before any major move, run:
1. **Google brand holdout test** (1 month) — confirm true incremental value
2. **Meta prospecting geo-split test** — verify it's feeding ASC vs wasted
3. **YouTube investment test** — if keeping, commit $10K for 60 days to get real signal

### Monitoring Plan
- Weekly MER tracking vs 3.7x target
- Marginal ROAS calculation monthly per channel
- CPM trend overlay — separate cost pressure from performance decay
- Rollback: if reallocation drops MER below 3.3x after 30 days, revert

## Guidelines

- **Don't sum platform ROAS and call it blended ROAS.** Platforms overclaim. Use MER (total revenue ÷ total spend) as the north star.
- **Don't make allocation decisions on platform-reported ROAS alone.** Platform ROAS overcounts by 10-30% typically. Incrementality testing is the gold standard.
- **Don't shift more than 20% of a channel's budget at once.** Destabilizes learning on both sides. Gradual reallocation (10-15% moves) preserves performance.
- **Don't kill a "low ROAS" channel without testing incrementality.** It may be feeding your "high ROAS" channel. Run a holdout test first.
- **Don't ignore diminishing returns.** Scaling past the efficient frontier wastes money. Monitor marginal ROAS, not just average.
- **Don't forecast linearly.** Diminishing returns are nonlinear. 2x budget ≠ 2x revenue in most channels.
- **Don't conflate CPM inflation with performance decay.** Meta +9% CPM in 2025 means some "decline" is macro, not campaign failure.
- **Don't run $3K monthly tests and expect signal.** Each channel has a minimum signal threshold. Under-funded experiments produce noise.
- **Don't assume MMM output without incrementality calibration.** Google Meridian and other MMMs need incrementality experiments to calibrate. Uncalibrated MMM is directionally useful but not decisive.
- **Cross-references:** For within-platform optimization, use the **google-ads-optimizer** and **meta-ads-optimizer** skills. For channel-specific analysis, use the **campaign-analyzer** skill. For reporting the allocation story to stakeholders, use the **paid-media-reporter** skill.
- **Confidence:** Target MER benchmarks vary by industry, margin, and LTV. CPM trend data from Meta Q1 2025 earnings may shift quarter to quarter. Incrementality ranges are illustrative — your account will differ.
