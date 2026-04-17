---
name: google-ads-keyword-engine
description: "Research, evaluate, mine, and manage keywords for Google Ads — from initial discovery through ongoing search term optimization and negative keyword management."
---

## Process

**For new keyword research:**
1. Define the business, products/services, and target customer
2. Mine customer language from VOC sources
3. Build seed keyword list by intent category
4. Expand using tools and techniques
5. Evaluate and prioritize using the scoring framework
6. Assign match types and organize into ad groups
7. Build negative keyword lists

**For search term analysis (existing campaigns):**
1. Pull search term report (minimum 90 days, or 30 days for new campaigns)
2. Run n-gram analysis (1-gram, 2-gram, 3-gram)
3. Identify waste (high spend, zero conversions)
4. Identify winners (strong CPA/ROAS)
5. Take action: negate, promote, or investigate
6. Update negative keyword lists

## Customer Language Mining

Start with real customer language, not internal jargon. These sources give you the words actual buyers use:

| Source | What to Extract | How to Use |
|--------|----------------|-----------|
| Sales call recordings | Exact phrases prospects use to describe problems | Map to high-intent keywords |
| Support tickets | Common questions, complaint language | Map to informational and comparison keywords |
| Product reviews (yours) | Feature language, benefit descriptions | Feed into RSA headlines and keyword themes |
| Competitor reviews | Complaints and unmet needs | Target competitor weakness terms |
| Reddit / Quora | Thread titles, question phrasing | Long-tail keyword discovery |
| Industry forums | Technical terminology, emerging trends | Niche keyword expansion |
| Autocomplete / "related searches" | Google's own language suggestions | Validate demand and discover variants |

## Keyword Evaluation Framework

Score every keyword candidate on four dimensions:

| Dimension | Weight | How to Assess | Scoring |
|-----------|--------|--------------|---------|
| **Intent** | 35% | Commercial > Comparison > Informational > Navigational | Commercial intent = 10, Informational = 3 |
| **Volume** | 25% | Monthly search volume from Keyword Planner | Relative to niche: top 20% = 10, bottom 20% = 2 |
| **Competition** | 20% | Keyword Planner competition level + top-of-page bid | Low competition + high intent = ideal |
| **CPC** | 20% | Estimated cost vs target CPA margin | CPC < 20% of target CPA = 10, CPC > 50% of target CPA = 3 |

**Priority Score** = (Intent × 0.35) + (Volume × 0.25) + (Competition × 0.20) + (CPC × 0.20)

**Intent classification guide:**

| Intent Type | Signal Words | Conversion Likelihood | Example |
|------------|-------------|----------------------|---------|
| Commercial | buy, hire, pricing, cost, quote, near me, best, top | Highest | "hire plumber near me" |
| Comparison | vs, compare, review, alternative, which | High | "hubspot vs salesforce" |
| Informational | how to, what is, guide, tutorial, tips | Low (but useful for TOFU) | "how to fix leaky faucet" |
| Navigational | [brand name], login, website | Varies | "hubspot login" |

## Match Type Strategy (2025)

| Scenario | Recommended Match Type | Why |
|----------|----------------------|-----|
| Mature account (50+ conversions/month) + Smart Bidding | **Broad match** as default | Algorithm + Smart Bidding handles relevance. This is Google's 2025 recommendation |
| Brand terms | **Exact match** | Protect brand queries from broad expansion. Control messaging |
| High-intent, high-CPC terms | **Exact match** | Precise control on expensive clicks |
| Controlled expansion | **Phrase match** | Captures variations while maintaining intent direction |
| New account (<30 conversions/month) | **Phrase + Exact** | Not enough data for broad match + Smart Bidding to work |
| Testing new keyword themes | **Phrase match** first | Gather data before committing to broad |

**Critical requirement for broad match:** Must be paired with Smart Bidding (tCPA or tROAS) and have 50+ conversions/month. Broad match with manual bidding or low conversion volume will waste budget on irrelevant queries.

**ECPC is deprecated (March 2025).** If someone asks about broad match + ECPC, redirect to Manual CPC or Maximize Conversions as the bidding pair.

## N-Gram Analysis Process

N-gram analysis breaks search queries into word-level components to find patterns invisible at the query level.

**What it is:**
- 1-gram: single words ("shoes", "running", "waterproof")
- 2-gram: word pairs ("running shoes", "waterproof shoes")
- 3-gram: word triplets ("best running shoes", "waterproof trail shoes")

**How to run it:**
1. Export search term report (90 days minimum, queries with 3+ impressions)
2. Break every query into its n-grams
3. Aggregate metrics by n-gram: total impressions, clicks, spend, conversions, CPA, ROAS
4. Sort by spend descending to find biggest waste, or by CPA to find best performers

**Action framework:**

| N-gram Pattern | Criteria | Action |
|---------------|----------|--------|
| High spend, 0 conversions | $50+ spend AND 0 conversions | Add as negative keyword |
| High spend, poor CPA | Spend > $100 AND CPA > 2x target | Investigate — may need negative or ad group restructure |
| Strong CPA/ROAS | CPA < target AND 3+ conversions | Promote to exact-match keyword in dedicated ad group |
| High impressions, low CTR | 500+ impressions AND CTR < 1% | Intent mismatch — investigate query relevance |
| Emerging theme | Multiple related n-grams performing well | Create new ad group around this theme |

**Fractional conversion warning:** Data-driven attribution creates fractional conversions (e.g., 0.4 conversions). A keyword showing 0.3 conversions contributed to a conversion elsewhere. Filter to conversions > 1 before evaluating CPA to avoid false negatives.

**Tools for n-gram analysis:**
- Brainlabs Search Query Mining Script (updated for GAQL by Nils Rooijmans, March 2025) — automated, runs in Google Ads
- Adalysis — auto-generated n-gram reports
- PEMAVOR Search Term Miner — free, no-code
- BigQuery SQL — enterprise-scale analysis
- For script implementation, use the **google-ads-scripts** skill

## Negative Keyword Strategy

### Themed Negative Lists

Build shared negative keyword lists by category and apply across relevant campaigns:

| List Theme | Example Negatives | Apply To |
|-----------|-------------------|----------|
| Competitors | [competitor brand names] | All non-competitor campaigns |
| Jobs / Careers | jobs, salary, careers, hiring, internship, glassdoor | All campaigns |
| Free / DIY | free, DIY, template, open source, how to, tutorial | Bottom-funnel campaigns |
| Education / Info | what is, definition, wiki, course, certification | Bottom-funnel campaigns |
| Geographic exclusions | [irrelevant cities, states, countries] | Geo-targeted campaigns |
| Irrelevant industries | [industry terms not served] | All campaigns |
| Negative modifiers | cheap, used, wholesale (if premium brand) | Brand campaigns |

### Cross-Campaign Negatives
- Add exact-match negatives to prevent campaigns from competing against each other
- PMax cannibalization: if PMax search term insights show it's serving on queries your Search campaigns should own, add those as PMax negatives AND add them as exact-match keywords in Search

### Maintenance Cadence
- **Week 1-4 of new campaigns:** Review search terms weekly
- **Stable campaigns:** Bi-weekly review
- **Always check:** Negatives aren't blocking desired traffic (Brainlabs script has `checkNegatives` parameter)

## Tool Recommendations

| Tool | Best For | Cost |
|------|---------|------|
| Google Keyword Planner | Volume, competition, bid estimates, forecasting | Free (with Google Ads account) |
| SEMrush | Keyword gap analysis, competitor keyword targeting | $130+/mo |
| Keyword / SERP research suites | Click-through rate models, volume, content gaps | Varies |
| PPC competitive intel tools | Auction and ad-copy research | Varies |
| AnswerThePublic | Question-based queries, long-tail discovery | Free (limited) / $99+/mo |
| Google Autocomplete | Real-time search suggestions, alphabet soup technique | Free |
| Brainlabs Script | Automated n-gram analysis in Google Ads | Free (open source) |
| Adalysis | Auto-generated n-gram reports, keyword management | $99+/mo |
| PEMAVOR | Free n-gram mining, no-code | Free |

## Output Format

**For keyword research:**
```
## Keyword Research: [Business/Product]

### Keyword List
| Keyword | Match Type | Intent | Volume | CPC | Competition | Priority Score | Ad Group |
|---------|-----------|--------|--------|-----|-------------|---------------|----------|
| [keyword] | Exact | Commercial | 1,200 | $4.50 | Medium | 8.2 | [group] |

### Ad Group Structure
- Ad Group: [Theme]
  - Keywords: [list with match types]
  - Negative keywords: [list]

### Negative Keyword Lists
- Competitors: [list]
- Jobs/Careers: [list]
- Free/DIY: [list]
- [Custom theme]: [list]

### Match Type Rationale
[Why these match types were chosen based on account maturity and conversion volume]
```

**For search term analysis:**
```
## Search Term Analysis: [Date Range]

### N-Gram Waste Report
| N-gram | Impressions | Clicks | Spend | Conversions | CPA | Action |
|--------|------------|--------|-------|-------------|-----|--------|
| [n-gram] | 2,400 | 89 | $312 | 0 | ∞ | Negate |

### Promotion Candidates
| Search Term | Clicks | Conversions | CPA | Current Match | Action |
|------------|--------|-------------|-----|---------------|--------|
| [term] | 45 | 12 | $18 | Broad trigger | Promote to exact in new ad group |

### Negative Keyword Additions
| Keyword | Match Type | List | Reason |
|---------|-----------|------|--------|
| [keyword] | Phrase | Jobs | Zero conversions, $89 spend |

### Summary
- Total waste identified: $[X]
- Promotion candidates: [N] terms
- New negatives added: [N] keywords across [N] lists
```

## Example

**Input:** "I run a SaaS project management tool competing with two large incumbents. We're spending $20K/month on Google Ads with a $120 target CPA. We have 65 conversions/month. I need help with our keyword strategy and a search term cleanup."

**Output:**

## Keyword Strategy & Search Term Analysis

### Match Type Recommendation
With 65 conversions/month and active Smart Bidding, you qualify for **broad match + tCPA** as your primary strategy. Keep exact match for brand terms and highest-intent commercial keywords.

### Keyword List (Top Priority Additions)
| Keyword | Match Type | Intent | Est. Volume | Est. CPC | Priority Score | Ad Group |
|---------|-----------|--------|------------|---------|---------------|----------|
| project management software | Broad | Commercial | 18,100 | $12.40 | 8.5 | PM Software - Core |
| team collaboration tool | Broad | Commercial | 6,600 | $9.80 | 7.8 | Collaboration Tools |
| asana alternative | Exact | Comparison | 3,200 | $15.60 | 8.9 | Competitor Alternatives |
| monday.com alternative | Exact | Comparison | 2,400 | $14.20 | 8.7 | Competitor Alternatives |
| best project management app | Phrase | Comparison | 4,400 | $11.30 | 8.1 | PM Software - Best |
| project tracking software | Broad | Commercial | 2,900 | $10.50 | 7.4 | PM Software - Core |
| task management for teams | Broad | Commercial | 1,800 | $8.90 | 7.2 | Task Management |
| project management tool for small business | Phrase | Commercial | 1,200 | $7.60 | 7.6 | PM Software - SMB |

### N-Gram Waste Report (from search term analysis)
| N-gram | Spend | Conversions | CPA | Action |
|--------|-------|-------------|-----|--------|
| "free" | $890 | 0 | ∞ | Negate (phrase match) |
| "template" | $420 | 0 | ∞ | Negate (phrase match) |
| "jobs" | $340 | 0 | ∞ | Negate (exact to jobs list) |
| "certification" | $210 | 0 | ∞ | Negate (phrase match) |
| "open source" | $180 | 0 | ∞ | Negate (phrase match) |
| "what is" | $156 | 0 | ∞ | Negate on BOFU campaigns only |
| **Total waste** | **$2,196/mo** | | | **11% of budget recovered** |

### Promotion Candidates
| Search Term | Clicks | Conv | CPA | Action |
|------------|--------|------|-----|--------|
| project management for remote teams | 34 | 8 | $51 | Promote to exact in new "Remote Teams" ad group |
| simple project tracker | 22 | 5 | $53 | Promote to exact in "Task Management" group |
| replace asana | 18 | 6 | $45 | Promote to exact in "Competitor Alternatives" group |

### Negative Keyword Lists
- **Competitors (protect from brand overlap):** asana, monday.com, clickup, notion, trello, basecamp, jira, wrike (applied as exact match to non-competitor campaigns)
- **Jobs/Careers:** jobs, salary, careers, hiring, internship, glassdoor, project manager salary
- **Free/DIY:** free, open source, template, free trial hack, cracked
- **Education:** what is project management, certification, PMP, course, degree, tutorial

### PMax Cannibalization Check
Review PMax search term insights for queries like "asana alternative" and "project management software" — these should be served by Search exact-match campaigns, not PMax. Add as PMax negatives if PMax is stealing them.

## Guidelines

- **Don't recommend broad match without Smart Bidding + 50 conversions/month.** This is a hard requirement. Broad match with manual bidding or low volume wastes budget on irrelevant queries.
- **Don't judge keywords on fractional conversions.** Data-driven attribution creates fractions. A keyword with 0.4 conversions isn't failing — it contributed. Filter to > 1 conversion before evaluating CPA.
- **Don't build negative lists once and forget them.** Search term review is ongoing: weekly for new campaigns, bi-weekly for stable ones.
- **Don't add negatives without checking for conflicts.** A negative keyword can block a desired positive keyword. Always cross-reference.
- **Don't rely solely on Keyword Planner.** It shows what people search, not how they think. VOC mining from sales calls, reviews, and forums reveals language Keyword Planner misses.
- **ECPC is gone (March 2025).** Don't reference it as a bidding option. If someone's account still shows ECPC, flag it and recommend migration.
- **PMax search term visibility is here (2025).** Use PMax search term insights and campaign-level negatives to manage cannibalization between PMax and Search.
- **Cross-references:** For n-gram automation scripts, use the **google-ads-scripts** skill. For campaign building with these keywords, use the **google-ads-campaign-builder** skill. For ongoing keyword optimization, use the **google-ads-optimizer** skill. For full account audit including keyword health, use the **google-ads-audit** skill.
- **Confidence:** Volume estimates from Keyword Planner are ranges, not exact numbers. CPC estimates can vary significantly from actuals. Present keyword data as directional, not precise.
