# Algorithm Update & Traffic Anomaly Diagnostic Playbook

When traffic drops, rankings shift, or AI visibility changes sharply, the first instinct is to blame an algorithm update and start making changes. This is almost always the wrong move. Use this playbook to diagnose *before* reacting.

## The golden rule

**Do not take reactive action during a rollout window.** Google core updates take 2-4 weeks to fully deploy. AI platform shifts (new model versions, retrieval changes) can take days to weeks to stabilize. Changes made mid-rollout frequently get blamed for problems that would have self-corrected.

Observe. Diagnose. Wait. Act.

---

## Step 1 — Confirm a change actually happened

Before calling it an update, confirm the data:

- **Compare to the same period last year.** Seasonality catches people constantly. "Traffic is down 12% from last week" is often just "last week had a holiday" or "last week had an unusual spike."
- **Check multiple data sources.** GSC, GA4, and a third-party tool (rank-tracking tools). If only one shows the change, suspect instrumentation, not reality.
- **Is it across all pages or specific pages?** Site-wide changes suggest an algorithm or technical issue. Page-specific changes suggest content or ranking shifts.
- **Is it across all queries or specific queries?** All queries down = site-wide signal change. Specific queries down = likely SERP shift on those queries.

If the change is not confirmed in multiple sources, stop here — the issue is measurement, not reality.

---

## Step 2 — Check for known changes

Was there a named Google update? An AI platform update? Check:

- **Google Search Status Dashboard** (`status.search.google.com`) — official update announcements
- **Search Engine Roundtable, Search Engine Journal** — third-party tracking with context
- **SERP weather / volatility indices** — trackers (show when rankings are shifting industry-wide)
- **AI platform release notes** — OpenAI, Anthropic, Perplexity changelogs
- **Your own change log** — did you recently deploy something? (Almost always the cause when only your site changes.)

Internal changes are the #1 cause of "unexplained" traffic drops. Check these first:

- Recent deploys (especially CMS changes, theme updates, plugin updates)
- Recent robots.txt or meta tag changes
- Cloudflare or CDN configuration changes
- Canonical tag changes
- Redirect changes
- JavaScript framework changes (hydration issues, SSR config)
- New bot blocking settings
- Accidental noindex deployments

If you've deployed anything in the past 14 days, diff it first. Most "algorithm impact" is really a deploy issue.

---

## Step 3 — Segment the impact

"Traffic is down 12%" is not diagnostic. Break it down:

**By content type:**
| Type | Traffic Δ | Why it might have moved |
|------|-----------|------------------------|
| Pillar pages | | |
| Cluster pages | | |
| Product pages | | |
| Blog posts | | |
| Help center | | |

**By intent segment:**
| Intent | Traffic Δ | Notes |
|--------|-----------|-------|
| Informational | | If only informational dropped — AI Overview expansion likely |
| Commercial | | If commercial dropped — competitor movement or intent shift |
| Transactional | | If transactional dropped — most concerning; revenue impact |

**By query type:**
| Query type | Traffic Δ | Notes |
|-----------|-----------|-------|
| Branded | | Brand signal change or brand reputation issue |
| Non-branded | | SEO-specific change |

**By SERP feature presence:**
| Feature | Before | After | Notes |
|---------|--------|-------|-------|
| AI Overview present | | | |
| Featured snippet present | | | |
| PAA present | | | |

**By page age:**
| Page age | Traffic Δ | Notes |
|----------|-----------|-------|
| 0-90 days | | New content still finding footing |
| 90d-1yr | | |
| 1-2yrs | | |
| 2yrs+ | | Often hit hardest by freshness-related changes |

Segmentation tells you *what* is happening, which narrows down *why*.

---

## Step 4 — Map against common patterns

### Pattern A: "Top-funnel informational traffic is down, bottom-funnel is stable"

**Likely cause:** AI Overview expansion eating zero-click informational traffic.

**Evidence:** Top funnel is where AI Overviews are strongest. Commercial and transactional intent is more click-through-heavy.

**Action:**
- Accept the zero-click reality on informational terms
- Double down on middle/bottom funnel content that still drives clicks
- Optimize existing informational content for AI citation (ski ramp) rather than traffic
- Shift KPIs from "traffic" to "visibility + qualified traffic"

### Pattern B: "Specific cluster of pages dropped, rest of site stable"

**Likely cause:** Content-specific ranking shift. Could be algorithmic (freshness, quality) or competitive (someone beat you).

**Evidence:** Ranking check on affected pages. What's beating you now?

**Action:**
- Competitive analysis on affected queries
- Content refresh if the top results are more recent or more comprehensive
- Verify nothing technical happened to those pages specifically

### Pattern C: "Traffic down across the board, starting on a specific date"

**Likely cause:** Site-wide signal change — either a technical issue or a core update.

**Evidence:** What happened on that date? Check deploy logs, GSC messages, Google Search Status.

**Action:**
- If technical: fix, submit for recrawl, wait 7-14 days
- If core update: observe for 2-4 weeks, do not react yet

### Pattern D: "AI visibility dropped but Google traffic is stable"

**Likely cause:** AI model update, retrieval change, or training data cutoff shift.

**Evidence:** Re-measure with the same prompt set and sample size. Check for platform announcements.

**Action:**
- Wait 2-3 weeks to see if visibility recovers as models stabilize
- Review cited sources to see if the AI is now pulling from different domains
- Adjust brand mention strategy if new sources have emerged

### Pattern E: "One page used to get traffic, now gets nothing"

**Likely cause:** Manual action, noindex, crawl error, or ranking loss.

**Evidence:** URL Inspection in GSC; check for manual actions; check rankings.

**Action:**
- Fix whatever is blocking (noindex, error, redirect loop)
- If ranking dropped: diagnose cause and refresh content

### Pattern F: "Everything is up, why?"

Pay attention to positive anomalies too. Often it's:
- Algorithm update benefited your content type
- Competitor dropped out
- Seasonality
- Recent content refresh compounding
- PR wave driving direct and branded search

Document what happened so you can replicate it.

---

## Step 5 — Cross-reference with industry

Check if the pattern is specific to your site or industry-wide.

- **Industry volatility:** SERP volatility indices. If industry volatility is high, what happened to you is probably happening to others.
- **Competitor performance:** Traffic-estimate tools for competitor trend checks. If all competitors dropped 12%, yours is industry-wide.
- **Niche trackers:** Some industries have specific tracking services (e.g., e-commerce, news publishers, affiliate sites).

If the impact is industry-wide, the message to stakeholders is "this is market-wide, not unique to us." If it's site-specific, the diagnosis gets harder.

---

## Step 6 — Report, don't react

Produce a diagnostic report that explains:

1. **What happened** — traffic/ranking/visibility change, scoped specifically
2. **What caused it** — best hypothesis with supporting evidence
3. **What we don't know** — honest about uncertainty
4. **Observation window** — how long before we should expect clarity
5. **Action plan** — what we'll do if the trend continues vs. reverses

### Example diagnostic report

> **Incident:** Organic traffic down 18% week-over-week, starting March 20.
>
> **Scope:** Impact concentrated on informational blog posts (down 31%). Commercial pages (-2%) and product pages (+1%) are stable. Branded traffic stable.
>
> **Hypothesis (directional):** The March 18 Google core update appears to be still rolling out. SERP volatility indices are very high. Informational content is being replaced by AI Overview summaries on approximately 60% of previously-traffic-driving queries.
>
> **What we don't know:** Whether this is a permanent loss or will stabilize after the rollout completes. Whether specific pages are affected by quality signals (recoverable) vs AI Overview replacement (not recoverable).
>
> **Observation window:** Google updates typically take 2-4 weeks. Re-assess March 28 and April 4.
>
> **Action plan if the trend continues:**
> - Do NOT make reactive content changes during the rollout window
> - After April 4: audit the top 20 declining pages for quality signals (E-E-A-T, freshness, structure)
> - Shift measurement from click-based to impression + visibility on top-funnel terms
> - Refresh 5 priority informational pages with ski ramp structure to optimize for AI citation
>
> **Action plan if the trend reverses:**
> - Continue monitoring
> - Resume normal cadence

---

## Common mistakes to avoid

1. **Reacting within the first 72 hours.** Almost always the wrong move. Observation > reaction.
2. **Blaming an update without checking your own deploys.** Internal changes are the #1 cause of mysterious traffic drops.
3. **Rewriting content before the rollout completes.** New content mid-rollout gets blamed for problems it didn't cause.
4. **Asking "what changed in Google's algorithm?"** You won't get a useful answer. Focus on what changed in the SERP for your specific queries.
5. **Looking at aggregate traffic without segmenting.** Aggregate numbers hide the signal.
6. **Taking an affiliate's "update analysis" article at face value.** Most update analysis in the first week is speculation.
7. **Forgetting to check seasonality.** Many "drops" are seasonal norms.
8. **Panic-disavowing backlinks.** Almost never the right response.
9. **Treating AI visibility changes like Google ranking changes.** They're structurally different — AI visibility is probabilistic, quarterly trends are the unit of measurement, not weekly movement.
10. **Not documenting the diagnosis.** Next time this pattern appears, you'll have to re-diagnose from scratch.

---

## Stakeholder communication during an anomaly

Stakeholders panic when traffic drops. Your job is to absorb the panic and provide a measured response.

**Do:**
- Acknowledge the change quickly (same day)
- Commit to a diagnostic timeline ("I'll have a hypothesis in 48 hours")
- Explain the observation window ("we won't act for 2-4 weeks because Google's still rolling out")
- Show what you're watching and when you'll re-report

**Don't:**
- Promise a specific recovery
- Blame a specific cause without evidence
- Make dramatic reactive changes
- Over-explain technical details that aren't decision-relevant

Stakeholder trust is won by being measured in the moment — not by having all the answers immediately.
