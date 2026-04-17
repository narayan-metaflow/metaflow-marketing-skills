---
name: campaign-analyzer
description: "Analyze paid media performance across dimensions, funnels, cohorts, and channels — turning data into actionable insights and business narratives."
---

## Process

1. **Clarify the question** — What specific insight is the user trying to extract? ("Why is CPA rising?" vs "What's the LTV by channel?")
2. **Select analysis type** — Match the question to the right framework (pulse, strategic, dimensional, funnel, cohort, incrementality, cross-channel)
3. **Gather required data** — Request exports needed for the analysis
4. **Run the analysis** — Apply the specific method
5. **Identify the story** — What happened, why it happened, what to do about it
6. **Deliver findings** — Structured output with insights, not just metrics

## Analysis Type Selector

| Question | Analysis Type | Time Horizon |
|----------|--------------|-------------|
| "Is anything broken right now?" | Daily pulse monitoring | 1-7 days |
| "How are we trending this week/month?" | Weekly/monthly strategic review | 7-30 days |
| "Where is performance coming from/going to?" | Multi-dimensional analysis | 30-90 days |
| "Where are users dropping off?" | Funnel analysis | 7-30 days |
| "How valuable are acquired customers over time?" | Cohort & LTV analysis | 30-365+ days |
| "Is this channel actually driving incremental results?" | Incrementality testing | 30-90 days |
| "How do channels compare and work together?" | Cross-channel analysis | 30-90 days |

## Daily Pulse Monitoring

**What to check:**
- Cost, impressions, clicks, conversions, spend pacing vs budget
- Sudden metric changes (CPC spikes, conversion drops, budget exhaustion)
- Meta: learning phase status per ad set
- Disapprovals, policy flags, payment issues

**Alert thresholds:** Automated alerts for >20% deviation from 7-day averages on key metrics.

**What NOT to do:** Don't optimize during daily pulse. Daily review is for catching emergencies, not making strategic changes. Save optimization decisions for weekly reviews.

**Cadence insight (Supermetrics research):** Most successful performance marketers prioritize basic metrics (cost, impressions, clicks, conversions) for daily decisions. Deeper analysis (frequency, LTV, attribution) is purposeful, not constant.

## Weekly/Monthly Strategic Review

**Key metrics by platform:**

| Google Ads | Meta Ads |
|-----------|---------|
| CTR, CPC, CPA, ROAS | CPM, CPC, CPA, ROAS |
| Conversion rate | Frequency, Conversion rate |
| Impression share | Reach, Delivery status |
| Quality Score trends | Learning phase status |
| Search term movement | Creative performance |

**Review structure:**
1. **Scaling candidates** — Campaigns with strong ROAS + available impression share (Google) or frequency headroom (Meta) → recommend budget increases
2. **Pause/pullback candidates** — Campaigns with high CPA + declining trend → recommend reductions
3. **Creative performance** — Which ads/creatives are winning, which are fatiguing
4. **Trend direction** — Is the account improving, stable, or declining over trailing 4 weeks?

## Multi-Dimensional Performance Analysis

Slice performance across dimensions to find hidden drivers.

### Dimensions to Analyze

| Dimension | What to Look For |
|-----------|-----------------|
| Device type | Mobile vs desktop vs tablet CPA/ROAS differences |
| Geography | Regional performance variance (country, state, DMA) |
| Time of day | Hour-by-hour conversion rate patterns |
| Day of week | Day-by-day performance patterns |
| Audience segment | Segment-level CPA/ROAS comparison |
| Match type (Google) | Broad vs phrase vs exact performance |
| Placement (Meta) | Feed vs Stories vs Reels vs Audience Network |
| Creative concept | Concept-level performance patterns |
| Landing page | Landing page-level conversion rate |
| Funnel stage | TOF vs MOF vs BOF performance |

### Cross-Tab Analysis

Combine dimensions to find non-obvious patterns:

| Cross-Tab | What It Reveals | Example |
|-----------|----------------|---------|
| Device × Time of day | When mobile converts vs desktop | Mobile converts 3x better in evening hours |
| Audience × Creative | Which creatives resonate with which audiences | UGC wins with Lookalike, studio wins with cold broad |
| Geography × Product | Regional product preferences | Coastal states prefer product A, interior prefer product B |
| Day × Creative concept | Which concepts work when | Emotional creative wins Sunday, rational wins Tuesday |
| Placement × Video length | Optimal length per placement | 15s wins Stories, 30s wins Feed |

### Red Flags to Watch

- **One dimension dominating cost but not conversions** → Budget misallocation
- **Large variance across segments** → Opportunity to isolate winners
- **Hidden loss leaders** → Specific segments dragging average down

## Funnel Analysis

Map every stage from impression to final conversion.

### Standard Funnel Stages

| Stage | Metric | Benchmark to Check |
|-------|--------|-------------------|
| Impression | Impressions | Reach sufficient for audience? |
| Click | CTR, clicks | Industry CTR benchmarks |
| Landing page view | Landing page views | Bounce rate, load speed |
| Micro-conversion | AddToCart, video 50%, scroll depth | Stage-specific |
| Macro-conversion | Purchase, Lead, Signup | Target CPA / ROAS |

**Calculate stage-by-stage conversion rates.** Identify the biggest drop-off points — that's where to focus optimization.

### Drop-Off Diagnostics

| Drop-Off Point | Likely Cause | Fix |
|---------------|-------------|-----|
| Impression → Click | Low CTR | Ad copy, ad creative, targeting |
| Click → Landing Page View | Slow page, 404s, disconnected UX | Page speed, fix broken flows |
| Landing Page View → Add to Cart | Landing page message mismatch, bad UX | Rewrite headlines, improve CTA |
| Add to Cart → Checkout | Friction, unexpected costs | Simplify checkout, show total costs |
| Checkout → Purchase | Payment issues, trust concerns | Add trust signals, multiple payment options |

**Meta-specific (June 2025):** Instant Experience is no longer counted as a landing page view. If your Meta funnel metrics suddenly showed a drop in mid-2025, this is likely why. Adjust funnel definitions accordingly.

## Cohort & Lifetime Value Analysis

### Cohort Windows

Track customer cohorts at standard intervals:
- Day 1, 7, 14, 30 (short-term retention)
- Day 30, 60, 90 (medium-term)
- Day 180, 365 (long-term LTV)

### Metrics to Track per Cohort

| Metric | What It Tells You |
|--------|------------------|
| Repeat purchase rate | Customer stickiness |
| Average order value over time | Purchase behavior evolution |
| Time to second purchase | Engagement health |
| LTV (revenue per cohort) | True customer value |
| CAC : LTV ratio | Channel/campaign profitability |

### LTV by Acquisition Source

Compare LTV by channel, campaign, and audience segment:

| Channel | CPA | 30-day LTV | 90-day LTV | 365-day LTV | LTV:CAC |
|---------|-----|-----------|-----------|-------------|---------|
| Google Search (brand) | $45 | $180 | $250 | $380 | 8.4x |
| Meta ASC | $52 | $145 | $210 | $340 | 6.5x |
| Google PMax | $58 | $120 | $180 | $290 | 5.0x |
| Meta Prospecting | $65 | $95 | $150 | $250 | 3.8x |

**What this reveals:** Channels with higher short-term CPA may still be profitable if LTV is strong. Channels with low CPA but poor LTV are actually expensive.

### POAS > ROAS

**POAS (Profit On Ad Spend):** Gross profit ÷ ad spend. Better than ROAS for ecommerce because it factors in actual product margin.

Example: $500 ROAS looks great until you learn the product has 8% margin → true profit is $40 per $100 spent. Another channel at 300% ROAS with 40% margin returns $120 profit per $100 spent.

**Implementation:** Feed LTV data back into value-based bidding. Use Google's Maximize Conversion Value + tROAS and Meta's ROAS Goal with dynamic conversion values.

## Incrementality & Lift Testing

Platform-reported ROAS often overstates channel impact (credit-grabbing from organic demand).

### Methods

| Method | How | When |
|--------|-----|------|
| **Google Conversion Lift** | Holdout test within Google Ads | 2025 update: lower spend/conversion minimums. Can run at campaign level or manager account level |
| **Meta Conversion Lift** | Holdout group excluded from ads | Need sufficient volume; request via Meta rep |
| **Geo-based lift test** | Turn off campaigns in specific regions, compare | Need multi-region footprint; works cross-platform |
| **MMM (Marketing Mix Modeling)** | Statistical model of all channels vs outcomes | Larger budgets; Google's Meridian is open-source |
| **Holdout experiments** | Target cohort gets no ads, measure difference | Requires first-party audience control |

### Questions Incrementality Answers

- "If I turned off YouTube, what happens to non-brand search?"
- "If I turned off Meta prospecting, does total revenue change?"
- "Is brand search capturing demand created by upper-funnel channels?"
- "Are retargeting conversions incremental or would they have happened anyway?"

**MMM + incrementality calibration:** Google's Meridian (open-source MMM, 2025) combines granular media signals with incrementality calibration. The right way to do cross-channel budget planning at scale.

## Cross-Channel Analysis

### Marketing Efficiency Ratio (MER)

**MER = Total Revenue ÷ Total Ad Spend (all channels)**

- Blended metric. Resilient to attribution changes
- Goal: maintain or improve over time
- Doesn't tell you which channel deserves credit, but tells you overall efficiency

### Marginal ROAS

As you increase spend in a channel, each additional dollar produces less return (diminishing returns). The question: at what spend level does marginal ROAS drop below target?

**Method:**
1. Plot spend vs revenue for a channel over 6-12 months
2. Fit a diminishing returns curve
3. Find the spend level where marginal ROAS = target ROAS
4. That's your efficient frontier for that channel

### Channel Role Assignment

Not every channel should optimize to the same metric. Assign roles:

| Role | Primary Metric | Example Channels |
|------|---------------|-----------------|
| **Awareness** | Reach, CPM, Ad Recall Lift | YouTube Demand Gen, Meta Awareness |
| **Consideration** | CTR, engagement, ViewContent | Meta Prospecting, Google Display |
| **Conversion** | CPA, ROAS | Google Search Brand, Meta Retargeting |
| **Full-funnel scale** | MER, blended ROAS | Google PMax, Meta ASC |

**2025 Google feature:** Import cost data from Meta, TikTok, Pinterest directly into GA4 for cross-platform comparison in one place.

For multi-channel budget reallocation, use the **ad-spend-allocator** skill.

## Output Format

```
## Campaign Performance Analysis

### Question Analyzed
[Specific question the analysis addresses]

### Data Sources
- [Platforms]
- [Date range]
- [Segments included]

### Key Findings
1. **[Finding 1]** — [Data point] — [Why this matters]
2. **[Finding 2]** — [Data point] — [Why this matters]
3. **[Finding 3]** — [Data point] — [Why this matters]

### Supporting Data
[Tables and metrics supporting findings]

### Narrative
[Story: what happened, why it happened, what to do]

### Recommended Actions
| Priority | Action | Impact | Owner | Timeline |
|----------|--------|--------|-------|----------|
| 1 | [action] | [expected impact] | [who] | [when] |

### Data Confidence & Caveats
- [What the data supports reliably]
- [What needs more information or isn't certain]
```

## Example

**Input:** "Our ecommerce account's blended ROAS dropped from 3.8x to 2.9x over the last quarter. Google is steady, Meta declined hard. I have 90 days of data by channel, campaign, and creative. Help me figure out what's happening."

**Output:**

## Campaign Performance Analysis

### Question Analyzed
Why did blended ROAS decline from 3.8x to 2.9x in Q1 2026, and which channel/campaign/creative drove the decline?

### Data Sources
- Google Ads + Meta Ads exports
- 90-day window (January–March 2026)
- Segmented by channel, campaign, creative

### Key Findings
1. **Meta drove 85% of the blended decline** — Google ROAS held at 4.1x (down from 4.2x — flat). Meta ROAS dropped from 3.5x to 2.1x (-40%). Blended decline is almost entirely Meta
2. **Meta decline is creative fatigue, not audience or tracking** — Top 3 creatives running 50+ days each. Average creative frequency climbed from 3.1 to 5.8 over 90 days. Meta research: 45% conversion drop at 4+ exposures
3. **CPM inflation contributed ~15% of Meta decline** — Meta average ad price up 9% in 2025. For this account, CPMs rose from $12.40 to $14.20 (+15%). This is real cost pressure, not just creative failure
4. **Google is stable because Smart Bidding is managing efficiency** — PMax and Search are both on tROAS with regular n-gram review. No similar discipline on Meta creative

### Supporting Data

**Channel-level ROAS trend:**
| Channel | Jan | Feb | Mar | Change |
|---------|-----|-----|-----|--------|
| Google Search | 4.5x | 4.3x | 4.0x | -11% |
| Google PMax | 3.8x | 3.9x | 4.1x | +8% |
| Google blended | 4.2x | 4.1x | 4.1x | -2% |
| Meta ASC | 3.6x | 2.9x | 2.2x | -39% |
| Meta Retargeting | 5.2x | 3.8x | 2.4x | -54% |
| Meta blended | 3.5x | 2.8x | 2.1x | -40% |
| **Blended total** | **3.8x** | **3.2x** | **2.9x** | **-24%** |

**Meta creative frequency trend:**
| Creative | Jan freq | Feb freq | Mar freq | Status |
|---------|---------|---------|---------|--------|
| Creative A (static) | 2.8 | 4.5 | 6.2 | Severely fatigued |
| Creative B (video) | 3.2 | 5.1 | 6.8 | Severely fatigued |
| Creative C (carousel) | 2.9 | 4.2 | 5.4 | Fatigued |
| Creative D (UGC video) | 1.8 | 2.4 | 3.1 | Healthy (recent addition) |

### Narrative
Your blended ROAS decline is a Meta creative fatigue story with a CPM inflation chaser. Google is fine — Smart Bidding + disciplined n-gram review keeps it healthy. On Meta, you've run the same 3 creatives for 50+ days, frequency is at 5.8 across top creatives, and Meta's research shows 45% conversion rate drop at 4+ exposures. Meta's CPM increase (+9% industry-wide in 2025, +15% for your account) adds background pressure but is secondary — even at old CPMs, fatigue would still be dragging ROAS.

The silver lining: your one recent creative addition (D — UGC video, frequency 3.1) is performing well. This is the signal that creative rotation works for your audience; you just haven't been doing it.

### Recommended Actions
| Priority | Action | Impact | Owner | Timeline |
|----------|--------|--------|-------|----------|
| 1 | Pause Creative A and B (highest frequency). Launch 6 new variants (3 UGC video, 3 static) | Restore Meta ROAS toward 3.0x+ | Media buyer + creative | Week 1 |
| 2 | Build weekly creative rotation pipeline — minimum 4 new variants per week | Prevent fatigue recurrence | Creative team | Ongoing |
| 3 | Add Meta frequency automation rule — pause creatives at freq >5 | Automated fatigue protection | Media buyer | Week 1 |
| 4 | Reprice remaining Meta budget against new CPM reality — may need 10-15% budget increase to maintain same volume | Offset CPM inflation | Finance + media buyer | Week 2 |
| 5 | Replicate Google's n-gram discipline for Meta placement/creative reviews | Build sustainable Meta process | Media buyer | Ongoing |

### Data Confidence & Caveats
- **High confidence:** Creative fatigue is the primary driver. Frequency data, ROAS decline timing, and the Creative D performance all point to the same conclusion
- **Medium confidence:** CPM inflation contribution (~15%) is a rough estimate based on industry averages; your specific CPM trend confirms it's real but the exact split with creative fatigue can't be precisely calculated without an A/B test
- **Untested:** Incrementality — platform-reported ROAS may overstate true channel impact. Consider running a Meta Conversion Lift test in Q2 to validate blended ROAS represents actual business lift
- **Not included:** LTV analysis — if Meta retargeting has higher LTV, the CPA increase may be tolerable. Recommend 90-day LTV analysis as follow-up
- Use the **meta-ads-creative-engine** skill for creative testing framework implementation
- Use the **ad-spend-allocator** skill for cross-channel budget reallocation after creative rotation stabilizes

## Guidelines

- **Don't confuse correlation with causation.** Two trends moving together (ROAS down, frequency up) correlate. To confirm causation, test the intervention (refresh creative, see if ROAS recovers).
- **Don't analyze without a question.** "Tell me about the account" produces vanity dashboards. "Why did CPA rise in March?" produces insight. Always start with the specific question.
- **Don't ignore base rates.** An account with 10 conversions/day has huge daily variance. A change that looks significant may be noise. Require statistical meaningfulness (50+ conversions per segment for reliable segment analysis).
- **Don't overweight platform-reported ROAS.** Both Google and Meta take credit for conversions that may have happened anyway. For strategic decisions, triangulate platform ROAS with MER, incrementality, and LTV.
- **Don't report metrics without narrative.** "CPA is $62" is data. "CPA rose from $48 to $62 because creative fatigue hit in mid-February, same period frequency exceeded 4, confirmed by Creative D's outperformance proving rotation works" is insight. Insight drives action.
- **Don't skip segmentation.** Account averages hide winning and losing segments. Always break down by device, geo, audience, creative, placement. Hidden patterns drive hidden wins.
- **Meta Instant Experience change (June 2025):** No longer counts as a landing page view. If Meta funnel metrics look broken mid-2025, this is why.
- **Meta attribution API change (October 2025):** `7d_view` and `28d_view` windows removed from Insights API. Reports pulling these need updates.
- **Don't overreact to a single week.** Weekly variance is normal. Look for 2+ week trends before declaring changes.
- **Cross-references:** For Google-specific optimization actions, use the **google-ads-optimizer** skill. For Meta-specific optimization, use the **meta-ads-optimizer** skill. For creative testing frameworks, use the **meta-ads-creative-engine** skill. For cross-channel budget reallocation, use the **ad-spend-allocator** skill. For reporting the analysis to stakeholders, use the **paid-media-reporter** skill. For full audits, use **google-ads-audit** or **meta-ads-audit**.
- **Confidence:** Channel attribution is inherently imperfect. All multi-touch attribution models make assumptions. State what the data supports clearly and what requires incrementality testing to confirm.
