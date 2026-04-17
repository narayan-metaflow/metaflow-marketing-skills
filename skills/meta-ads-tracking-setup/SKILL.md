---
name: meta-ads-tracking-setup
description: Implement and validate Meta Pixel + Conversions API (CAPI) for maximum signal quality — the single biggest lever for Meta Ads performance via the Andromeda ranking system.
---

## Why This Matters

Meta's Andromeda deep learning architecture uses signal quality as its primary input for ad delivery optimization. Weak tracking = weak signals = poor delivery = wasted spend. Getting Pixel + CAPI right is foundational — do this before any campaign optimization.

## Process

1. **Audit current state** — Check Events Manager for active Pixel, CAPI status, EMQ scores, event volume, and deduplication status
2. **Choose implementation path** — Select CAPI method based on technical resources and budget (see Decision Tree below)
3. **Implement CAPI** — Deploy server-side tracking alongside existing Pixel
4. **Configure event deduplication** — Match `event_id` between Pixel and CAPI to prevent double-counting
5. **Optimize EMQ** — Add all matching keys to maximize user match rate
6. **Validate** — Use Test Events tool to confirm both Pixel and CAPI fire correctly
7. **Monitor** — Track EMQ scores, event volumes, and deduplication rates weekly for 30 days

## CAPI Implementation Decision Tree

Ask these questions in order:

**Q1: What platform runs the website?**
- Shopify → Use **native Shopify integration** (free, built-in CAPI, minimal setup)
- WordPress/WooCommerce → Use **CAPI Gateway** or **server-side GTM**
- Custom-built site → Use **server-side GTM** or **manual API**
- No website (CRM/offline events only) → Use **manual API** with `action_source: system_generated`

**Q2: What's the technical budget?**

| Method | Cost | Dev Effort | Best For |
|--------|------|-----------|----------|
| Native platform integration (Shopify, WooCommerce plugins) | Free–$50/mo | Low | Ecommerce on supported platforms |
| CAPI Gateway | $10–$400/mo hosting | Low–Medium | Teams wanting managed solution |
| Server-side GTM | $10–$50/mo (GCP) | Medium | Teams already using GTM |
| Manual API implementation | $500–$5K+ dev time | High | Custom platforms, maximum control |

**Q3: Are there offline/CRM conversions?**
- Yes → Must implement CAPI with stored `fbc` values (see fbclid Capture Workflow below)
- **CRITICAL (May 2025):** Meta permanently discontinued the Offline Conversions API. All offline tracking now flows through standard CAPI with `action_source` set to `physical_store` or `system_generated`

## Pixel vs CAPI Comparison

| Dimension | Meta Pixel (Client-Side) | Conversions API (Server-Side) |
|-----------|------------------------|------------------------------|
| How it fires | JavaScript in browser | Server-to-server HTTP POST |
| Blocked by ad blockers | Yes | No |
| Blocked by iOS ATT | Partially | No (server-side) |
| Blocked by cookie restrictions | Yes (3P cookies) | No |
| Data freshness | Real-time | Near real-time (seconds) |
| Data quality control | Limited | Full (you control the payload) |
| Events supported | Web events only | Web + offline + CRM + in-store |
| Required for | Baseline tracking | Signal recovery + offline events |
| Typical signal recovery | Baseline | Recovers 20–30% of events lost to browser restrictions |

**Both are required.** Pixel alone misses 20-30% of events. CAPI alone misses real-time behavioral signals. Together they give Meta's algorithm the fullest picture.

## Event Deduplication Setup

When both Pixel and CAPI fire for the same event, Meta must know they're the same event to avoid double-counting.

**How it works:**
1. Generate a unique `event_id` on your server or in the browser (UUID or timestamp-based)
2. Pass the same `event_id` to both the Pixel event AND the CAPI event
3. Both events must share the same `event_name` (e.g., both say `Purchase`)
4. Meta deduplicates by matching `event_id` + `event_name`

**Implementation pattern:**
```
// Browser: Pixel fires with event_id
fbq('track', 'Purchase', {value: 99.99, currency: 'USD'}, {eventID: 'order_abc123'});

// Server: CAPI fires with same event_id
POST to graph.facebook.com with event_id: 'order_abc123'
```

**Validation:** In Events Manager, check "Overview" tab → deduplication should show matched events. If CAPI event count far exceeds Pixel, deduplication may be failing.

## EMQ Optimization Checklist

Event Match Quality (EMQ) measures how well Meta can match your sent events to Meta user profiles. Higher EMQ = better attribution = better ad delivery.

**Targets:**
- 6.0+ = Good (minimum acceptable)
- 8.0+ = Excellent (target this)
- Below 6.0 = Degraded performance — fix immediately

**Matching keys to send (priority order):**

| Key | Parameter | Impact | Notes |
|-----|-----------|--------|-------|
| Email (hashed) | `em` | Highest | SHA-256 hash, lowercase, trimmed |
| Phone (hashed) | `ph` | High | SHA-256 hash, include country code, digits only |
| fbc (click ID) | `fbc` | High | Captured from `fbclid` URL parameter — critical for offline conversions |
| fbp (browser ID) | `fbp` | Medium | Read from `_fbp` first-party cookie |
| IP address | `client_ip_address` | Medium | User's IP, not server IP |
| User agent | `client_user_agent` | Medium | Browser user agent string |
| First name (hashed) | `fn` | Lower | SHA-256 hash, lowercase |
| Last name (hashed) | `ln` | Lower | SHA-256 hash, lowercase |
| City (hashed) | `ct` | Lower | SHA-256 hash, lowercase |
| State (hashed) | `st` | Lower | SHA-256 hash, lowercase, 2-char code |
| Zip code (hashed) | `zp` | Lower | SHA-256 hash |
| Country (hashed) | `country` | Lower | SHA-256 hash, 2-char ISO code |
| Date of birth (hashed) | `db` | Lower | SHA-256 hash, YYYYMMDD format |
| Gender (hashed) | `ge` | Lower | SHA-256 hash, 'm' or 'f' |
| External ID (hashed) | `external_id` | Lower | Your system's user ID, hashed |

**Rules:**
- ALL customer data must be SHA-256 hashed before leaving your server — Meta never receives raw PII
- Send as many keys as you have — more keys = higher match rate = higher EMQ
- Email alone typically gets EMQ to ~5-6. Email + phone + fbc gets to 7-8+
- Read `references/capi-event-parameters.md` for full parameter specifications and hashing requirements

## fbclid Capture & Storage Workflow

For CRM and offline events sent hours/days/weeks after the ad click, the `fbc` value is the critical link connecting the downstream conversion to the original ad.

**Step-by-step:**
1. User clicks ad → lands on your site with `?fbclid=xyz` in URL
2. Your landing page JavaScript captures `fbclid` from the URL
3. Store `fbclid` alongside the lead record in your CRM/database
4. Also read and store the `_fbp` cookie value
5. Construct the `fbc` parameter: `fb.1.{timestamp}.{fbclid_value}`
6. When the CRM event fires (e.g., sale closes 14 days later), send it via CAPI with the stored `fbc` value
7. **Event acceptance window:** Maximum 7 days from event time. Send CRM events as soon as possible after they occur

## action_source Parameter Values

Every CAPI event requires an `action_source` telling Meta where the event originated:

| Value | Use When |
|-------|----------|
| `website` | Event happened on your website (most common for web CAPI) |
| `app` | Event happened in your mobile app |
| `phone_call` | Event was a phone conversion |
| `chat` | Event originated from a messaging conversation |
| `email` | Event resulted from an email campaign |
| `physical_store` | In-store purchase or offline event at a physical location |
| `system_generated` | CRM event, backend event, or any system-triggered conversion |
| `other` | Doesn't fit above categories |

**Post-May 2025 migration:** If you were using the Offline Conversions API, change your integration to standard CAPI and set `action_source` to `physical_store` (for in-store events) or `system_generated` (for CRM/backend events).

## Validation Workflow

**Using Meta Test Events Tool:**
1. Go to Events Manager → your Pixel → Test Events tab
2. Open your website in a new tab
3. Perform a conversion action (e.g., submit a form, complete a purchase)
4. Return to Test Events — confirm you see:
   - One Pixel event AND one CAPI event for the same action
   - Both showing the same `event_id`
   - Status shows "Deduplicated" (not "Duplicate" or missing match)
5. Check EMQ score for the event — identify any missing matching keys

**Common validation failures:**

| Symptom | Likely Cause | Fix |
|---------|-------------|-----|
| CAPI events not appearing | Server not sending, API auth error | Check server logs, verify access token |
| Double-counted events | Missing or mismatched `event_id` | Ensure same `event_id` in Pixel and CAPI calls |
| Low EMQ despite sending keys | Hashing errors, wrong format | Verify SHA-256 hashing, check lowercase/trim |
| CAPI events far exceed Pixel | Pixel blocked but no dedup issue | Normal — CAPI recovers blocked events. Verify dedup still works for events both capture |
| Events delayed >7 days | Exceeds acceptance window | Speed up CRM-to-CAPI pipeline. Events must fire within 7 days |

## Output Format

When asked to help with Meta tracking setup, produce this deliverable:

```
## Meta Tracking Implementation Plan

### Current State Assessment
- Pixel status: [Active/Inactive/Not installed]
- CAPI status: [Active/Inactive/Not configured]
- EMQ score: [X.X / 10]
- Event deduplication: [Working/Not configured/Failing]
- Events tracked: [List of standard and custom events]
- Missing matching keys: [List]

### Implementation Steps
1. [Step with specific technical action]
2. [Step with specific technical action]
...

### Matching Keys Action Plan
| Key | Current Status | Action Required |
|-----|---------------|-----------------|
| em (email) | Sending | None |
| ph (phone) | Not sending | Add to CAPI payload |
...

### Validation Checklist
- [ ] Pixel fires on all conversion pages
- [ ] CAPI fires for all conversion events
- [ ] event_id matches between Pixel and CAPI
- [ ] Deduplication confirmed in Test Events
- [ ] EMQ score ≥ 6.0 (target 8.0+)
- [ ] All available matching keys sending
- [ ] SHA-256 hashing verified (no raw PII)
- [ ] action_source set correctly per event type
- [ ] CRM events firing within 7-day window
- [ ] fbclid capture and storage working

### Expected Impact
- Estimated signal recovery: [X]% of currently lost events
- EMQ improvement: [current] → [projected]
- Timeline to stable data: 7-14 days post-implementation
```

## Example

**Input:** "We're running Meta ads for a B2B SaaS company. We have the Pixel installed but no CAPI. Our EMQ is 4.2 and we track leads via a CRM. Some leads close 2-3 weeks after the ad click. How do we fix this?"

**Output:**

## Meta Tracking Implementation Plan

### Current State Assessment
- Pixel status: Active
- CAPI status: Not configured — this is your biggest gap
- EMQ score: 4.2 / 10 — below minimum threshold of 6.0
- Event deduplication: Not applicable (no CAPI yet)
- Events tracked: PageView, Lead (Pixel only)
- Missing matching keys: phone, fbc, fbp, IP, user agent

### Implementation Steps
1. **Implement CAPI via server-side GTM** — Best option for a custom B2B stack with your CRM. Set up server-side GTM container on Google Cloud ($10-$50/mo). Configure the Meta CAPI tag in server GTM to mirror Pixel events.
2. **Add event deduplication** — Generate a unique `event_id` for each Lead event. Pass it to both the Pixel `fbq('track', 'Lead', {}, {eventID: 'lead_xyz'})` and the server-side CAPI tag.
3. **Capture and store fbclid** — Add JavaScript to capture `fbclid` from landing page URLs. Store it in a hidden form field so your CRM records it on the contact. Also capture the `_fbp` cookie value.
4. **Build CRM-to-CAPI pipeline** — When a CRM deal closes, fire a CAPI `Purchase` event (or custom `ClosedWon` event) with `action_source: system_generated`, the stored `fbc` value, hashed email, and hashed phone.
5. **Fix the 2-3 week delay problem** — Events must arrive within 7 days of occurring. Set up a CRM workflow to fire CAPI events at key pipeline stages (MQL, SQL, Opportunity) rather than waiting for close. This keeps events within the 7-day window AND gives Meta more mid-funnel signals.
6. **Add matching keys** — Send hashed email + hashed phone + fbc + fbp + IP + user agent with every CAPI event.

### Matching Keys Action Plan
| Key | Current Status | Action Required |
|-----|---------------|-----------------|
| em (email) | Not sending via CAPI | Add to CAPI payload, SHA-256 hashed |
| ph (phone) | Not sending | Add to CAPI payload, SHA-256 hashed |
| fbc | Not capturing | Add fbclid capture to landing pages + CRM |
| fbp | Not sending | Read _fbp cookie, pass to server GTM |
| IP | Not sending | Auto-captured by server-side GTM |
| User agent | Not sending | Auto-captured by server-side GTM |

### Validation Checklist
- [ ] Pixel fires Lead event on form submission
- [ ] CAPI fires Lead event via server GTM
- [ ] event_id matches between Pixel and CAPI for Lead events
- [ ] Deduplication confirmed in Test Events
- [ ] EMQ score ≥ 6.0 (target 8.0+)
- [ ] fbclid captured and stored on the contact in your CRM records
- [ ] CRM events (MQL, SQL, ClosedWon) firing via CAPI within 7 days
- [ ] SHA-256 hashing verified for all PII fields
- [ ] action_source = "website" for web events, "system_generated" for CRM events

### Expected Impact
- Signal recovery: ~20-30% more conversion events captured
- EMQ improvement: 4.2 → 7.0+ (with email + phone + fbc + fbp)
- More mid-funnel signals for Meta's algorithm to optimize against
- Timeline: 7-14 days post-implementation for algorithm to recalibrate

## Guidelines

- **Never skip CAPI.** Pixel alone is insufficient in 2025. Browser restrictions, ad blockers, and iOS ATT mean Pixel misses 20-30% of events.
- **Never send unhashed PII.** All customer data must be SHA-256 hashed before transmission. Sending raw emails or phone numbers violates Meta's terms and privacy regulations.
- **Don't ignore EMQ below 6.0.** Sub-6 EMQ directly degrades ad delivery quality. Treat it as a critical issue.
- **Don't delay CRM events beyond 7 days.** Events older than 7 days are rejected. Build pipeline stages that fire within the window.
- **Don't set up CAPI without deduplication.** Double-counted conversions inflate metrics and mislead the algorithm.
- **Offline Conversions API is dead.** If someone references it, redirect them to standard CAPI with `action_source: physical_store` or `system_generated`. Discontinued May 2025.
- **Instant Experience (June 2025):** Meta no longer counts Instant Experience as a landing page view. Account for this in funnel metrics if using Instant Experience ads.
- **Attribution API change (October 2025):** `7d_view` and `28d_view` attribution windows are no longer returned in the Ads Insights API. Update any reporting that pulls these windows.
- **iOS 14+ context:** Aggregated Event Measurement (AEM) still governs measurement for iOS users. You can configure up to 8 prioritized events per domain.
- **Cross-reference:** For Meta account auditing including tracking health checks, use the **meta-ads-audit** skill. For Google tracking (gtag, GA4, enhanced conversions), tracking setup is covered within the **google-ads-audit** skill.
- **Confidence:** If the user's platform or tech stack isn't listed in this skill, recommend they consult Meta's official CAPI documentation for platform-specific integration guides rather than guessing at implementation details.
