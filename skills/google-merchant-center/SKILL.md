---
name: google-merchant-center
description: Optimize product feeds for Shopping and Performance Max campaigns — from fixing disapprovals to building custom label strategies that power profitability-based bidding.
---

## Process

**For feed audits:**
1. Review Merchant Center Diagnostics → Priority Fixes tab
2. Categorize issues by severity and click uplift potential
3. Optimize titles (highest impact), then images, prices, descriptions, identifiers
4. Set up supplemental feeds for enrichment
5. Configure custom labels for product tiering
6. Monitor and maintain

**For new feed setup:**
1. Connect product data source (API, file, or platform integration)
2. Map required and recommended attributes
3. Optimize titles and descriptions before first submission
4. Submit feed and resolve initial disapprovals
5. Build custom label strategy
6. Link to Google Ads for Shopping/PMax campaigns

## Feed Quality Hierarchy

Fix in this order — each level has decreasing marginal impact:

| Priority | Attribute | Impact on Performance | Why |
|----------|-----------|----------------------|-----|
| 1 | **Title** | Highest | Determines which queries match your products. Title = your keyword strategy for Shopping |
| 2 | **Image** | Very High | Primary visual in Shopping results. White background, high resolution, no watermarks |
| 3 | **Price** | High | Competitive pricing directly affects CTR and conversion rate |
| 4 | **Description** | Medium | Supports query matching and product understanding |
| 5 | **GTIN/MPN/Brand** | Medium | Required for unique product identification. Missing = limited serving |
| 6 | **Product type / Category** | Medium | Helps Google classify correctly. Use detailed paths |
| 7 | **Availability** | Foundational | Must be accurate — mismatches cause disapprovals |
| 8 | **Custom labels** | Strategic | Enables performance-based bidding tiers |

## Title Optimization

Titles are the single most impactful feed attribute. They function as keywords for Shopping ads.

**Formula:** Brand + Product Type + Key Attributes (material, size, color, gender, model)

**By vertical:**

| Vertical | Title Formula | Example |
|----------|--------------|---------|
| Apparel | Brand + Gender + Product Type + Color + Size + Material | "Nike Men's Running Shoes Black Size 11 Flyknit" |
| Electronics | Brand + Product + Model + Key Spec + Variant | "Samsung Galaxy S24 Ultra 256GB Titanium Black" |
| Home & Garden | Brand + Product Type + Material + Dimensions + Color | "KitchenAid Stand Mixer 5-Quart Stainless Steel Red" |
| Beauty | Brand + Product Line + Product Type + Size + Variant | "CeraVe Moisturizing Cream 19oz Fragrance-Free" |
| B2B / Industrial | Brand + Product Type + Specification + Application | "3M Safety Glasses Anti-Fog ANSI Z87.1 Construction" |

**Title rules:**
- Maximum 150 characters (but front-load important terms — first 70 characters visible in most placements)
- Put highest-value keywords first
- Don't stuff — Google penalizes keyword-stuffed titles
- Match the language customers actually search (use VOC data from the **google-ads-keyword-engine** skill)
- Use supplemental feeds to A/B test titles without changing your primary feed

## Common Disapprovals & Fixes

| Disapproval | Cause | Fix |
|------------|-------|-----|
| Missing GTIN | No GTIN for manufactured products | Add valid UPC/EAN/JAN. If custom/handmade, set `identifier_exists: no` |
| Price mismatch | Feed price ≠ landing page price | Sync feed update frequency. Use real-time API for dynamic pricing |
| Availability mismatch | Feed says "in stock" but page shows "out of stock" | Increase feed refresh frequency (minimum daily, ideally every 6 hours) |
| Missing shipping info | No shipping configured | Set up shipping in Merchant Center settings or at product level |
| Image quality | Watermarks, promotional text, too small | Use clean product images, minimum 800x800px, no overlays |
| Landing page not crawlable | Googlebot can't access the page | Check robots.txt, ensure no noindex on product pages |
| Misrepresentation | Unrealistic claims, unclear business info | Review product descriptions and business identity settings |
| Adult content | Products flagged for adult classification | Add `adult: yes` attribute or appeal if incorrectly flagged |

**Priority Fixes tab workflow:**
1. Open Merchant Center → Products → Diagnostics → Priority Fixes
2. Each issue shows estimated click uplift from resolution
3. Sort by click uplift potential (highest first)
4. Fix systematically — resolve highest-impact issues first
5. Resubmit feed and monitor for clearance (typically 24-72 hours)

## Custom Label Strategy

Custom labels (0-4) let you segment products for bidding strategies in Shopping and PMax. Five labels available.

**Recommended label assignment:**

| Label | Dimension | Values | Purpose |
|-------|-----------|--------|---------|
| **Custom Label 0** | Margin tier | `high_margin`, `medium_margin`, `low_margin` | Bid more aggressively on high-margin products |
| **Custom Label 1** | Performance tier | `best_seller`, `rising`, `standard`, `underperformer` | Based on last 30-90 day ROAS/conversion data |
| **Custom Label 2** | Seasonality | `evergreen`, `spring`, `summer`, `fall`, `winter`, `holiday` | Adjust bids and budgets by season |
| **Custom Label 3** | Price range | `premium` (>$200), `mid` ($50-200), `budget` (<$50) | Different bid strategies by price point |
| **Custom Label 4** | Inventory status | `full_stock`, `low_stock`, `clearance`, `new_arrival` | Promote clearance, protect low stock |

**How to use custom labels in campaigns:**
- Create separate PMax asset groups or Shopping product groups per label value
- Set different tROAS targets: high-margin products can tolerate lower ROAS because profit margin is higher
- Pause or reduce bids on `underperformer` + `low_margin` combinations
- Boost `best_seller` + `high_margin` products with higher budgets

**Profitability-based bidding (POAS > ROAS):**
- ROAS ignores product costs. A $100 product with 80% margin is more valuable than a $100 product with 10% margin, even at the same ROAS
- Use Custom Label 0 (margin tier) to create separate bid strategies per margin level
- Jack Felsted's revenue maximizer approach: tier products by gross profit margin and set tROAS targets proportional to margin
- For implementation via scripts, use the **google-ads-scripts** skill (revenue maximizer tiering)

## Supplemental Feeds

Supplemental feeds enrich your primary feed without replacing it. Changes in the supplemental feed override matching attributes in the primary feed.

| Use Case | What to Add | Method |
|----------|------------|--------|
| Custom label assignment | Custom labels 0-4 | Google Sheets supplemental feed (easiest) |
| Title testing | Optimized titles overriding primary feed titles | Google Sheets → update titles → measure impact |
| Promotional data | `sale_price`, `sale_price_effective_date` | Scheduled feed or Sheets |
| Missing attributes | GTINs, product types, additional descriptions | Sheets or file feed |
| Seasonal adjustments | Update custom labels for seasonal products | Sheets updated monthly/quarterly |

**Setup:** Merchant Center → Products → Feeds → Supplemental feeds → Add. Match on `id` attribute. Google Sheets is the fastest method for non-technical teams.

## Feed Rules

Feed rules transform data during processing without changing the source feed.

**Common feed rules:**

| Rule | What It Does | Example |
|------|-------------|---------|
| Set to | Override an attribute with a fixed value | Set `shipping_weight` to "2 lb" for all products |
| Extract | Pull data from one attribute into another | Extract brand name from title → `brand` field |
| Prepend/Append | Add text to existing values | Prepend brand name to all titles |
| Find & Replace | Modify specific text within attributes | Replace "cm" with "inches" in descriptions |
| Calculate | Compute values from other fields | `sale_price` = `price` × 0.8 |
| Conditional | Apply rules only when conditions are met | If `brand` = "Nike", set `custom_label_0` = "premium" |

## Output Format

**For feed audits:**
```
## Merchant Center Feed Audit

### Feed Health Summary
- Total products: [X]
- Active: [X] ([%])
- Disapproved: [X] ([%])
- Pending: [X] ([%])

### Priority Fixes (by click uplift potential)
| Issue | Products Affected | Est. Click Uplift | Fix |
|-------|------------------|-------------------|-----|
| [issue] | [N] | [+X%] | [specific fix] |

### Title Optimization Opportunities
| Current Title | Optimized Title | Changes Made |
|--------------|----------------|--------------|
| [before] | [after] | [added brand, reordered attributes] |

### Custom Label Strategy
| Label | Dimension | Values | Products per Value |
|-------|-----------|--------|--------------------|
| 0 | Margin tier | high/medium/low | [X] / [X] / [X] |

### Feed Maintenance Plan
- Feed refresh frequency: [recommendation]
- Supplemental feed setup: [yes/no, what for]
- Review cadence: [weekly/monthly]
```

## Example

**Input:** "I have 2,400 products in Merchant Center. 180 are disapproved and my Shopping campaigns are underperforming. Help me fix the feed and set up a smart bidding structure."

**Output:**

## Merchant Center Feed Audit

### Feed Health Summary
- Total products: 2,400
- Active: 2,120 (88.3%)
- Disapproved: 180 (7.5%)
- Pending: 100 (4.2%)

### Priority Fixes (by click uplift potential)
| Issue | Products Affected | Est. Click Uplift | Fix |
|-------|------------------|-------------------|-----|
| Missing GTIN | 95 products | +12-18% clicks | Add valid UPCs. For handmade/custom items, set `identifier_exists: no` |
| Price mismatch | 42 products | +8-12% clicks | Increase feed refresh to every 6 hours (currently daily) |
| Image quality (watermarks) | 28 products | +5-8% clicks | Replace with clean product photos, no text overlays |
| Missing shipping | 15 products | +3-5% clicks | Configure shipping in MC settings for all products |

### Title Optimization Opportunities
| Current Title | Optimized Title | Changes |
|--------------|----------------|---------|
| "Blue Running Shoes" | "Nike Air Zoom Pegasus 41 Men's Running Shoes Blue Size 11" | Added brand, model, gender, size |
| "Wireless Earbuds" | "Sony WF-1000XM5 Wireless Earbuds Noise Cancelling Black" | Added brand, model, key feature, color |
| "Coffee Maker" | "Breville Barista Express Espresso Machine Stainless Steel" | Added brand, product line, material |

### Custom Label Strategy
| Label | Dimension | Values | Products | Bid Strategy |
|-------|-----------|--------|----------|-------------|
| 0 | Margin | high (>60%), medium (30-60%), low (<30%) | 480 / 1,200 / 720 | tROAS 300% / 500% / 800% |
| 1 | Performance | best_seller, rising, standard, underperformer | 240 / 360 / 1,200 / 600 | Max budget / Growing budget / Standard / Reduced |
| 2 | Seasonality | evergreen, seasonal | 1,800 / 600 | Stable year-round / Ramp up in season |
| 3 | Price range | premium (>$200), mid ($50-200), budget (<$50) | 300 / 1,100 / 1,000 | Lower tROAS OK / Balanced / Needs volume |
| 4 | Inventory | full_stock, low_stock, clearance | 1,800 / 400 / 200 | Standard / Cap spend / Promote aggressively |

### Implementation Plan
1. **Week 1:** Fix 180 disapprovals (GTINs first → price sync → images → shipping). Expected: recover ~8-18% lost clicks
2. **Week 1:** Set up Google Sheets supplemental feed for custom labels 0-4
3. **Week 2:** Optimize titles for top 200 revenue products (supplemental feed override)
4. **Week 2:** Create PMax asset groups segmented by Custom Label 0 (margin) × Custom Label 1 (performance)
5. **Week 3:** Set tROAS targets by margin tier: high-margin at 300%, medium at 500%, low at 800%
6. **Week 4:** Review performance by custom label. Increase budget on high-margin best-sellers, reduce on low-margin underperformers

### Feed Maintenance Plan
- Feed refresh: Increase to every 6 hours (from daily)
- Supplemental feed review: Monthly (update custom labels based on trailing 30-day data)
- Disapproval check: Weekly via Priority Fixes tab
- Title testing: Ongoing via supplemental feed A/B tests

## Guidelines

- **Don't ignore the Priority Fixes tab.** It tells you exactly which issues to fix and estimates the click uplift. Start there every time.
- **Don't stuff titles with keywords.** Google penalizes keyword stuffing. Follow the formula: Brand + Product Type + Key Attributes. Front-load the most important terms in the first 70 characters.
- **Don't use ROAS alone for product bidding.** POAS (Profit On Ad Spend) is the right metric for ecommerce. A 500% ROAS on a 10% margin product loses money. Use custom labels to tier by margin and set appropriate tROAS per tier.
- **Don't set and forget custom labels.** Product performance changes. Update Custom Label 1 (performance tier) monthly based on trailing 30-90 day data.
- **Don't neglect feed refresh frequency.** Price and availability mismatches are the fastest route to disapprovals. Minimum daily, ideally every 6 hours for dynamic inventory.
- **PMax minimum budget applies.** PMax campaigns using this feed need $50-100/day minimum, with daily budget ≥ 3x target CPA. Budget under $1K/month → focus on standard Shopping for more control.
- **Cross-references:** For keyword insights that inform title optimization, use the **google-ads-keyword-engine** skill. For PMax and Shopping campaign setup using this feed, use the **google-ads-campaign-builder** skill. For automated product tiering scripts, use the **google-ads-scripts** skill (Jack Felsted's revenue maximizer). For full account audit including feed health, use the **google-ads-audit** skill.
- **Confidence:** Click uplift estimates from Priority Fixes are Google's projections, not guarantees. Custom label tier boundaries (margin %, price ranges) should be calibrated to the specific business — the values above are starting points.
