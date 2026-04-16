
# Google Ads Campaign Types — Detailed Setup Guide

Complete setup guide for every Google Ads campaign type with specific settings, asset requirements, and optimization tips.

## Table of Contents

1. [Standard Search Campaigns](#standard-search)
2. [AI Max for Search](#ai-max-for-search)
3. [Performance Max (PMax)](#performance-max)
4. [Demand Gen Campaigns](#demand-gen)
5. [Display Campaigns](#display)
6. [Video Campaigns (YouTube)](#video)
7. [Standard Shopping Campaigns](#standard-shopping)
8. [App Campaigns](#app)
9. [Call Campaigns](#call)
10. [Hotel Campaigns](#hotel)

---

## Standard Search

**Best for:** Capturing high-intent search demand with granular keyword control.

**Setup requirements:**
- Keywords organized into themed ad groups
- RSA ads (15 headlines + 4 descriptions per ad group)
- Negative keyword lists
- Extensions (sitelinks, callouts, structured snippets minimum)

**Key settings:**
| Setting | Recommendation |
|---------|---------------|
| Networks | Search only. Uncheck "Include Google Display Network" |
| Match types | Broad + Smart Bidding (50+ conv/mo), Exact for brand, Phrase for controlled expansion |
| Bid strategy | By maturity — Manual CPC (new) → Maximize Conversions (30+) → tCPA/tROAS (50+) |
| Ad rotation | Optimize (default) |
| Conversion action | Campaign-specific primary conversion |

**Ad group structure:**
- 5-20 keywords per ad group, tightly themed by intent
- Each ad group needs its own RSA with headlines relevant to that theme
- Don't mix informational and commercial intent in same ad group

**When to choose over AI Max:** When you need full keyword-level control, are in a highly regulated industry, or have very specific brand messaging requirements.

---

## AI Max for Search

**Launched:** Global beta September 2025
**Performance:** Average 34% conversion rate improvement vs traditional Search in early testing

**What's different from standard Search:**
- AI generates and tests ad copy variations within your text guidelines
- Smart Bidding Exploration discovers new query categories automatically
- One-click experiments for strategy testing
- Granular search term visibility (better than PMax)

**Setup requirements:**
- Text guidelines: define brand voice, required messaging, restricted terms
- Seed keywords or themes (AI expands from there)
- Strong conversion tracking (enhanced conversions recommended)
- 50+ conversions/month recommended for best results

**Key settings:**
| Setting | Recommendation |
|---------|---------------|
| Text guidelines | Configure immediately — controls AI-generated copy |
| Bid strategy | tCPA or tROAS (Smart Bidding required) |
| Budget | $50-100/day recommended (needs volume for AI exploration) |
| Learning phase | 7-14 days — do not make changes during this period |

**Monitoring:**
- Watch Smart Bidding Exploration for new query categories being tested
- Review AI-generated ad variations for brand compliance
- Compare performance vs existing Search campaigns using experiments

**When to choose:** Mature accounts (50+ conversions/month) wanting AI-driven optimization with more transparency than PMax.

---

## Performance Max

**Best for:** Full-funnel automated campaigns across all Google properties (Search, Shopping, Display, YouTube, Discover, Gmail, Maps).

**Setup requirements:**
- Asset groups with audience signals
- Full asset mix per group:
  - Images: 1200x628 landscape (minimum), 1200x1200 square, 960x1200 portrait
  - Videos: 15-second minimum (horizontal, vertical, square)
  - Headlines: up to 5 short (30 char) + 5 long (90 char)
  - Descriptions: up to 5 (90 char)
  - Business name + logo
- Merchant Center feed linked (for Shopping component)

**Key settings:**
| Setting | Recommendation |
|---------|---------------|
| Budget | $50-100/day minimum. Daily = 3x target CPA. Under $1K/month → use Search instead |
| Bid strategy | Maximize Conversions or Maximize Conversion Value (+ tCPA/tROAS targets) |
| Audience signals | Remarketing lists, customer match, in-market segments, custom segments |
| Brand exclusions | Enable for Search text ads to prevent brand cannibalization |
| Negative keywords | Campaign-level negatives now available (January 2025) |
| New customer acquisition | Enable if prospecting is the goal — predicts high-LTV users |
| URL expansion | Review — restrict if ads are sending to unintended pages |

**2025 features:**
- Campaign-level negative keywords (January 2025)
- Full search term reporting (same granularity as Search)
- Channel performance reports (see which channels drive results)
- Brand exclusions for Search text ads
- New customer acquisition goals (high-LTV prediction)

**Asset group strategy:**
- Separate groups by product/service line
- Each group needs distinct audience signals
- Don't put all products in one group — segments need unique messaging

**When to choose:** Ecommerce with product feeds, accounts wanting full Google coverage with automation, accounts with $50+/day budget.

---

## Demand Gen

**Best for:** Awareness and consideration across YouTube, Discover, Gmail, and Google Display Network.

**Setup requirements:**
- Visual-first creative (images and video)
- Audience targeting (lookalike from customer lists, in-market, custom)
- Compelling creative for non-search contexts (users aren't searching, they're browsing)

**Key settings:**
| Setting | Recommendation |
|---------|---------------|
| Bid strategy | Target CPC (traffic), Maximize Conversions (leads/sales), Maximize Conversion Value |
| Audiences | Lookalike seeds from customer lists or high-value converters. In-market segments |
| Creative | Multiple formats: single image, carousel, video. 4:5 vertical for mobile, 16:9 for YouTube |
| New customer acquisition | Enable for prospecting goals |

**Role in Power Pack (2025):**
- Demand Gen → generates awareness and consideration
- AI Max → captures search intent created by Demand Gen
- PMax → full-funnel scale across all properties
- This trio replaces the older "Power Pair" (Search + PMax)

**When to choose:** Building brand awareness, launching new products, generating demand before search intent exists.

---

## Display

**Best for:** Remarketing and broad awareness across Google's display network (millions of websites and apps).

**Setup requirements:**
- Responsive display ads (15 images, 5 headlines, 5 descriptions, 5 logos)
- Audience targeting: remarketing lists, in-market, affinity, custom segments

**Key settings:**
| Setting | Recommendation |
|---------|---------------|
| Bid strategy | Maximize Conversions (remarketing) or Target CPM (awareness) |
| Placements | Start with automatic, then exclude low-quality sites |
| Content exclusions | Exclude sensitive content categories |
| Frequency capping | Set to avoid ad fatigue (3-5 impressions/user/day max) |

**Exclusion best practices:**
- Regularly review placement reports — exclude low-quality sites and apps
- Use third-party exclusion lists: DoubleVerify, IAS, Zefr (expanded for 2025)
- Exclude mobile app placements if they drive accidental clicks

**When to choose:** Remarketing existing website visitors, broad awareness campaigns with visual creative.

---

## Video

**Best for:** YouTube advertising across multiple formats and objectives.

**Campaign subtypes:**
| Subtype | Format | Objective |
|---------|--------|-----------|
| Drive Conversions | In-stream (skippable) | Sales, leads |
| Video Views | In-stream + in-feed | Views, engagement |
| Video Reach | Bumper (6s), in-stream, non-skippable | Brand awareness, reach |
| Audio Reach | Audio ads (no video needed) | Podcast/music audience |

**Creative specs:**
| Format | Length | Aspect Ratio | Best For |
|--------|--------|-------------|----------|
| In-stream skippable | 15-60 sec (15-30 optimal) | 16:9 landscape | Conversions |
| In-stream non-skippable | 15 sec max | 16:9 landscape | Awareness |
| Bumper | 6 sec max | 16:9 landscape | Recall |
| Shorts | 15-60 sec | 9:16 vertical | Mobile-first |
| In-feed | Any | 16:9 or 1:1 | Discovery/browse |

**Key rule:** First 3 seconds determine engagement. Front-load the hook — brand, problem statement, or provocative visual.

---

## Standard Shopping

**Best for:** Granular product-level control as alternative to PMax for ecommerce.

**Setup requirements:**
- Merchant Center linked with approved product feed
- Product group segmentation by category, brand, condition, custom label

**Key settings:**
| Setting | Recommendation |
|---------|---------------|
| Feed | Must be linked from Merchant Center |
| Product groups | Segment by category, brand, or custom labels (margin/performance tiers) |
| Bid strategy | Manual CPC (control) or Maximize Clicks → Smart Bidding when data sufficient |
| Priority | Standard, High, or Low — use for campaign layering strategy |
| Negative keywords | Add to prevent irrelevant product matching |

**When to choose over PMax:** When you want full visibility into product-level performance and manual bidding control. Good for testing before scaling to PMax.

---

## App

**Best for:** Driving app installs (ACi) or engagement (ACe).

| Subtype | Minimum Requirements | Best For |
|---------|---------------------|----------|
| App Installs (ACi) | App on iOS/Android, audience signals | New app growth |
| App Engagement (ACe) | 50K+ installs minimum | Re-engaging existing users |
| App Pre-registration | Android only | Pre-launch buzz |

**Key settings:**
- Assets: text ideas (up to 5), images, videos, HTML5 playables
- Audience signals guide optimization (especially for ACi)
- Budget: enough for 10+ daily installs at target CPI for ACi learning

---

## Call

**Best for:** Service businesses driving phone calls from mobile users.

**Setup:**
- Mobile-only delivery
- Call tracking and recording (optional but recommended)
- Headlines focused on phone action: "Call Now", "Speak to an Expert"
- Call extensions with business phone number

**Key settings:**
| Setting | Recommendation |
|---------|---------------|
| Networks | Search only, mobile devices |
| Call reporting | Enable for tracking |
| Minimum call duration | Set for conversion counting (e.g., 60 seconds = qualified call) |

---

## Hotel

**Best for:** Hospitality businesses with property-specific rate feeds.

**Setup requirements:**
- Hotel Center linked (separate from Merchant Center)
- Rate feed with prices, availability, dates
- Property-level ads

**Key settings:**
| Setting | Recommendation |
|---------|---------------|
| Bid strategy | Commission-based (pay per booking) or CPC |
| Rate feeds | Must be accurate and updated frequently |
| Targeting | Property-level, can layer audiences |
