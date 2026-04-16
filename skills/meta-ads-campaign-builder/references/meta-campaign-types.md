
# Meta Campaign Types — Detailed Setup by Objective

Complete configuration guide for each ODAX objective × conversion location combination.

## Table of Contents

1. [Sales Campaigns](#sales-campaigns)
2. [Leads Campaigns](#leads-campaigns)
3. [App Promotion Campaigns](#app-promotion)
4. [Traffic Campaigns](#traffic-campaigns)
5. [Engagement Campaigns](#engagement-campaigns)
6. [Awareness Campaigns](#awareness-campaigns)
7. [Advantage+ Shopping Campaigns (ASC)](#asc)

---

## Sales Campaigns

**Objective:** Drive purchases, signups, or other high-value conversion events.

### Sales → Website

| Setting | Configuration |
|---------|-------------|
| Optimization event | Purchase (or AddToCart if volume too low for Purchase) |
| Attribution | 7-day click, 1-day view (default) |
| Pixel + CAPI | Both required — optimize for signal quality |
| Conversion value | Send dynamic values for value-based optimization |
| Catalog | Optional — enable for dynamic product ads |
| Min budget | Enough for 50+ purchases/week per ad set at target CPA |

**Best practices:**
- Optimize for Purchase, not AddToCart. Only fall back to AddToCart if <25 purchases/week per ad set
- Send real conversion values (not static) for ROAS Goal bidding
- Use broad targeting + strong Pixel/CAPI data — algorithm finds buyers
- Catalog ads for ecommerce: dynamic retargeting showing viewed/carted products

### Sales → App

| Setting | Configuration |
|---------|-------------|
| Optimization event | App purchase or custom app event |
| App SDK | Must be installed and configured |
| Deep linking | Configure app deep links for seamless experience |

### Sales → Shop (Facebook/Instagram Shop)

| Setting | Configuration |
|---------|-------------|
| Optimization event | Purchase through Shop checkout |
| Catalog | Required — products must be in Shop |
| Checkout | Facebook/Instagram native checkout |
| Limitation | Only available in supported markets |

### Sales → Messenger / WhatsApp

| Setting | Configuration |
|---------|-------------|
| Optimization event | Purchase conversation started or completed |
| Messaging template | Configure automated or manual response flow |
| Response time | Must respond within 24 hours or lose messaging window |
| Best for | High-consideration products, consultation-based sales |

---

## Leads Campaigns

**Objective:** Generate leads via forms, websites, messaging, or calls.

### Leads → Instant Forms

| Setting | Configuration |
|---------|-------------|
| Form type | More Volume (pre-filled, lower quality) vs Higher Intent (manual entry, better quality) |
| Fields | Name, email, phone minimum. Custom questions for qualification |
| Privacy policy | Required — link to your privacy policy |
| CRM integration | Connect to your CRM via Zapier or native integrations |
| Thank you page | Custom CTA (website visit, phone call, download) |

**Higher Intent forms** add a review step before submission. Lead quality typically improves 30-50% vs More Volume forms, but cost per lead increases.

**Optimization:** Start with Higher Intent if lead quality matters. Only switch to More Volume if you can't get sufficient volume.

### Leads → Website

| Setting | Configuration |
|---------|-------------|
| Optimization event | Lead event fired on form submission |
| Pixel + CAPI | Both required for best signal quality |
| Landing page | Form above fold, mobile-optimized, fast loading |
| Thank you page | Fire conversion event here, not on form page |

### Leads → Messenger / WhatsApp / Instagram DM

| Setting | Configuration |
|---------|-------------|
| Optimization event | Messaging conversation started |
| Automated responses | Configure opening message and quick replies |
| Best for | Service businesses, consultation-based lead gen |
| Response requirement | Fast response = better ad delivery. Meta tracks response rates |

### Leads → Calls

| Setting | Configuration |
|---------|-------------|
| Optimization event | Call initiated |
| Call duration | Set minimum call duration for conversion counting |
| Business hours | Set ad schedule to business hours only |
| Best for | Service businesses (plumbers, lawyers, medical) |

---

## App Promotion

**Objective:** Drive app installs or re-engage existing app users.

### App Installs

| Setting | Configuration |
|---------|-------------|
| Optimization event | App Install |
| App SDK | Facebook SDK or MMP (AppsFlyer, Adjust, Branch) required |
| Creative | App screenshots, demo videos, playable ads |
| Placements | All placements including Audience Network (strong for app installs) |
| Budget | Enough for 50+ installs/day at target CPI for learning |

### App Engagement (Re-engagement)

| Setting | Configuration |
|---------|-------------|
| Optimization event | Custom app event (e.g., purchase, subscription) |
| Targeting | Existing app users who haven't been active |
| Deep links | Required for seamless in-app experience |
| Custom audiences | App users by last activity date |

---

## Traffic Campaigns

**Objective:** Drive visits to a website, app, or Messenger.

**Warning:** Traffic campaigns optimize for CLICKS, not conversions. Only use when you genuinely want page visits (content sites, awareness, event pages). For leads or sales, use Leads or Sales objectives instead.

| Setting | Configuration |
|---------|-------------|
| Optimization | Link Clicks or Landing Page Views |
| Landing page | Must load fast — these users are click-optimized, not conversion-optimized |
| Pixel | Install for remarketing even if not optimizing for conversions |
| Best use cases | Blog content, event pages, remarketing pool building |

**Landing Page Views vs Link Clicks:** Landing Page Views only counts when page fully loads. Filters out accidental clicks and slow-loading bounces. Preferred in most cases.

---

## Engagement Campaigns

**Objective:** Video views, post engagement, or Messenger conversations.

### Video Views

| Setting | Configuration |
|---------|-------------|
| Optimization | ThruPlay (15 sec or complete) or 2-Second Continuous Views |
| Creative | Video required. 15-30 seconds optimal |
| Best for | Building video viewer audiences for retargeting, brand storytelling |
| Audience building | Create custom audience of 50%+ or 75%+ viewers for retargeting |

### Post Engagement

| Setting | Configuration |
|---------|-------------|
| Optimization | Post Engagement (likes, comments, shares) |
| Best for | Social proof building, organic reach amplification |

### Messenger / Instagram DM

| Setting | Configuration |
|---------|-------------|
| Optimization | Conversations started |
| Best for | Customer service, FAQ handling, community engagement |

---

## Awareness Campaigns

**Objective:** Maximize reach and brand awareness.

| Setting | Configuration |
|---------|-------------|
| Optimization | Reach, Ad Recall Lift, or ThruPlay |
| Frequency cap | Set to avoid fatigue (2-3x per week for awareness) |
| Placements | Broad — all placements for maximum reach |
| Creative | Brand-focused, not direct response |
| Measurement | Ad Recall Lift study available for larger budgets |

---

## ASC

**Advantage+ Shopping Campaigns** — Meta's most automated campaign type for ecommerce.

| Setting | Configuration |
|---------|-------------|
| Targeting | Country-level only. No interest/behavior/lookalike controls |
| Customer budget ratio | Set existing vs new (e.g., 70/30, 80/20) |
| Creative limit | 150 ads maximum per campaign |
| Catalog | Required for dynamic product ads |
| Minimum requirement | 100+ conversions/week recommended |
| Signal dependency | Strong Pixel + CAPI essential (EMQ 6.0+ minimum) |

**ASC advantages:**
- Typically reduces cost per purchase ~12% vs manual campaigns
- Simplifies campaign management (fewer levers to manage)
- Algorithm has full control over audience and placement

**ASC limitations:**
- No detailed audience controls
- Limited creative testing structure (one big pool)
- Requires strong signal infrastructure to work well
- Not suitable for lead gen, service businesses, or low-volume accounts

**Customer ratio strategy:**
- New business launch: 90% new / 10% existing
- Established ecommerce: 70% new / 30% existing
- Heavy repeat purchase: 50% new / 50% existing
- Adjust based on actual new vs existing customer acquisition data
