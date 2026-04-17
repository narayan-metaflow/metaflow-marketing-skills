---
name: meta-ads-creative-engine
description: "Build a systematic creative testing, production, and rotation pipeline for Meta Ads — prevent fatigue, scale winners, and maintain performance through structured experimentation."
---

## Process

1. **Audit current creative state** — Performance by concept, format, fatigue signals
2. **Identify testing gaps** — What angles, formats, or hooks haven't been tested?
3. **Plan testing framework** — Concept vs variation tests, budget allocation
4. **Produce creative** — Modular approach, multiple variants from each concept
5. **Launch tests** — Isolate variables, proper test windows
6. **Analyze results** — Declare winners, identify patterns, scale winning elements
7. **Rotate** — Replace fatigued creative with fresh variants

## Creative Testing Framework

### Two Layers of Testing

**Layer 1: Concept Testing (Big Ideas)**
- Test fundamentally different approaches
- Examples: Emotional vs rational appeal, UGC vs polished studio, testimonial vs demo, problem-first vs benefit-first
- Use when: Launching new campaigns, exhausted winning concepts, exploring new angles

**Layer 2: Variation Testing (Refinement)**
- Test iterations of a proven concept
- Examples: Headline A vs B, CTA color, aspect ratio, hook timing
- Use when: You have a winning concept and want to squeeze more performance

**Rule:** Concept test first. Once direction validated, shift to variation testing for refinement. Don't test 10 variations of a concept you haven't validated works.

### Test Variable Isolation

**Critical:** Isolate ONE variable per test. Changing multiple variables = unusable signal.

| Test Type | What Changes | What Stays Same |
|-----------|-------------|-----------------|
| Copy test | Primary text, headline | Image, format, CTA, audience |
| Visual test | Image or video | Copy, format, CTA, audience |
| Format test | Static vs video vs carousel | Core message, audience |
| Hook test | First 3 seconds of video | Rest of video, copy, audience |
| CTA test | Button text / placement | Everything else |
| Offer test | Discount, bundle, free trial | Creative style, audience |

### Budget & Duration Rules

| Parameter | Value |
|-----------|-------|
| Minimum test budget per variant | Enough for 50-100 conversions (statistical significance) |
| Minimum test duration | 7 days |
| Maximum test duration | 14 days (avoid fatigue affecting results) |
| Minimum conversions to declare winner | 50 per variant; 100+ preferred |
| Budget split | Equal across variants within a test ad set |

**Warning:** Don't declare winners on <50 conversions per variant. Early leaders often lose over full sample.

## 10% / 10x Testing Framework (Sam Tomlinson)

Split testing budget into two buckets:

| Bucket | Budget | Purpose | Expected Outcome |
|--------|--------|---------|-----------------|
| **10% incremental** | 10% of testing budget | Optimize what already works (variation tests) | 10-30% incremental improvements |
| **10x bets** | 10% of testing budget | Test fundamentally new offers, hooks, approaches | Most fail; rare wins 2-10x performance |

**Why both?** Incremental tests keep current performance stable. 10x bets find the next step-change. Teams that only run incremental tests stagnate. Teams that only run 10x bets lose predictability.

## Fatigue Detection System

### Primary Fatigue Signals

| Signal | Threshold | Severity |
|--------|----------|---------|
| Creative frequency | >4 | Action required (Meta: 45% conversion drop at 4+ exposures) |
| CTR decline | >20% below 7-day rolling average | Confirmed fatigue |
| CPC increase | Rising alongside CTR decline | Confirmed fatigue |
| CPA spike | >30% above baseline | Confirmed fatigue |
| Thumbstop ratio decline | 3-second viewer % dropping | Early fatigue signal for video |

**CRITICAL:** Measure frequency at the **CREATIVE level**, not ad level or ad set level. Meta's own research confirms fatigue happens at the creative level regardless of which ad/campaign serves it.

**Meta's own data:** Adding new creative into fatigued ad sets improves conversion rate by average 8% for high-fatigue cases, with dose-dependent improvement.

### Rotation Cadence by Audience Size

| Audience Size | Rotation Frequency | Notes |
|--------------|-------------------|-------|
| Small retargeting (<10K) | Every 5-7 days | Saturates fastest |
| Medium retargeting (10-100K) | Every 7-10 days | |
| Broad prospecting (1M+) | Every 14-21 days | Can tolerate longer cycles |
| ASC / Advantage+ broad | Ongoing weekly refresh | Maintain 15-30 active variants |

### Rotation Strategy

| Approach | How |
|---------|-----|
| Gradual introduction | Add 2-3 new variants, don't pause old immediately. Let algorithm shift spend to new winners |
| Maintain baseline | Keep 4-8 active creative variants per ad set at all times |
| Stagger refreshes | Don't replace all creative at once. Reset too much = learning phase reset |
| Winner preservation | Pause fatigued winners but keep them in a "rest" bucket to reintroduce later (audience refreshes) |

## Modular Creative Approach

Think of creatives as modules that can be combined and swapped independently:

| Module | Variants | Test Independently |
|--------|---------|-------------------|
| Hook (first 3 sec) | 5-10 options | Yes |
| Visual / b-roll | 5-10 options | Yes |
| Copy / voiceover | 5-10 options | Yes |
| CTA card / endcard | 3-5 options | Yes |
| Music / sound design | 3-5 options | Yes |

**Why modular?** From 5 hooks × 5 visuals × 5 copies, you get 125 possible combinations. You can rapidly produce variants by remixing modules without filming new content.

**Storyboard approach:** Build structured ad storyboards for each concept showing the modular components. Creative team produces modules; media team tests combinations.

## Format & Spec Reference

### Meta Format Specs

| Format | Aspect Ratio | Length/Limit | Best For |
|--------|-------------|-------------|----------|
| Feed image | 4:5 vertical (best) or 1:1 square | 1080x1350 or 1080x1080 | Static stories, product shots |
| Stories/Reels image | 9:16 vertical | 1080x1920 | Mobile-first, ephemeral |
| Feed video | 4:5 vertical | 15-30 sec optimal | Primary video placement |
| Reels video | 9:16 full vertical | 15-60 sec | Reels-native engagement |
| Stories video | 9:16 full vertical | Up to 60 sec | Sequential storytelling |
| Carousel | 1:1 or 4:5 | Up to 10 cards | Multi-product, step-by-step |
| Collection | Cover + catalog | N/A | Ecommerce discovery |

**Key performance data:**
- 4:5 vertical outperforms 1:1 square by ~15% in Feed (Billo data)
- Split-screen formats show ~12% better recall
- 85% of Facebook videos watched without sound — captions mandatory
- First 3 seconds determine engagement — front-load hooks

### Copy Specs

| Element | Limit | Best Practice |
|---------|-------|--------------|
| Primary text | 125 char visible before truncation | Hook → benefit → CTA |
| Headline | 40 char | Clear value prop or offer |
| Description | 30 char | Supporting detail |
| CTA button | Preset options | Match objective |

### Video Best Practices

| Element | Guideline |
|---------|----------|
| Length | 15-30 seconds optimal for performance |
| Hook | First 3 seconds — attention-grabbing, front-loaded value |
| Captions | Bold, high-contrast, large. Mandatory for silent autoplay |
| Brand reveal | Within first 5 seconds (don't bury the brand) |
| CTA | End-card or persistent CTA, graphic > text-only |

## Creative Performance Analysis

### Tagging System

Tag every creative to enable pattern analysis:

| Tag | Values | Purpose |
|-----|--------|---------|
| Concept | emotional, rational, problem/solution, testimonial, demo, lifestyle | Identify winning concept themes |
| Format | static, video, carousel, collection, Reels | Format performance comparison |
| Hook type | question, stat, shock, testimonial, demo, story | Hook performance analysis |
| Visual style | UGC, studio, animation, screen recording, lifestyle | Style preferences by audience |
| Creator | internal, freelancer, influencer [name] | Source performance tracking |
| CTA | Shop Now, Learn More, Sign Up, Get Offer | CTA optimization |
| Length | 0-15s, 15-30s, 30-60s | Duration impact |

### Pattern Analysis with Motion / Similar Tools

Tools like Motion help you identify which creative elements (hook, visual, CTA) drive results at scale. For accounts running many creatives, this is faster than manual analysis.

### Key Metrics by Funnel Stage

| Metric | Indicator Of | When It Matters |
|--------|-------------|----------------|
| **Thumbstop ratio** | Hook effectiveness (% who stop scrolling) | Top-funnel video tests |
| **Hold rate** (25%, 50%, 75%, 95%) | Retention through video | Video optimization |
| **CTR (link)** | Click-through interest | All creatives |
| **CPM** | Reach efficiency | Budget planning |
| **CPA / ROAS** | Ultimate performance | Winner declaration |
| **Frequency** | Fatigue leading indicator | Rotation decisions |

## UGC & Creator Pipeline

### Sourcing

| Method | Cost | Quality | Scale |
|--------|------|--------|-------|
| In-house employees | Low | Variable | Low |
| Existing customers | Low-Medium | High authenticity | Low-Medium |
| Freelance creators (UGC platforms) | Medium | Variable | High |
| Micro-influencers ($100-1000/post) | Medium-High | Medium-High | Medium |
| Creative agencies | High | High polish | High (if budget) |

**UGC vs Studio:** UGC often outperforms polished studio content for DTC brands — feels native to Feed/Reels. Test both for your audience.

### Brief Structure

| Section | Content |
|---------|---------|
| Product/brand overview | What, who it's for, why it's different |
| Target audience | Demographics, pain points, desires |
| Campaign goal | Sales, leads, awareness |
| Required elements | Key claims, legal disclaimers, specific product shots |
| Creative freedom | What the creator CAN do their way |
| Deliverables | Format specs, aspect ratios, lengths, count |
| Do/Don't list | Messaging guardrails |

**Rule:** Be specific on constraints (legal, claims, brand voice) but leave creative execution to the creator. Over-briefing kills authenticity.

### Pipeline Management

- Request creative well before launch dates — Meta's ad review can add 24+ hours, rejections extend further
- Maintain a creative backlog — always have 5-10 variants ready to swap in when fatigue hits
- Build a "winners library" of top-performing creatives — rest them, reintroduce later

## Output Format

```
## Meta Creative Plan

### Current State
- Active creatives: [count]
- Fatigue signals: [list creatives with freq >4, declining CTR]
- Format mix: [% static / video / carousel / Reels]
- Winning concepts (recent): [list]

### Testing Plan
| Test | Variables Isolated | Budget | Duration | Success Criteria |
|------|-------------------|--------|----------|-----------------|
| [name] | [what changes] | $[X] | [days] | [metric + threshold] |

### Production Needs
| Format | Count | Specs | Source |
|--------|-------|-------|--------|
| 9:16 video | 5 | 15-30 sec, captions | [freelancer/in-house] |

### Rotation Schedule
| Week | Action |
|------|--------|
| Week 1 | Pause [X], launch [Y] |

### Tagging Plan
[How creatives will be tagged for pattern analysis]
```

## Example

**Input:** "I run DTC skincare ads on Meta. $10K/month budget. I've been running the same 5 creatives for 6 weeks. ROAS dropped from 3.8 to 2.2. Frequency is 6.4. How do I fix this and build a better creative system?"

**Output:**

## Meta Creative Plan

### Current State Analysis
- Active creatives: 5 (critically insufficient)
- Fatigue signals: **Severe** — frequency 6.4 (threshold >4), ROAS down 42%, creatives running 6 weeks without refresh
- Format mix: Unknown, but likely missing formats
- Meta research: 45% conversion drop at 4+ exposures. You're well past this
- Creative expectation: 15-30 active variants per ad set, weekly refresh for prospecting

### Immediate Action (Week 1)
1. **Pause 2 highest-frequency creatives immediately** to stop fatigue bleeding
2. **Add 6 new creative variants** while keeping 3 existing variants active (gradual transition preserves learning)
3. **Format diversification:** Ensure you have static, video (15-30 sec), carousel, and Reels-native content

### Creative Production Plan (Urgent)
| Format | Count | Specs | Source | Timeline |
|--------|-------|-------|--------|----------|
| UGC video (9:16) | 3 | 15-30 sec, captions, testimonial-style | Freelance UGC creators | Week 1 |
| Product demo video | 2 | 15 sec, application technique | In-house or freelancer | Week 1 |
| Static lifestyle (4:5) | 3 | Product in real setting, clean copy | Existing brand photos | Day 1-2 |
| Carousel (4:5) | 1 | 5-card "routine" walkthrough | Studio or curated | Week 1 |
| Before/after static (4:5) | 2 | Real customer results (with consent + disclaimers) | Customer submissions | Week 1-2 |

Total: 11 new creatives to add to pool (plus keep 3 existing = 14 active)

### Testing Framework (Week 2 onward)
**Concept tests (10x bets):**
| Test | Hypothesis | Success Criteria |
|------|-----------|-----------------|
| UGC vs studio | UGC feels native to Feed/Reels and outperforms polished | UGC ROAS 20%+ above studio over 14 days |
| Problem-first vs benefit-first | Problem hooks create stronger stop rate | 30%+ higher thumbstop for problem-first |
| Single-product vs routine bundle | Routine upsell drives higher AOV | Bundle AOV 40%+ above single |

**Variation tests (10% incremental):**
| Test | Variable | Success Criteria |
|------|---------|-----------------|
| Hook test | First 3 sec of top video | 15%+ higher thumbstop ratio |
| CTA test | Shop Now vs Learn More | 10%+ higher CTR for winner |
| Copy length test | 50 char vs 100 char primary | Measurable CTR difference |

### Rotation Schedule
| Week | Action |
|------|--------|
| Week 1 | Pause 2 fatigued creatives, launch 6 new variants (UGC + static) |
| Week 2 | Launch 5 more variants (video + carousel). Begin concept tests |
| Week 3 | Review Week 1-2 performance. Scale winners, pause losers |
| Week 4 | Introduce variation tests on winning concepts |
| Ongoing | Add 4-6 new creatives per week. Retire anything at frequency >5 |

### Tagging Plan
Tag every new creative with: concept, format, hook type, visual style, creator, CTA, length. After 30 days, run pattern analysis:
- Which concept drove highest ROAS?
- Which hook type had best thumbstop ratio?
- Which format had best CPA?
- Which creator's content outperformed?

### Pipeline Setup
- **Creative backlog:** Maintain 5-10 variants in queue at all times
- **Winners library:** Top performers rotate into "rest" periodically, reintroduce after audience refreshes
- **Weekly review:** Every Monday, review frequency and CTR trends. Pause anything at frequency >5 or CTR >20% below avg

### Expected Timeline
- Day 1-3: Frequency begins dropping as new creatives absorb impressions
- Week 2: ROAS stabilizes, then starts recovering
- Week 3-4: ROAS approaching or exceeding 3.5x with healthy creative rotation pipeline
- Month 2+: Sustained 3.5-4.0x ROAS with continuous testing and rotation

## Guidelines

- **Don't run fewer than 4-8 creative variants per ad set.** Insufficient rotation pool = guaranteed fatigue.
- **Don't measure frequency at the wrong level.** Creative-level frequency is what matters. Ad-level or ad set-level understates fatigue.
- **Don't declare winners on <50 conversions per variant.** Early results are noisy. Minimum 50, ideally 100+ conversions per variant before calling a winner.
- **Don't test multiple variables in one test.** Change ONE variable. Multiple changes = unusable signal.
- **Don't ignore thumbstop ratio for video.** It's the earliest leading indicator of creative performance — much faster than waiting for CPA data.
- **Don't skip captions on video.** 85% of Facebook videos watched without sound. No captions = invisible.
- **Don't over-produce.** UGC often outperforms polished studio content for DTC. Authenticity > polish.
- **Don't pause all fatigued creative at once.** Gradual replacement preserves algorithm learning. Pause 1-2 per day, add new ones alongside.
- **Don't forget creative backlog.** Always maintain 5-10 variants ready to swap in. Don't wait until fatigue hits to start producing.
- **Don't test 10% tweaks without 10x bets.** Incremental tests keep you stable but don't find step-change wins. Budget for both.
- **Cross-references:** For optimization beyond creative (audience, budget, automation), use the **meta-ads-optimizer** skill. For full account diagnostic including creative health, use the **meta-ads-audit** skill. For tracking issues that look like creative issues, use the **meta-ads-tracking-setup** skill.
- **Confidence:** Format performance benchmarks (4:5 outperforms 1:1 by 15%, split-screen 12% better recall) are from Billo/Meta data and may vary by vertical. Rotation cadence is a starting point — calibrate to your specific audience saturation rate.
