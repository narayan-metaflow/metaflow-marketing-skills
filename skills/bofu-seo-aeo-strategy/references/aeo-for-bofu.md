# AEO for BOFU — Deep Reference

How AI answer engines handle bottom-of-funnel commercial queries, which sources they cite, how BOFU intents fan out into sub-queries, and the concrete moves that earn citation share. Read when planning the AEO side of a BOFU page or auditing why an existing page is (or isn't) cited.

This reference teaches principles and patterns. It does not quote volatile citation percentages — citation behavior shifts release to release. The shape of the behavior is stable; the numbers are not.

---

## Why commercial queries behave differently

Informational queries ("what is a CRM") and commercial queries ("best CRM for agencies") look similar structurally but trigger very different retrieval behavior on AI engines.

- **Informational queries** reward canonical explainer content. A single well-written definitional article can dominate the citation surface.
- **Commercial queries** reward *pluralistic* citation. The engine does not want to stake its answer on a single vendor's page. It assembles a synthesis across review aggregators, third-party listicles, community discussion, and a narrow set of vendor pages.

This has two consequences for BOFU:

1. **Vendor pages alone almost never earn the full citation surface** for commercial queries. They are one input among several. The exception is directly-named head-to-head comparisons ("[A] vs [B]"), where the vendor's own well-structured comparison page is often cited — but even there it is cited *alongside* review aggregators, Reddit, and third-party comparisons, not exclusively.
2. **Citation share compounds with third-party presence.** A vendor absent from major review sites, Reddit, and YouTube review coverage cannot muscle its way into citations by writing a better blog post.

Everything in this reference follows from those two facts.

---

## The BOFU citation pool — the types of sources that get cited

Across the major AI engines, the citation pool for commercial queries converges on a recognizable mix. The proportions vary by platform; the categories are remarkably stable.

**The six types of sources cited for BOFU queries:**

1. **Review aggregators** — major software review and comparison marketplaces (plus analyst peer lists where relevant). Category pages, head-to-head compare pages, and segment-filtered "best X for Y" pages inside these sites.
2. **Large publisher listicles** — national tech media, vertical trades, and well-known category blogs. Higher cited on general-category queries; less cited on specific head-to-heads.
3. **Community discussion** — Reddit threads (r/sysadmin, r/SaaS, r/marketing, r/devops and vertical subs), Hacker News threads, Stack Exchange, niche forums. Weighted heavily when the engine wants "what practitioners actually say."
4. **Video review transcripts** — YouTube review videos, with auto-generated transcripts. Heavier weight on ChatGPT and Gemini in particular.
5. **Vendor-authored BOFU pages** — comparison pages, alternative pages, and listicles on tool vendor sites. Cited when they are well-structured, well-authored, and match the specific query surface.
6. **Independent blogs and newsletters** — practitioner-written, substack-hosted, or indie category analysts. Weighted higher when brand-recognized in the space.

The shape of the citation pool is a six-legged stool. Missing a leg weakens the whole surface. A vendor cannot compensate for zero Reddit presence by writing more blog posts, cannot compensate for absent review-site presence by paying for more PR, cannot compensate for no YouTube coverage by buying ads.

---

## Per-platform behavior

Each AI engine has its own retrieval bias. The practical moves differ by platform. The list below covers the engines most relevant to B2B SaaS BOFU queries as of 2026.

### ChatGPT (with browsing / search)

**Retrieval bias:** Strongly weights review aggregators, large publisher listicles, and YouTube review transcripts. Heavy Reddit citation on queries with community discussion depth. Cites vendor comparison pages when the query is a specific head-to-head.

**Common synthesis pattern:** "Here are the top options for [category], based on reviews across software marketplaces and recent comparison guides…" followed by a short ranked list with one-line summaries.

**What wins:**
- Review-site profile presence with recent reviews
- A well-structured vendor comparison page for direct-name head-to-heads
- Reddit threads with substantive discussion (not promotional)
- YouTube walkthroughs with clear audio and complete transcripts
- Listicle coverage in large publishers for category-wide queries

**What loses:**
- Pages without clear H2 structure — extraction fails
- Comparison pages where the vendor ranks itself #1 without evidence — down-weighted as promotional
- Stale content (unrefreshed prior-year dates)

### Perplexity

**Retrieval bias:** Shows citations inline for every claim. Heaviest weight on review aggregators, independent blogs, and direct vendor comparison pages. Favors sources with clear, quoted claims it can cite precisely.

**Common synthesis pattern:** Condensed answer with numbered inline citations; users can click through to each source.

**What wins:**
- Factual, specific, extractable claims — "Starts at $X/user/month on the annual plan" beats "Affordable pricing."
- Short, declarative sentences. Perplexity extracts better from tight prose than from flowing paragraphs.
- Comparison tables with descriptive cells.
- Strong methodology sections in listicles — Perplexity weights pages with visible methodology higher.

**What loses:**
- Marketing-flavored prose where claims are fuzzy or unquantified
- Pages that bury the answer below fold — Perplexity's extractor leans heavily on early content

### Google AI Overviews

**Retrieval bias:** Draws heavily from sources already ranking in classical organic results for the query, but with a strong lean toward forum/community sources (Reddit in particular), review aggregators, and authoritative category leaders. Reflects Google's broader push to surface "voices of experience" for commercial queries.

**Common synthesis pattern:** Short answer paragraph, source chips linking to 3–6 cited pages, then the classical SERP beneath.

**What wins:**
- Strong organic ranking for the query — AIO typically draws from the top ranking URLs
- Pages with explicit fan-out coverage (the FAQ section is the lever)
- Presence in Reddit discussions that rank
- Review-site category pages that rank

**What loses:**
- Pages that rank but don't answer the query directly in the first paragraph
- Pages written for a slightly different query (the AIO extractor is narrower than classical ranking)

### Google AI Mode

**Retrieval bias:** A more conversational, follow-up-heavy surface. Performs deeper fan-out than AIO — a single user query triggers many sub-queries internally. Citations accumulate across the conversational turn.

**Common synthesis pattern:** Conversational answer with expanding follow-up threads; sources surface progressively as the user probes.

**What wins:**
- Pages that cover the fan-out — the FAQ section does double duty here
- Entity density — pages where product names, feature names, pricing tiers, and integrations are consistently named read as high-signal
- Pages that directly answer the predictable follow-up: "what about pricing," "what about integrations," "what about migration"

**What loses:**
- Narrow pages that answer only the head query and miss the follow-ups — they cite once and disappear from subsequent turns
- Pages that fail to name specific products, features, and prices — low entity density fails the secondary retrieval

### Microsoft Copilot (Bing-backed)

**Retrieval bias:** Similar to AIO in drawing from organic rankings, but with a stronger lean toward large publisher listicles and Microsoft-ecosystem sources. Cites fewer sources per answer than Perplexity.

**Common synthesis pattern:** Structured answer with numbered citations at the end of paragraphs.

**What wins:**
- Bing organic ranking for the target query
- Large publisher coverage
- Structured content with clear sections Copilot can assemble

**What loses:**
- Pages optimized only for Google — Bing rankings can diverge meaningfully for commercial queries

### Gemini

**Retrieval bias:** Leans on Google's broader retrieval layer with stronger weighting toward YouTube (Google-owned), review aggregators, and authoritative category leaders. Uses more multimodal signals — a YouTube walkthrough with clear visuals can be cited where a text-only equivalent is not.

**Common synthesis pattern:** Conversational answer with a "sources" block, often including YouTube thumbnails.

**What wins:**
- YouTube presence — both your own channel and earned coverage
- Review aggregator profile strength
- Well-structured comparison pages with clean tables

**What loses:**
- No video presence in a category where video reviews exist — the absence is noticeable

---

## Fan-out sub-queries by BOFU intent

Mike King's query fan-out concept is especially acute for commercial intents: a single user query expands into many LLM-internal sub-queries. The page that covers the fan-out is cited across the conversational turn; the page that answers only the head query is cited once and discarded.

Below are the predictable fan-out patterns for each of the four BOFU formats. Use them to generate FAQ questions, H3 section headings, and additional paragraph coverage.

### Comparison page fan-out ("A vs B")

Typical LLM-internal sub-queries:

- Which is more expensive — A or B, at what volume?
- Is A or B better for small teams / enterprise / startups / specific vertical?
- How do A and B compare on [specific feature]?
- Can I migrate from A to B, and how much effort?
- What do review aggregators / Reddit say about A vs B?
- Is A or B better for [specific integration or stack]?
- Does A or B have a free tier / open-source option / self-host?
- Which has better customer support?
- Which is easier to set up / onboard?

Coverage move: the FAQ section plus the segmented "Which should you choose?" section should together answer all of these. Explicit question-form H2s and H3s inside the page body pre-answer the fan-out.

### Alternative page fan-out ("alternatives to X")

Typical LLM-internal sub-queries:

- Why are people leaving X?
- What's cheaper than X with similar features?
- What's the open-source alternative to X?
- Which X alternative has the best free tier?
- What alternative to X is best for [specific segment]?
- Is [Tool N] really an X alternative or a different category?
- How hard is it to migrate from X to [Tool N]?
- What are the main complaints about X that alternatives solve?

Coverage move: the "Why look for an X alternative?" H2, the per-tool "Best for" tags, and the FAQ together must cover the fan-out. An alternative page that doesn't explain *why* someone is leaving the incumbent fails the first sub-query and drops out of subsequent citations.

### "Best X" listicle fan-out

Typical LLM-internal sub-queries:

- What's the best free X?
- What's the best X for small business / enterprise / specific segment?
- What's the best X with [specific integration]?
- What's the most affordable X?
- What X has the best customer support?
- Is [Tool N] really the best X?
- How do these X tools compare on pricing?
- What should I look for in an X tool?
- How did you evaluate these tools?

Coverage move: the "What to look for" H2, the methodology H2, the at-a-glance table, and the FAQ together cover the fan-out. Listicles without methodology are cited less because the engine cannot answer "how did you evaluate these?" — which is a predictable user follow-up.

### "Best X for Y" segment page fan-out

Typical LLM-internal sub-queries:

- Why do Y need different X tools than [broader audience]?
- What does Y specifically need in an X tool?
- Is [Tool N] really suitable for Y?
- How much should Y budget for X software?
- What's the cheapest X for Y?
- What's the best free X for Y?
- How should Y choose among these X tools?

Coverage move: the segment-specific evaluation criteria, the segment-framed per-tool "Best for" tags, and a segment-specific FAQ. A segment page that doesn't address the "why is this segment different" question looks like a cosmetic variant of the head-term page — which is exactly how the engine's retrieval treats it.

---

## The third-party surfaces — specifics by surface

Third-party presence is the non-negotiable input to BOFU citation share. Each surface rewards different investment.

### Software review aggregators

**What matters:**
- Profile completeness (features list, pricing, integrations, screenshots all populated)
- Recent review velocity (the platforms weight recency; a profile with 200 reviews from two years ago loses to one with 40 reviews from the last six months)
- Response to reviews — especially critical reviews, professionally addressed
- Badge placement on category pages (enterprise leader, high performer, momentum leader — these badges feed into LLM signals about "who leads the category")
- Specific-segment review density (reviews from small business users, from enterprise users, from specific verticals)

**Workflow:**
- Customer marketing or CS team runs a rolling review-request program
- Responses to reviews assigned to a named owner with a 48-hour SLA
- Quarterly audit of profile completeness and category placement

**What not to do:**
- Fake reviews. Detection is better than vendors realize, reputational cost is asymmetric, and some platforms permanently de-list offenders.
- Incentivized reviews without clear disclosure. Same risk profile.

### Reddit

**What matters:**
- Authentic presence in relevant subreddits over time — not a sudden burst before a launch
- Substantive answers to questions, without pitching
- Transparency about affiliation when relevant ("I work at [company], but here's an honest comparison…")
- Participation in threads about competitors without disparaging them

**Workflow:**
- Identify 3–6 relevant subreddits where your buyers discuss the category
- Assign a named team member (usually a founder, PM, or senior customer-facing role) to participate weekly
- Never buy accounts; never astroturf; never run an "ambassador program" that looks like grassroots but isn't

**What not to do:**
- Seed fake discussion threads. Moderators detect it; users detect it; the subreddit bans you; the reputational cost is permanent.
- Drop links without context. Reddit downweights this and users flag it.

### YouTube

**What matters:**
- Your own channel with real product walkthroughs, comparison videos, and customer-story videos — uploaded regularly enough to signal activity
- Transcripts auto-enabled (YouTube generates them; ensure the audio is clear enough that the transcript is accurate)
- Earned coverage from independent reviewers — podcast guests, YouTube reviewers, industry analysts who cover your category
- Titles, descriptions, and chapters that name specific features, competitors, and use cases

**Workflow:**
- Separate the "product marketing video" workflow (polished, scripted, short) from the "genuine review" workflow (longer, demo-heavy, transcribable)
- Pitch independent reviewers in your category; send product access, not scripts
- Title videos for the specific query buyers type — "[Tool] review: 3 months of using it for [use case]" beats "Tool overview"

### PR and brand mentions

**What matters:**
- Unlinked brand mentions in industry coverage, newsletters, and podcasts
- Consistent co-occurrence with your category and with competitors (the co-occurrence is the retrieval signal)
- Data-driven PR — original research, benchmark reports, and surveys earn citation-grade coverage

**Workflow:**
- Publish quarterly or semi-annual original research relevant to your category
- Pitch newsletter writers and podcast hosts with specific insights, not press releases
- Track unlinked brand mentions alongside linked ones — the AEO value is similar; the SEO value of the link is secondary

### Podcasts

**What matters:**
- Guest appearances on podcasts with transcripts published
- Host-read sponsorships that include a substantive explanation (some podcasts publish these in transcript form)
- Your own podcast or video series, if you have one, with transcripts

**Workflow:**
- Founder or senior team member on 4–8 podcasts per year
- Ensure every appearance has a transcript — if the podcast doesn't publish one, publish your own on your site with a link to the episode

---

## Brand mention velocity and co-occurrence

For AI retrieval, *unlinked* brand mentions matter almost as much as linked ones. The LLM doesn't primarily retrieve from a link graph; it retrieves from training data patterns and from live search snippets, both of which reflect text-level brand mention density.

**Practical implications:**

- A mention on a newsletter or a podcast transcript counts, even without a link
- Consistent naming matters — pick one canonical brand string; avoid mixing product name, domain, and legal entity randomly
- Co-occurrence with the category and with competitors compounds — "[Brand A], [Brand B], and [Brand C] are the leading tools for…" trains retrieval that your brand belongs in that set
- Mentions in "leader of the category" contexts (top-tier publishers, well-known newsletters) weigh more than equivalent mentions in low-authority contexts

**Build program:**

- Original research and data-driven content that earns citation-grade mentions
- A consistent spokesperson (founder or CMO) who is quoted in category coverage
- Partnerships with category-adjacent vendors that produce co-mentions (integration announcement + joint content)
- Industry analyst relations for categories where analyst reports matter

---

## Measuring AI citation share

Measuring AI citation share is both important and difficult. It is the closest thing to a defensible AEO KPI for BOFU, but the measurement methodology is evolving and the data is noisy.

### What to measure

**Share of citations** — for a defined set of target commercial queries, across a defined set of AI platforms, what percentage of answer citations point to your domain (or mention your brand even when not linking)?

**Share of brand mentions** — even when your page isn't cited, is your brand named in the answer? Many BOFU queries yield answers that mention brands without citing any single page; the brand mention is the win.

**Citation pool diversity** — which *types* of sources are in the citation pool for your target queries? If review sites and Reddit dominate the pool for a query and you're absent from both, your vendor page alone cannot close the gap.

**Follow-up citation persistence** — on Google AI Mode and ChatGPT conversational turns, do your sources persist across the follow-up queries, or do they appear once and drop out? Persistence across fan-out is a stronger signal than single-shot citation.

### How to sample

**Query set:** a stable panel of 20–60 commercial queries mapped to your BOFU pages — the specific head-to-head comparisons, alternative queries, listicle queries, and segment queries you target.

**Platforms:** ChatGPT (with browsing), Perplexity, Google AIO (desktop and mobile — they differ), Google AI Mode, Copilot, Gemini. At minimum, rotate through all of them quarterly; weight the ones your buyers actually use.

**Cadence:** monthly for top-priority queries; quarterly for the broader panel. Single-day snapshots are noisy; rolling 30-day panels are more trustworthy.

**Tooling:** a growing set of AEO visibility tools automate this (they rotate queries across platforms and log citations). Build your own panel if the tool fit isn't there. The key discipline is a consistent query set so you can track direction over time.

### What "good" looks like

There is no universal benchmark because citation share varies by category, platform, and query type. Instead, measure:

- **Direction over quarters** — are we trending up, flat, or down on citation share for our target queries?
- **Pool presence** — are we present in each citation pool leg (aggregators, publishers, community, video, vendor, independent) for our target queries?
- **Competitor gap** — on queries where a direct competitor cites more than we do, what's the specific gap (missing YouTube coverage? weaker review-site presence? weaker Reddit discussion?)
- **Brand-mention lift after a BOFU page ships** — does brand naming increase in adjacent AI answers even on queries the page doesn't directly target?

---

## The AEO-for-BOFU checklist

Before publishing a BOFU page, confirm each of the following is either true or has a dated plan to become true.

**On-page:**
- [ ] Direct-answer first paragraph is a segmented recommendation
- [ ] TL;DR comparison table sits directly under the intro (HTML table, descriptive cells)
- [ ] H2s are in question form where natural
- [ ] FAQ section covers the predictable fan-out sub-queries for this format
- [ ] Entity density is high — specific product names, features, prices, integrations named throughout
- [ ] Summary box at the end restates the segmented verdict
- [ ] Named author with verifiable credentials, dated content, visible last-updated

**Third-party — aggregators:**
- [ ] Major software review profiles complete
- [ ] Active recent review velocity
- [ ] Responses to critical reviews
- [ ] Segment-specific review density where relevant

**Third-party — community:**
- [ ] Authentic presence in 3–6 relevant subreddits
- [ ] Named team member participating
- [ ] No fake or incentivized discussion seeding

**Third-party — video and audio:**
- [ ] YouTube presence — own channel or earned reviewer coverage
- [ ] Podcast guest appearances in the last 12 months, with transcripts
- [ ] Clear audio on all video content for transcript accuracy

**Third-party — mentions:**
- [ ] Unlinked brand mentions program in place
- [ ] Original research or data-driven PR pipeline
- [ ] Consistent brand naming across surfaces

**Measurement:**
- [ ] Target-query panel defined
- [ ] Sampling cadence scheduled
- [ ] Baseline citation share recorded
- [ ] Named owner for quarterly review

---

## Common AEO failure patterns for BOFU

- **Publishing the page and waiting.** A BOFU page without matching third-party presence is half a strategy. The citation pool will be assembled; you need to be in more than one leg of it.
- **Chasing one platform's quirks.** Optimizing only for ChatGPT this quarter and Perplexity next quarter wastes time. The platforms converge on structural signals (entity density, clear structure, credible third-party presence) more than they diverge.
- **Astroturfing community presence.** Reddit and forum moderation detect coordinated pushes. The downside is permanent; the upside is temporary.
- **Fake or incentivized review-site reviews without disclosure.** Marketplaces investigate and may de-list. The AI engines down-weight vendors with pulled reviews.
- **YouTube absence in a video-heavy category.** If reviewers make videos about your competitors and not you, Gemini and ChatGPT will cite those videos when answering about the category.
- **Treating AEO as a content problem.** It is a brand-presence problem. Content is one surface; aggregators, community, video, and mentions are the others. A BOFU AEO program that budgets only for on-page content will underperform.
- **Measuring too frequently.** Daily citation-share tracking is noise; monthly or quarterly is signal. Do not chase week-to-week fluctuations.
- **Ignoring unlinked brand mentions in measurement.** Many AI answers name brands without linking to any single page. If you only count linked citations, you miss a meaningful share of AI visibility.
