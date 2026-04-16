
# Google Ads Scripts Catalog — Top 50+ Scripts

Categorized catalog of the most useful Google Ads scripts, with sources, use cases, and implementation notes. Updated for 2025-2026 (post-ECPC deprecation, GAQL-required).

## Table of Contents

1. [Search Term & N-Gram Analysis](#search-term--n-gram-analysis)
2. [Bid Management](#bid-management)
3. [Budget Pacing & Redistribution](#budget-pacing--redistribution)
4. [Monitoring & Anomaly Detection](#monitoring--anomaly-detection)
5. [Reporting Automation](#reporting-automation)
6. [Ecommerce & Shopping](#ecommerce--shopping)
7. [Ad Copy & Creative Analysis](#ad-copy--creative-analysis)
8. [Competitive Monitoring](#competitive-monitoring)
9. [Account Management & Audits](#account-management--audits)
10. [Utility & Infrastructure](#utility--infrastructure)

---

## Search Term & N-Gram Analysis

### 1. Brainlabs Search Query Mining (Nils Rooijmans GAQL version)
- **Source:** Nils Rooijmans (updated March 2025)
- **URL pattern:** nilsrooijmans.com
- **Purpose:** Breaks search terms into 1-grams, 2-grams, 3-grams; aggregates performance by n-gram
- **Use case:** Weekly search term review at scale — finds high-spend / zero-conversion patterns
- **Key features:** `checkNegatives` parameter verifies new negatives don't block existing keywords
- **Output:** Google Sheet with n-gram breakdown sorted by spend and CPA
- **Schedule:** Weekly (new campaigns), bi-weekly (stable)
- **Configuration:** Date range, min spend threshold, spreadsheet URL, email recipients
- **Notes:** Original Brainlabs version used AdWords Query Language — the Nils Rooijmans update is GAQL-compliant and works with current Google Ads API

### 2. PEMAVOR Search Term Miner
- **Source:** PEMAVOR
- **URL pattern:** pemavor.com
- **Purpose:** Advanced n-gram analysis with tokenization and stemming
- **Use case:** Multilingual accounts needing language-aware n-gram analysis
- **Notes:** Paid tool but has script components

### 3. Single-Word Negative Detector
- **Source:** Community (multiple versions)
- **Purpose:** Finds single words in search terms that correlate with zero conversions across N impressions
- **Use case:** Quick-win negative keyword identification
- **Output:** List of candidate negative words
- **Warning:** Review before applying — a single word might appear in converting queries too

### 4. Search Term to Keyword Promoter
- **Source:** Community
- **Purpose:** Identifies high-performing search terms not yet added as exact-match keywords
- **Use case:** Keyword expansion based on proven converters
- **Output:** List of promotion candidates with performance data

### 5. Query-Level Performance Exporter
- **Source:** Google Developers samples
- **Purpose:** Exports query-level performance to a sheet for external analysis
- **Use case:** Feed into Looker, BigQuery, or Excel-based analysis workflows

---

## Bid Management

### 6. Day-of-Week Bid Modifier
- **Source:** Frederick Vallaeys / Optmyzr original, community versions exist
- **Purpose:** Applies bid adjustments based on historical day-of-week conversion patterns
- **Use case:** Manual CPC accounts with strong day-of-week patterns
- **Warning:** Redundant if using Smart Bidding (tCPA/tROAS already handles this)

### 7. Hour-of-Day Bid Modifier
- **Source:** Community (Google's deprecated version was foundational)
- **Purpose:** Adjusts bids by hour of day based on conversion patterns
- **Use case:** Accounts with strong intra-day variance on manual bidding
- **Warning:** Same as above — Smart Bidding covers this automatically

### 8. Weather-Based Bid Adjuster
- **Source:** Brainlabs (Daniel Gilbert original)
- **Purpose:** Modifies bids based on local weather conditions
- **Use case:** Businesses with weather-correlated demand (umbrellas on rainy days, AC units in heat waves, snowplows in winter)
- **Prerequisites:** Weather API key (OpenWeatherMap, etc.)
- **Notes:** One of the few bid scripts still relevant in the Smart Bidding era — provides signals Google doesn't have

### 9. Impression Share Target Bidder
- **Source:** Community
- **Purpose:** Dynamically adjusts bids to hit target impression share on key terms
- **Use case:** Brand defense or high-priority term coverage
- **Warning:** Target Impression Share bidding (native) is usually better

### 10. Competitor-Adjusted Bidding
- **Source:** Community
- **Purpose:** Pulls Auction Insights data and modifies bids based on competitor presence
- **Use case:** Highly competitive markets where manual intervention adds value

---

## Budget Pacing & Redistribution

### 11. Optmyzr-Style Budget Pacing Monitor
- **Source:** Optmyzr (paid) + free community versions
- **Purpose:** Alerts when a campaign will overspend or underspend by month-end based on current pace
- **Use case:** Monthly budget discipline across many accounts
- **Output:** Email alerts or spreadsheet with pacing status
- **Schedule:** Daily or 2x daily

### 12. Budget Redistribution Script
- **Source:** Community (multiple versions)
- **Purpose:** Shifts unused budget from underperformers to high-performers automatically
- **Use case:** Campaigns with shared MCC-level budgets
- **Warning:** Requires careful threshold setup — wrong config can shift money to fatigued winners

### 13. Seasonal Budget Automator
- **Source:** Community
- **Purpose:** Adjusts budgets based on expected seasonal demand curves
- **Use case:** Retail, travel, tax season, holidays
- **Prerequisites:** Historical seasonality curve data in a sheet

### 14. MCC-Level Budget Pacing
- **Source:** Nils Rooijmans, others
- **Purpose:** Cross-account budget pacing for agencies managing many clients
- **Use case:** Agency workflow
- **Schedule:** Daily

### 15. End-of-Month Budget Flush
- **Source:** Community
- **Purpose:** Increases budgets in final days of month if pacing is significantly under
- **Use case:** Avoid underspending when client budget commitments are firm
- **Warning:** Be careful not to waste spend on poor-performing campaigns just to hit a number

---

## Monitoring & Anomaly Detection

### 16. Frederick Vallaeys Anomaly Detector
- **Source:** Frederick Vallaeys (Optmyzr / Search Engine Land)
- **Purpose:** Alerts on sudden metric changes vs baseline (CTR, CPC, conversion rate, spend)
- **Use case:** Daily pulse monitoring across accounts
- **Configuration:** Baseline period (14-30 days), deviation thresholds (e.g., >20% from 7-day avg)
- **Schedule:** Daily, early morning
- **Output:** Email alert only when anomaly detected

### 17. Zero-Impression Keyword Pause
- **Source:** Community
- **Purpose:** Pauses keywords with zero impressions over X days
- **Use case:** Account hygiene — reduce dead weight
- **Warning:** Don't pause new keywords still in Learning

### 18. Quality Score History Tracker
- **Source:** Multiple community versions
- **Purpose:** Stores daily QS snapshots (Google doesn't retain QS history natively)
- **Use case:** Track QS trends over time to identify gradual deterioration
- **Output:** Google Sheet with historical QS data
- **Schedule:** Weekly

### 19. Broken Landing Page URL Monitor
- **Source:** Google Developers / community
- **Purpose:** Tests all active landing page URLs for 404s, timeouts, slow loads
- **Use case:** Prevent wasted spend on broken URLs
- **Configuration:** Timeout threshold (10 sec default), alert recipients
- **Schedule:** Weekly (daily for high-volume accounts)

### 20. Emergency Stop Button
- **Source:** Community
- **Purpose:** Pauses account if integrated with uptime monitor and site goes down
- **Use case:** Prevent spend during outages
- **Prerequisites:** Uptime monitoring service integration (Pingdom, UptimeRobot, etc.)
- **Schedule:** Continuous (triggered by external webhook or frequent runs)

### 21. Disapproved Ads Alert
- **Source:** Multiple versions
- **Purpose:** Scans for disapproved ads, emails alerts
- **Use case:** Catch approval issues before they reduce delivery
- **Schedule:** Daily

### 22. Low-Volume Ad Group Detector
- **Source:** Community
- **Purpose:** Identifies ad groups getting insufficient impressions to optimize
- **Use case:** Account restructuring decisions — candidates for consolidation

### 23. Competitor Auction Entry Alert
- **Source:** Community
- **Purpose:** Alerts when a new competitor appears in Auction Insights
- **Use case:** Competitive intelligence
- **Schedule:** Weekly

### 24. Landing Page Speed Monitor
- **Source:** Community (uses PageSpeed Insights API)
- **Purpose:** Tracks Core Web Vitals for landing pages
- **Use case:** Speed issues affect QS and user experience
- **Prerequisites:** PageSpeed Insights API key

---

## Reporting Automation

### 25. Monthly Presentation Deck Generator
- **Source:** Optmyzr (paid) + open-source community versions
- **Purpose:** Pulls performance data and generates client-ready Google Slides reports
- **Use case:** Agency monthly reporting
- **Prerequisites:** Google Slides template, field mapping
- **Schedule:** 1st of month for previous month

### 26. Kratu Performance Heat Map
- **Source:** Google (open-source tool on GitHub)
- **Purpose:** Visualizes account performance across multiple dimensions as heat map
- **Use case:** Spot outliers and patterns visually
- **Output:** Interactive HTML heat map

### 27. Daniel Gilbert's Hourly Heat Map
- **Source:** Daniel Gilbert (Brainlabs)
- **Purpose:** Visualizes performance by hour-of-day × day-of-week as heat map
- **Use case:** Identify best/worst times for optimization
- **Output:** Spreadsheet with color-coded heat map

### 28. Change History Report
- **Source:** Community
- **Purpose:** Exports change history (bid changes, keyword additions, creative swaps) to a sheet
- **Use case:** Correlate performance changes with account changes
- **Notes:** Google's native change history export is often sufficient — this is for automated archival

### 29. Custom Metric Dashboard
- **Source:** Community (many versions)
- **Purpose:** Pushes key metrics to a Google Sheet for custom dashboards
- **Use case:** Non-standard reporting that Google Ads UI doesn't support
- **Schedule:** Daily

### 30. Multi-Account Summary Script
- **Source:** Community (MCC-level)
- **Purpose:** Rolls up multi-account performance into single-sheet summary
- **Use case:** Agency or in-house with many accounts
- **Runs at:** MCC level
- **Schedule:** Weekly or monthly

---

## Ecommerce & Shopping

### 31. Jack Felsted's Revenue Maximizer Tiering
- **Source:** Jack Felsted (jackfelsted.com)
- **Purpose:** Tiers products by gross profit margin using custom labels, applies differentiated tROAS targets
- **Use case:** Ecommerce profit-based bidding (POAS > ROAS)
- **Prerequisites:** Merchant Center feed with cost/margin data, custom labels set up
- **Configuration:** Margin thresholds per tier, tROAS targets per tier, 7/14/28/90-day ROI lookback
- **Schedule:** Weekly or bi-weekly
- **Notes:** Uses the google-merchant-center skill for custom label setup

### 32. Product Performance Labeler
- **Source:** Community
- **Purpose:** Applies custom labels based on product performance (best_seller, poor_performer, new_arrival)
- **Use case:** Dynamic tiering in Shopping and PMax campaigns
- **Schedule:** Daily or weekly

### 33. Zero-Impression Product Finder
- **Source:** Community
- **Purpose:** Identifies products in feed with zero impressions over X days
- **Use case:** Feed diagnostic — indicates disapprovals, pricing issues, or targeting problems
- **Schedule:** Weekly

### 34. Shopping Campaign Priority Manager
- **Source:** Community
- **Purpose:** Shifts products between high/medium/low priority Shopping campaigns based on performance
- **Use case:** Manual Shopping campaign structures (pre-PMax)
- **Warning:** If using PMax, this is redundant

### 35. Out-of-Stock Product Pauser
- **Source:** Community
- **Purpose:** Pauses ads for products that are out of stock
- **Use case:** Prevent wasted spend on unavailable inventory
- **Notes:** Merchant Center handles this automatically now — mainly useful for non-Merchant Center setups

### 36. Merchant Center Issue Monitor
- **Source:** Community
- **Purpose:** Alerts on new Merchant Center disapprovals, warnings, feed errors
- **Use case:** Feed health monitoring
- **Schedule:** Daily

---

## Ad Copy & Creative Analysis

### 37. Frederick Vallaeys RSA N-Gram Analyzer
- **Source:** Frederick Vallaeys (Optmyzr / Search Engine Land)
- **Purpose:** Analyzes which words/phrases in ad copy correlate with higher CTR and conversions
- **Use case:** Data-driven ad copy optimization — identify winning language patterns
- **Output:** N-gram breakdown of ad copy performance
- **Schedule:** Monthly

### 38. Ad Strength Audit Script
- **Source:** Community
- **Purpose:** Reports ad strength ratings across all RSAs, flags low-strength ads
- **Use case:** RSA optimization workflow — target ads with "Poor" or "Average" rating
- **Output:** Sheet with ad strength distribution

### 39. Best/Worst Ad Finder
- **Source:** Community
- **Purpose:** Identifies top and bottom performing ads within ad groups
- **Use case:** Pause underperformers, study winners
- **Configuration:** Min conversion threshold to avoid false positives

### 40. Headline/Description Performance Extractor
- **Source:** Community (uses RSA asset reporting)
- **Purpose:** Pulls asset-level performance from RSA reports
- **Use case:** Understand which headlines/descriptions are driving results
- **Notes:** Google's asset reporting has limitations — this aggregates what's available

---

## Competitive Monitoring

### 41. Auction Insights Trend Tracker
- **Source:** Community (multiple versions)
- **Purpose:** Stores historical Auction Insights data (impression share, overlap rate, position above rate)
- **Use case:** Google doesn't retain AI history natively — this builds it
- **Output:** Google Sheet with time-series AI data
- **Schedule:** Weekly

### 42. Competitor Ad Copy Change Alert
- **Source:** Community
- **Purpose:** Scrapes competitor ad copy via Ads Transparency Center, alerts on changes
- **Use case:** Competitive intelligence
- **Prerequisites:** Google Ads Transparency Center access
- **Warning:** Fragile — depends on external pages that can change structure

### 43. Share-of-Voice Tracker
- **Source:** Community
- **Purpose:** Calculates your share of voice based on impression share data across keyword groups
- **Use case:** Competitive benchmarking
- **Schedule:** Weekly

---

## Account Management & Audits

### 44. Sarah Stemen's Account Auditor
- **Source:** Sarah Stemen (sarahstemen.com)
- **Purpose:** Runs automated account audit checks — disapprovals, low QS, zero-impression keywords, etc.
- **Use case:** Quick health check before client meetings
- **Output:** Audit report with action items
- **Schedule:** Weekly or on-demand

### 45. Keyword Conflict Checker
- **Source:** Community
- **Purpose:** Identifies negative keywords blocking positive keywords (keyword conflicts)
- **Use case:** Prevent negative keyword mistakes from reducing delivery
- **Output:** Sheet listing conflicts with recommended resolutions

### 46. Duplicate Keyword Finder
- **Source:** Community
- **Purpose:** Finds duplicate keywords across ad groups (same term, same match type)
- **Use case:** Account cleanup — reduces internal competition
- **Output:** Sheet with duplicates and ad group locations

### 47. Ad Group Structure Auditor
- **Source:** Community
- **Purpose:** Flags ad groups with too few or too many keywords, unbalanced RSAs
- **Use case:** Identifying structural problems

### 48. Negative Keyword List Manager
- **Source:** Community
- **Purpose:** Centralizes negative keyword list management across multiple campaigns
- **Use case:** Maintain shared negative lists consistently
- **Schedule:** Weekly or on-demand

---

## Utility & Infrastructure

### 49. Label-Based Bulk Operations
- **Source:** Community
- **Purpose:** Pauses, enables, or modifies entities based on labels
- **Use case:** Rapid bulk actions without manual selection in the UI

### 50. Google Sheets Data Importer
- **Source:** Community (many versions)
- **Purpose:** Reads data from Google Sheets to drive account changes (bid lists, negative lists, etc.)
- **Use case:** Spreadsheet-driven workflow for teams that prefer sheet-based editing
- **Warning:** Validate sheet data before applying — bad data = bad changes

### 51. Custom Alert Sender
- **Source:** Community
- **Purpose:** Sends custom alerts via email, Slack, or webhooks based on custom conditions
- **Use case:** Integrate Google Ads with team communication tools
- **Prerequisites:** Slack webhook URL or email setup

### 52. Account Snapshot Archiver
- **Source:** Community
- **Purpose:** Archives daily/weekly account snapshots to a sheet for audit trail
- **Use case:** Compliance, change tracking, recovery

### 53. Bulk URL Updater
- **Source:** Community
- **Purpose:** Updates final URLs across many ads/keywords from a sheet mapping
- **Use case:** Site migrations, URL restructuring, tracking parameter updates

---

## Source Reputation Reference

| Source | Update Frequency | Reliability | Best For |
|--------|-----------------|-------------|----------|
| **Nils Rooijmans** | Frequent (2024-2025 updates) | High — actively maintained | GAQL-compliant, modern scripts |
| **Frederick Vallaeys** | Moderate | High | Anomaly detection, ad copy, account management |
| **Brainlabs** | Historical (many legacy) | Medium — check dates | Original versions, often need updating |
| **Jack Felsted** | Active | High | Ecommerce, profit-based bidding |
| **Daniel Gilbert** | Historical | Medium | Heat maps, competitive monitoring |
| **Optmyzr** | Frequent (paid product) | High | Polished but paid platform |
| **Sarah Stemen** | Active | High | Practitioner scripts, audits |
| **Google Developers** | Official samples | High — but basic | Starting templates |
| **Community GitHub** | Varies widely | Variable | Check commits, read the code |

## Script Health Checks Before Installing

Always check before running any script:

1. **Publication date** — Scripts older than 2023 may use deprecated APIs
2. **GAQL compliance** — Pre-2024 Brainlabs scripts often use old query syntax
3. **ECPC references** — ECPC deprecated March 2025; any script referencing it needs updating
4. **API version** — Google Ads API deprecates versions regularly
5. **Dependencies** — External API keys (weather, PageSpeed, Slack webhooks)
6. **Author responsiveness** — Is the author still maintaining this? GitHub activity?
7. **Code quality** — Read it. Don't authorize code you don't understand. Scripts have full account access.

## When a Script Breaks

Scripts break silently when Google Ads API changes. Common failure modes:

| Symptom | Likely Cause | Fix |
|---------|-------------|-----|
| "Invalid query syntax" | GAQL version change | Update to current GAQL |
| "Entity not found" | Deprecated entity (ECPC, etc.) | Remove or replace |
| "Unknown field" | Field renamed in new API version | Check current field names |
| No output but no error | Conditional logic skipping all data | Check filters and thresholds |
| Runtime exceeded | Account grew beyond script's scale | Add pagination or filters |
| Email sent but wrong data | Script partially broken | Check logs carefully |

**Maintenance principle:** Any script not updated in 12+ months is at risk. Before running, verify it works against current API.

## Recommended Starter Set (Agency Managing 5+ Accounts)

If you're starting from zero, install these first:

1. **Frederick Vallaeys Anomaly Detector** — daily pulse (script #16)
2. **Brainlabs Search Query Mining (Nils Rooijmans version)** — weekly search term review (script #1)
3. **Broken Landing Page URL Monitor** — weekly URL check (script #19)
4. **Quality Score History Tracker** — weekly QS tracking (script #18)
5. **Monthly Reporting Deck Generator** — monthly reports (script #25)

Add ecommerce-specific scripts (Jack Felsted's Revenue Maximizer) and competitive monitoring after the foundation is stable.
