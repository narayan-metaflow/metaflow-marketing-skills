---
name: google-ads-scripts
description: "Select, implement, and manage Google Ads scripts to automate PPC tasks at scale — n-gram analysis, bid management, budget pacing, anomaly detection, and performance reporting."
---

## Process

1. **Identify the repetitive task** — What are you doing manually that a script could handle?
2. **Match to script category** — Use the decision tree below
3. **Select specific script** — Read `references/scripts-catalog.md` for detailed options
4. **Understand prerequisites** — API access, spreadsheet setup, email notifications
5. **Install and configure** — Follow the standard installation process
6. **Test in preview mode** — Always preview before authorizing
7. **Schedule and monitor** — Set appropriate frequency, check logs regularly

Read `references/scripts-catalog.md` for the complete catalog of 50+ top scripts with sources, use cases, and implementation notes.

## Script Category Decision Tree

**What problem are you solving?**

| Problem | Category | Example Scripts |
|---------|---------|----------------|
| Finding wasted spend on bad search terms | N-gram / Search term mining | Brainlabs Search Query Mining, PEMAVOR Search Term Miner |
| Bid changes based on rules | Bid management | Day-of-week bid modifiers, weather-based bidders |
| Budget overspend/underspend | Budget pacing | Optmyzr-style pacing scripts, redistribution scripts |
| Catching broken URLs or disapprovals | Monitoring / Anomaly detection | Link checker, Vallaeys anomaly detector |
| Automated reporting | Reporting | Monthly deck generators, heat map scripts |
| Profit-based product bidding | Ecommerce | Jack Felsted's revenue maximizer |
| Finding best-performing ad copy language | Ad copy analysis | Vallaeys RSA n-gram analyzer |
| Tracking competitor movement | Competitive monitoring | Auction insights trend scripts |

## Top Categories & Use Cases

### 1. Search Term / N-Gram Analysis

**Purpose:** Mine search query reports to find negative keyword candidates and promotion opportunities at scale.

**Top pick:** Brainlabs Search Query Mining Script (updated for GAQL by Nils Rooijmans, March 2025)

**What it does:**
- Breaks queries into 1-grams, 2-grams, 3-grams
- Aggregates performance by n-gram
- Highlights high-spend / zero-conversion patterns
- `checkNegatives` parameter: verifies new negatives don't block existing keywords

**When to run:** Weekly for new campaigns, bi-weekly for stable ones.

**Output:** Google Sheet with n-gram breakdown, sorted by spend and CPA.

### 2. Bid Management

**Purpose:** Adjust bids automatically based on performance patterns or external signals.

**Common scripts:**
- Day-of-week bid modifiers — Apply bid adjustments based on historical day-of-week conversion rates
- Hour-of-day bid modifiers — Same for hour of day
- Weather-based bid adjusters — Modify bids based on local weather (umbrella sales → increase on rainy days)
- Impression share targeting scripts — Dynamically adjust bids to hit target impression share

**Warning:** These scripts predate Smart Bidding. For accounts running tCPA/tROAS, most bid scripts are unnecessary — Smart Bidding handles these optimizations automatically. Use bid scripts mainly for:
- Accounts with <30 conversions/month (pre-Smart Bidding)
- Specific signals Smart Bidding doesn't know (weather, inventory, external factors)

### 3. Budget Pacing & Redistribution

**Purpose:** Prevent overspend/underspend. Automatically shift budget between campaigns.

**Common scripts:**
- Budget pacing monitors — Alert when a campaign will overspend or underspend by month-end
- Budget redistribution — Shift unused budget from underperformers to high-performers
- Seasonal budget automation — Adjust budgets based on expected seasonal demand

**ECPC deprecation note (March 2025):** Some older budget scripts reference ECPC. If you encounter one, update or replace — ECPC is gone.

### 4. Performance Monitoring & Anomaly Detection

**Purpose:** Catch problems before they waste money.

**Top scripts:**
- **Anomaly detection** (Frederick Vallaeys) — Alerts on sudden metric changes (CTR, CPC, conversion rate deviations from baseline)
- **Zero-impression keyword pause** — Pause keywords with zero impressions over X days
- **Quality Score tracking** — Historical QS tracking (Google doesn't store QS history natively)
- **Broken landing page URL monitor** — Tests all landing page URLs, alerts on 404s or slow loads
- **Emergency stop button** — Pauses account if website is down (integrates with uptime monitors)

**When to run:** Daily for anomaly detection, weekly for URL checks and QS tracking.

### 5. Reporting Automation

**Purpose:** Generate client-ready reports without manual grind.

**Common scripts:**
- Monthly presentation deck generator (Optmyzr-style)
- Client performance heat maps (Kratu)
- Hourly performance trend heat maps (Daniel Gilbert)
- Change history reports
- Custom metric dashboards

### 6. Ecommerce-Specific

**Purpose:** Profit-based optimization beyond ROAS.

**Top pick:** Jack Felsted's Revenue Maximizer Tiering

**What it does:**
- Tiers products by gross profit margin using custom labels
- Applies different tROAS targets per tier
- High-margin products get lower tROAS target (more volume), low-margin get higher (tighter efficiency)
- 7/14/28/90-day ROI lookback for dynamic tier updates

**Requires:** Merchant Center feed with custom labels (use the **google-merchant-center** skill to set these up).

### 7. Ad Copy Analysis

**Purpose:** Find winning language patterns in ads.

**Top pick:** Frederick Vallaeys' RSA n-gram analyzer

**What it does:** Analyzes which words/phrases in your ad copy correlate with higher CTR and conversion rates. Applies n-gram analysis methodology to ad copy instead of search terms.

### 8. Competitive Monitoring

**Purpose:** Track competitor movement in auctions.

**Common scripts:**
- Auction Insights trend tracker — Stores historical impression share, overlap rate, position above rate
- Competitor ad copy change alerts (requires Google Ads Transparency Center)

## Installation Process (Standard)

Every Google Ads script follows this installation pattern:

| Step | Action |
|------|--------|
| 1 | In Google Ads, navigate to Tools → Bulk Actions → Scripts |
| 2 | Click "+" to create a new script |
| 3 | Paste the script code |
| 4 | Update configuration variables (email, spreadsheet URL, thresholds) |
| 5 | Click "Authorize" (script needs account access) |
| 6 | Click "Preview" to test without making changes |
| 7 | Review preview logs for errors |
| 8 | Click "Run" for one-time execution |
| 9 | Click "Schedule" for recurring runs |

**Always preview before running.** Scripts that make changes (pause keywords, adjust bids, change budgets) can cause damage if misconfigured.

## Script Selection Framework

Before installing a script, answer these questions:

| Question | Why |
|----------|-----|
| What's the business problem this solves? | Avoid installing scripts for theoretical value |
| Is there a manual check-in step or fully automated? | Start with notification-only, graduate to auto-action |
| What's the fallback if the script fails? | Scripts can break (API changes, errors) |
| Who maintains it? | Open-source scripts may have stale code |
| Does Smart Bidding already handle this? | Don't reinvent what the platform does natively |
| What's the preview showing? | Always review before authorizing destructive actions |

## Scheduling Guidelines

| Script Type | Recommended Frequency |
|------------|----------------------|
| Anomaly detection | Daily (early morning) |
| Budget pacing | Daily or 2x daily (morning + midday) |
| Search term mining | Weekly (new campaigns), bi-weekly (stable) |
| Ad copy analysis | Monthly |
| Quality Score tracking | Weekly |
| Ecommerce product tiering | Weekly or bi-weekly |
| Broken URL checker | Weekly |
| Reporting automation | Monthly (for reports) |
| Competitive monitoring | Weekly |
| Emergency stop | Continuous (integrated with uptime monitor) |

**Don't over-schedule.** More frequent ≠ better. Some scripts have API rate limits or cost real time/money to run.

## Script Libraries & Sources

| Source | Specialty | Access |
|--------|----------|--------|
| **Nils Rooijmans** | GAQL-updated scripts, search term mining, bid management | nilsrooijmans.com — maintained and current |
| **Frederick Vallaeys** | Anomaly detection, ad copy analysis, account management | optmyzr.com, searchengineland.com contributions |
| **Brainlabs** | Search query mining, budget tools (Nils maintains updates) | brainlabsdigital.com/scripts |
| **Jack Felsted** | Ecommerce revenue maximizer, gross profit scripts | jackfelsted.com |
| **Daniel Gilbert (Brainlabs)** | Hourly heat maps, competitive monitoring | brainlabsdigital.com |
| **Optmyzr** | Monthly presentation decks, pacing scripts | optmyzr.com (paid platform) |
| **Sarah Stemen** | Practitioner scripts, account auditing | sarahstemen.com |
| **Google Developers** | Official script samples and documentation | developers.google.com/google-ads/scripts |

## Output Format

When recommending scripts, produce this deliverable:

```
## Google Ads Script Recommendations

### Business Problem
[What the user is trying to solve or automate]

### Recommended Scripts

#### Script 1: [Name]
- **Source:** [Author/organization]
- **Purpose:** [What it does]
- **Why this script:** [How it solves the user's specific problem]
- **Prerequisites:** [API access, spreadsheets, email setup]
- **Configuration variables:** [Key settings to customize]
- **Schedule:** [Recommended frequency]
- **Expected outcome:** [What you'll see after it runs]

#### Script 2: [Name]
[Same structure]

### Installation Order
1. [First script to install and why]
2. [Second script]

### Monitoring Plan
- Check logs after [time period]
- Success criteria: [what good looks like]
- Warning signs: [what to watch for]

### Smart Bidding Compatibility
[Note which scripts are redundant if using Smart Bidding, and which remain useful]
```

## Example

**Input:** "I manage 8 Google Ads accounts for ecommerce clients. Spending $4K-$30K/month each. Most are on PMax + Search with Smart Bidding. I'm spending hours every week manually checking search terms, monitoring for anomalies, and building reports. What scripts should I set up?"

**Output:**

## Google Ads Script Recommendations

### Business Problem
Agency workload from manual search term review, anomaly monitoring, and reporting across 8 accounts. Time savings from automation compounds across multiple accounts.

### Recommended Scripts

#### Script 1: Brainlabs Search Query Mining (Nils Rooijmans GAQL update)
- **Source:** Nils Rooijmans (updated March 2025 for GAQL)
- **Purpose:** Automated n-gram analysis on search term reports. Identifies high-spend / zero-conversion patterns and promotion candidates
- **Why this script:** Replaces manual search term review across 8 accounts. Biggest immediate time saver
- **Prerequisites:** Google Sheet for output, email for notifications
- **Configuration variables:** Date range (last 30 days recommended), spend threshold ($50+), `checkNegatives` parameter (set to true to verify no conflicts with existing keywords)
- **Schedule:** Weekly for new campaigns, bi-weekly for stable ones. Run Sunday night so Monday morning starts with fresh data
- **Expected outcome:** Sheet per account showing n-gram waste candidates + promotion opportunities

#### Script 2: Anomaly Detection (Frederick Vallaeys)
- **Source:** Frederick Vallaeys (Optmyzr / Search Engine Land)
- **Purpose:** Alerts on sudden metric changes (CTR, CPC, conversion rate, spend deviations from baseline)
- **Why this script:** Across 8 accounts, catching issues early prevents wasted spend. Replaces manual daily pulse checks
- **Prerequisites:** Email notification setup, baseline calculation period (14-30 days)
- **Configuration variables:** Deviation thresholds (e.g., >20% from 7-day average), metrics to monitor, alert recipients
- **Schedule:** Daily, early morning (catches overnight issues)
- **Expected outcome:** Email alert only when anomaly detected. Most days = silent. Action days = immediate visibility

#### Script 3: Jack Felsted's Revenue Maximizer Tiering
- **Source:** Jack Felsted
- **Purpose:** Automatically tiers products by gross profit margin using custom labels. Applies differentiated tROAS targets per tier
- **Why this script:** Ecommerce clients need profit-based bidding (POAS > ROAS). High-margin products tolerate lower tROAS for more volume
- **Prerequisites:** Merchant Center feed with cost/margin data, custom labels set up (use the **google-merchant-center** skill)
- **Configuration variables:** Margin thresholds per tier, tROAS targets per tier, lookback period (7/14/28/90-day)
- **Schedule:** Weekly
- **Expected outcome:** Products re-tiered weekly based on trailing performance, bids automatically adjusted

#### Script 4: Broken Landing Page URL Monitor
- **Source:** Google Developers / community (multiple open-source versions)
- **Purpose:** Tests all active landing page URLs. Alerts on 404s, timeouts, slow loads
- **Why this script:** Broken URLs burn budget silently. Across 8 accounts, this catches issues within 24 hours
- **Prerequisites:** Email notification setup
- **Configuration variables:** Timeout threshold (10 sec), alert recipients, ignored URLs
- **Schedule:** Weekly
- **Expected outcome:** Alert only when broken URL found

#### Script 5: Monthly Reporting Deck Generator (Optmyzr-style)
- **Source:** Optmyzr has a paid version; several open-source community versions exist
- **Purpose:** Pulls performance data and generates monthly client reports
- **Why this script:** Agency reporting time sink. 8 accounts × manual reporting = many hours per month
- **Prerequisites:** Google Slides template, data field mapping
- **Configuration variables:** Template slides, metrics to include, date range
- **Schedule:** Monthly (1st of month for previous month data)
- **Expected outcome:** Draft deck per account, ready for analyst review and narrative

### Installation Order
1. **Week 1: Anomaly Detection** — Install first. Set to notification-only for 7 days. Tighten thresholds after seeing baseline noise
2. **Week 1: Broken URL Monitor** — Install concurrently. Low risk, high value
3. **Week 2: Brainlabs Search Query Mining** — Install once anomaly detection is stable. This requires review/action, so don't stack it until you can manage the output
4. **Week 3: Revenue Maximizer** — Requires Merchant Center custom label setup first. Do that using the **google-merchant-center** skill, then install this script
5. **Week 4: Reporting Deck Generator** — Install last. Biggest customization effort but runs monthly so not urgent

### Monitoring Plan
- **Daily:** Check anomaly detection email alerts
- **Weekly:** Review search query mining sheet, URL monitor output
- **Monthly:** Review reporting deck output, tune thresholds based on false positives/negatives
- **Success criteria:** Time spent on manual tasks drops by 50%+ within 30 days. Time to catch issues drops from days to hours
- **Warning signs:** If anomaly detection alerts too often → raise threshold. If search query mining is flagging wrong n-grams → tighten minimum spend threshold

### Smart Bidding Compatibility
- **Compatible (use these):** Search query mining, anomaly detection, URL monitor, reporting, Revenue Maximizer (uses Smart Bidding targets as inputs)
- **Redundant with Smart Bidding (skip):** Day-of-week bid modifiers, hour-of-day bid modifiers, impression share bid targeting — Smart Bidding handles these natively with tCPA/tROAS
- **Still useful:** Weather-based bidding (Smart Bidding doesn't know weather), inventory-based bid adjustments (needs external data)

## Guidelines

- **Don't install scripts that duplicate Smart Bidding.** Most bid management scripts were built before Smart Bidding existed. If the account runs tCPA/tROAS, skip day-of-week, hour-of-day, and impression share bid scripts.
- **Don't skip preview mode.** Always run in preview before authorizing. Scripts that pause keywords or change bids can cause damage if misconfigured.
- **Don't chain scripts without understanding dependencies.** If a search term mining script creates negatives and a QS tracker depends on keyword history, adding negatives can break QS data. Think through interactions.
- **Don't run scripts more often than needed.** Daily anomaly detection is useful. Daily search term mining is overkill and may hit API limits.
- **Don't use stale scripts.** Scripts that reference ECPC (deprecated March 2025), older GAQL syntax, or deprecated Google Ads API versions will break. Check publication dates and look for GAQL-updated versions (many were updated in 2024-2025).
- **Don't ignore the logs.** Scripts fail silently sometimes. Check logs weekly, especially after Google Ads API updates.
- **Don't authorize scripts you don't understand.** If the code is obfuscated or unclear, don't run it. Scripts have full account access.
- **Cross-references:** For search term strategy that informs n-gram scripts, use the **google-ads-keyword-engine** skill. For Merchant Center setup required by Revenue Maximizer, use the **google-merchant-center** skill. For account audits that identify automation opportunities, use the **google-ads-audit** skill. For ongoing optimization, use the **google-ads-optimizer** skill.
- **Confidence:** Script library URLs and maintainer information can change. For the most current version of any script, search the author's current website/blog rather than relying on older GitHub repos. Read `references/scripts-catalog.md` for the full categorized catalog.
