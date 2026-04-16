
# CAPI Event Parameters Reference

Complete parameter reference for Meta Conversions API events, including hashing specifications, standard events, and custom event configuration.

## Table of Contents

1. [Required Server Event Parameters](#required-server-event-parameters)
2. [Customer Information Parameters (Matching Keys)](#customer-information-parameters)
3. [SHA-256 Hashing Specifications](#sha-256-hashing-specifications)
4. [Standard Events Reference](#standard-events-reference)
5. [Custom Event Guidelines](#custom-event-guidelines)
6. [action_source Values](#action_source-values)
7. [Event Acceptance Rules](#event-acceptance-rules)
8. [Common Integration Patterns](#common-integration-patterns)

---

## Required Server Event Parameters

Every CAPI event must include these fields:

| Parameter | Type | Description | Example |
|-----------|------|-------------|---------|
| `event_name` | string | Standard or custom event name | `"Purchase"` |
| `event_time` | integer | Unix timestamp when event occurred | `1700000000` |
| `action_source` | string | Where the event originated | `"website"` |
| `event_source_url` | string | URL where event happened (for web events) | `"https://example.com/thank-you"` |
| `event_id` | string | Unique ID for deduplication with Pixel | `"order_abc123"` |
| `user_data` | object | Customer matching parameters (see below) | See Customer Information section |

### Optional but recommended:

| Parameter | Type | Description |
|-----------|------|-------------|
| `custom_data` | object | Event-specific data (value, currency, content IDs) |
| `opt_out` | boolean | If true, event used for measurement only, not optimization |
| `data_processing_options` | array | LDU compliance (e.g., `["LDU"]` for Limited Data Use) |
| `data_processing_options_country` | integer | Country code for data processing (1 = US) |
| `data_processing_options_state` | integer | State code (1000 = California for CCPA) |

---

## Customer Information Parameters

These go inside the `user_data` object. More parameters = higher EMQ = better matching.

### High-Impact Parameters (send all you have)

| Parameter | Key | Format Before Hashing | Hashed? | Notes |
|-----------|-----|----------------------|---------|-------|
| Email | `em` | Lowercase, trim whitespace | Yes (SHA-256) | Highest impact single key |
| Phone | `ph` | Digits only with country code, no symbols | Yes (SHA-256) | e.g., `"15551234567"` before hashing |
| Click ID | `fbc` | `fb.1.{timestamp}.{fbclid}` | No | Constructed from fbclid URL param |
| Browser ID | `fbp` | Read from `_fbp` cookie | No | First-party cookie value |
| IP Address | `client_ip_address` | IPv4 or IPv6 | No | User's IP, NOT your server IP |
| User Agent | `client_user_agent` | Full browser UA string | No | From user's request header |

### Medium-Impact Parameters

| Parameter | Key | Format Before Hashing | Hashed? | Notes |
|-----------|-----|----------------------|---------|-------|
| First Name | `fn` | Lowercase, trim, no punctuation | Yes (SHA-256) | Use legal name, not nicknames |
| Last Name | `ln` | Lowercase, trim, no punctuation | Yes (SHA-256) | |
| External ID | `external_id` | Your internal user/customer ID | Yes (SHA-256) | Consistent across sessions |

### Lower-Impact Parameters (still help)

| Parameter | Key | Format Before Hashing | Hashed? | Notes |
|-----------|-----|----------------------|---------|-------|
| City | `ct` | Lowercase, no punctuation, no state | Yes (SHA-256) | e.g., `"new york"` |
| State | `st` | 2-character lowercase code | Yes (SHA-256) | e.g., `"ny"` |
| Zip Code | `zp` | 5-digit US zip or country format | Yes (SHA-256) | e.g., `"10001"` |
| Country | `country` | 2-character lowercase ISO code | Yes (SHA-256) | e.g., `"us"` |
| Date of Birth | `db` | `YYYYMMDD` format | Yes (SHA-256) | e.g., `"19900115"` |
| Gender | `ge` | Single character: `"m"` or `"f"` | Yes (SHA-256) | Lowercase |

---

## SHA-256 Hashing Specifications

**Rules — all must be followed:**

1. **Normalize first, then hash.** Order matters.
2. **Lowercase** all values before hashing
3. **Trim** leading and trailing whitespace
4. **Remove** special characters from phone numbers (keep digits and country code only)
5. Hash using **SHA-256** — no other algorithm
6. Output as **lowercase hexadecimal string** (64 characters)
7. **Never double-hash** — hash once only
8. **Never send raw PII** — all fields marked "Hashed: Yes" must be hashed before transmission

**Normalization examples:**

| Field | Raw Value | Normalized | SHA-256 Hash |
|-------|-----------|-----------|-------------|
| Email | `" John.Doe@Gmail.COM "` | `"john.doe@gmail.com"` | `a8cfcd74...` |
| Phone | `"+1 (555) 123-4567"` | `"15551234567"` | `b2e978f1...` |
| First Name | `" John "` | `"john"` | `527bd5b5...` |
| City | `"New York"` | `"new york"` | `2e6cc9c2...` |
| State | `"NY"` | `"ny"` | `4106752e...` |
| Country | `"US"` | `"us"` | `9b202eca...` |

**Language-specific hashing:**

```python
# Python
import hashlib
hashed = hashlib.sha256(value.strip().lower().encode('utf-8')).hexdigest()
```

```javascript
// Node.js
const crypto = require('crypto');
const hashed = crypto.createHash('sha256').update(value.trim().toLowerCase()).digest('hex');
```

```php
// PHP
$hashed = hash('sha256', strtolower(trim($value)));
```

```ruby
# Ruby
require 'digest'
hashed = Digest::SHA256.hexdigest(value.strip.downcase)
```

---

## Standard Events Reference

Use standard event names whenever possible — Meta's algorithm is trained on them.

### Ecommerce Events

| Event Name | When to Fire | Key custom_data Parameters |
|-----------|-------------|---------------------------|
| `ViewContent` | Product page viewed | `content_ids`, `content_type`, `value`, `currency` |
| `AddToCart` | Item added to cart | `content_ids`, `content_type`, `value`, `currency` |
| `InitiateCheckout` | Checkout process started | `content_ids`, `value`, `currency`, `num_items` |
| `AddPaymentInfo` | Payment info entered | `content_ids`, `value`, `currency` |
| `Purchase` | Transaction completed | `content_ids`, `content_type`, `value`, `currency`, `order_id` |

### Lead Generation Events

| Event Name | When to Fire | Key custom_data Parameters |
|-----------|-------------|---------------------------|
| `Lead` | Lead form submitted | `value`, `currency`, `content_name` |
| `CompleteRegistration` | Account/signup completed | `value`, `currency`, `content_name` |
| `SubmitApplication` | Application submitted | `value`, `currency` |
| `Contact` | Contact request initiated | `content_name` |
| `Schedule` | Appointment/demo booked | `value`, `currency` |

### Engagement Events

| Event Name | When to Fire | Key custom_data Parameters |
|-----------|-------------|---------------------------|
| `Search` | Site search performed | `search_string`, `content_ids` |
| `Subscribe` | Subscription started | `value`, `currency`, `predicted_ltv` |
| `StartTrial` | Free trial initiated | `value`, `currency`, `predicted_ltv` |
| `FindLocation` | Store/location search | — |
| `CustomizeProduct` | Product customization used | `content_ids` |
| `Donate` | Donation made | `value`, `currency` |

### custom_data Parameter Details

| Parameter | Type | Description |
|-----------|------|-------------|
| `value` | float | Monetary value of the event (required for value optimization) |
| `currency` | string | ISO 4217 currency code (e.g., `"USD"`, `"EUR"`) |
| `content_ids` | array | Product/content IDs matching your catalog |
| `content_type` | string | `"product"` or `"product_group"` (must match catalog) |
| `content_name` | string | Name of the page/product |
| `content_category` | string | Category of the page/product |
| `num_items` | integer | Number of items in the event |
| `order_id` | string | Unique order identifier |
| `search_string` | string | Search query text |
| `predicted_ltv` | float | Predicted lifetime value (for value-based optimization) |
| `status` | string | Registration/subscription status |

---

## Custom Event Guidelines

Use custom events when standard events don't fit your conversion funnel.

**When to use custom events:**
- Mid-funnel actions specific to your business (e.g., `QualifiedLead`, `DemoCompleted`, `ProposalSent`)
- B2B pipeline stages (e.g., `MQL`, `SQL`, `ClosedWon`)
- SaaS-specific events (e.g., `FeatureActivated`, `UpgradeStarted`)

**Rules:**
- Custom event names are case-sensitive
- Use PascalCase for consistency (e.g., `DemoBooked`, not `demo_booked`)
- Custom events can be used for optimization but Meta's algorithm has less training data for them
- Where possible, map to the closest standard event AND fire a custom event
- Maximum 8 prioritized events per domain under Aggregated Event Measurement (iOS 14+)

**iOS 14+ / AEM considerations:**
- You can only optimize for 8 prioritized events per domain
- Rank events by business value: Purchase > Lead > AddToCart > ViewContent
- Changes to event priority take up to 72 hours to propagate
- Custom events count against the 8-event limit

---

## action_source Values

| Value | Use Case | Example |
|-------|----------|---------|
| `website` | Event occurred on your website | User completes purchase on your site |
| `app` | Event occurred in your mobile app | In-app purchase |
| `phone_call` | Phone conversion | Call tracking conversion |
| `chat` | Messaging/chat conversion | Messenger bot conversion |
| `email` | Email-driven conversion | Click-to-purchase from email campaign |
| `physical_store` | In-store/offline event | POS system records in-store purchase |
| `system_generated` | Backend/CRM event | CRM marks lead as qualified |
| `other` | None of the above fit | Edge cases only |

**Post-Offline API migration (May 2025):**
- Former Offline Event Sets → use `physical_store` for in-store events
- Former Offline Conversions → use `system_generated` for CRM/backend events
- The `upload` value that was specific to Offline API is deprecated — map to appropriate value above

---

## Event Acceptance Rules

| Rule | Specification |
|------|--------------|
| Maximum event age | 7 days from `event_time` to API receipt |
| Recommended latency | < 1 hour from event occurrence |
| Batch size | Up to 1,000 events per API request |
| Rate limits | Varies by app; typically 2,000+ events/second |
| Retry policy | Retry failed events with exponential backoff |
| Duplicate handling | Events with same `event_id` + `event_name` within 48 hours are deduplicated |
| Time zone | `event_time` must be Unix timestamp (UTC) |

**Latency impact on matching:**
- Events sent within 1 hour: highest match rate
- Events sent within 1-24 hours: good match rate
- Events sent within 1-7 days: declining match rate (user may have cleared cookies, changed devices)
- Events sent after 7 days: rejected

---

## Common Integration Patterns

### Pattern 1: Ecommerce (Shopify)
- Pixel: installed via Shopify's native integration
- CAPI: enabled via Shopify's built-in CAPI (Settings → Customer events)
- Deduplication: handled automatically by Shopify
- Matching keys: email + phone from checkout (auto-hashed)
- Key events: ViewContent, AddToCart, InitiateCheckout, Purchase

### Pattern 2: Lead Gen (WordPress + server-side GTM)
- Pixel: installed via GTM web container
- CAPI: server-side GTM container on Google Cloud
- Deduplication: event_id generated in dataLayer, passed to both Pixel and server tags
- Matching keys: email from form submission + fbp cookie + fbc from URL + IP + UA (auto-captured by sGTM)
- Key events: Lead, CompleteRegistration, Schedule

### Pattern 3: B2B SaaS (Custom + CRM)
- Pixel: installed on marketing site for web events
- CAPI: dual path — server-side GTM for web events, direct API for CRM events
- Deduplication: event_id for web events; CRM events are server-only (no Pixel equivalent, no dedup needed)
- Matching keys: email + phone from signup + fbc stored at lead capture
- Key web events: Lead, StartTrial, Subscribe
- Key CRM events: custom `MQL`, `SQL`, `ClosedWon` with action_source: system_generated

### Pattern 4: Offline/Retail (POS integration)
- Pixel: on website if applicable
- CAPI: direct API from POS/backend system
- action_source: `physical_store`
- Matching keys: hashed email/phone from loyalty program or receipt email
- Key events: Purchase with physical_store source
- **Note:** This replaces the discontinued Offline Conversions API (May 2025)
