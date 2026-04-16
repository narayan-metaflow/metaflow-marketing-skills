# AI Platform Profiles — Citation Behavior Deep Dive

Detailed citation behavior, top source pools, and optimization implications for each major AI answer engine. Data as of early 2026. **Treat as a starting point — the landscape shifts monthly.**

## Table of contents

1. [Google AI Overviews](#google-ai-overviews)
2. [Google AI Mode](#google-ai-mode)
3. [ChatGPT](#chatgpt)
4. [Perplexity](#perplexity)
5. [Copilot (Microsoft)](#copilot-microsoft)
6. [Cross-platform patterns](#cross-platform-patterns)

---

## Google AI Overviews

**What it is:** Generative summary that appears above traditional search results on Google, answering the user's query with cited sources. Powered by Gemini.

### Citation behavior

- **Query fan-out** is a primary retrieval mechanism. The system breaks the user query into multiple sub-queries, retrieves results for each, and cites pages that surface across the sub-query results.
- Fan-out plays a *larger* role in source selection since Gemini 3 (January 2026) (Google documentation + industry research).
- **76% of AI Overview citations came from Google top-10 pages** as of July 2025 (industry research, large citation samples). By February 2026, this had dropped to **38%** (large keyword samples) — and possibly as low as **17%** in some vendor estimates. The overlap between AI Overview citations and top-10 rankings is *declining rapidly*.
- **45.5% of AI Overview citations change between consecutive observations** of the same query (industry research, Nov 2025). AI Overview text changes 70% of the time.
- **Semantic similarity between consecutive AI Overviews: 0.95** — meaning stays the same, but sources and phrasing churn constantly.
- **No caching effect** — popular queries are as volatile as niche ones (Spearman correlation: -0.014).
- When AI Overviews appear, **position #1 CTR drops 34.5%** (industry studies, 300K keywords) to as much as 58% per some studies.

### Top cited sources

- Reddit (21% of citations — single largest source at ~5.5% of overall market share)
- Wikipedia
- YouTube
- Google-owned properties (Google blog, YouTube)
- Amazon (for commercial queries)
- LinkedIn (for professional queries)
- Software review marketplaces (for B2B software queries)

### Key optimization signals

- **Google ranking is no longer sufficient** for AI Overview citation (overlap dropping from 76% to 38% in 7 months). You need *additional* signals beyond the Google top 10.
- **Branded web mentions correlate 0.664** with AI Overview brand visibility (large-brand samples). Traditional backlink metrics correlate only 0.218.
- **YouTube presence** is the strongest single correlating factor with brand visibility across AI Overviews, ChatGPT, and AI Mode.

### Strategy implications

1. Rank in Google's top 10 for priority queries (necessary but no longer sufficient).
2. Build branded web mentions across high-authority sources.
3. Invest in YouTube video content on core topics.
4. Structure content with ski ramp framework to earn citation from pages that are cited.
5. Map and target fan-out sub-queries, not just the primary query.
6. Do not over-invest in AI Overview visibility as a traffic channel — 83% zero-click when AI Overviews appear.

---

## Google AI Mode

**What it is:** A conversational interface where Google acts more like a chatbot, with users asking follow-up questions. Different retrieval behavior from AI Overviews.

### Citation behavior

- **Only 13.7% citation overlap with AI Overviews** (industry research, December 2025). AI Overviews and AI Mode are essentially different surfaces despite both being Google.
- Favors forums, Q&A, and authoritative reference content.
- Longer, more diverse source pools than AI Overviews.

### Top cited sources

- Wikipedia
- YouTube
- Google's own blog
- Reddit
- Quora

### Key optimization signals

- Reference content and long-form, authoritative sources do well.
- Forum/Q&A presence matters more than in AI Overviews.
- Traditional SEO signals are less predictive here than for AI Overviews.

### Strategy implications

1. Wikipedia is a significant training source — ensure brand mentions (where legitimate) are accurate.
2. Quora answers on core topics are worth cultivating (but not spamming).
3. Long-form, reference-quality content on owned properties.
4. Do not assume AI Overview optimization transfers to AI Mode — measure separately.

---

## ChatGPT

**What it is:** OpenAI's flagship assistant. Combines pretrained knowledge with real-time web search (via Bing) when the model decides retrieval is needed.

### Citation behavior

- **Hybrid architecture:** training data + Bing-based RAG. Retrieval is triggered ~31% of the time (varies by model version and query type).
- **Top 10 domains take 46% of all ChatGPT citations in a topic. Top 30 take 67%** (Growth Memo).
- Only 12% of cited URLs in long-tail queries rank in Google's top 10. 80% don't rank in Google's top 100 at all (long-tail citation samples).
- **Favors publishers and established media.** Relationships like OpenAI ↔ Axel Springer, Associated Press, Reuters, Financial Times, Business Insider show up in citation patterns.

### Top cited sources

- Reddit
- Wikipedia
- Amazon
- Forbes
- Business Insider
- Reuters, AP
- LinkedIn (for professional queries)

### Key optimization signals

- **Publisher coverage matters materially.** Getting mentioned in Forbes, Business Insider, Reuters, or other authoritative publishers has outsized impact.
- **Training data lag.** New brands take time to appear — pre-training cutoffs mean even a brand that launched in 2024 may have thin coverage in a model trained through 2023.
- **Reddit presence** is large — 21% of AI Overview citations and similarly high in ChatGPT.

### Strategy implications

1. Prioritize digital PR and publisher coverage — this is the single biggest leverage for ChatGPT visibility.
2. Build genuine Reddit presence (long game, easy to get wrong).
3. Accept that new brands will lag in training-data-heavy responses; retrieval-based responses are where faster wins come from.
4. Structure content for the RAG retrieval path (ski ramp, entity density, extractability).

---

## Perplexity

**What it is:** A search-first AI answer engine. Pure retrieval-augmented generation — every response is grounded in real-time web results.

### Citation behavior

- **Pure RAG.** Every answer comes from live web crawl, not pretrained knowledge.
- **Most citation-heavy** of the major AI platforms — surfaces more distinct sources per answer.
- **Diverse, global source pool** — less concentrated on top domains than ChatGPT or AI Overviews.
- Strong representation of niche, health, and regional sites.

### Top cited sources

- **Reddit (46.5% of citations!)** — Perplexity's single largest source. The most extreme Reddit dependency of any major platform.
- Wikipedia
- Diverse niche and global sources
- Industry-specific publications

### Key optimization signals

- **Reddit presence is disproportionately valuable** for Perplexity. Even more than for ChatGPT or AI Overviews.
- **Content freshness** matters — Perplexity's retrieval favors recent content.
- **Diverse earned media** across niche publications beats a single big hit.

### Strategy implications

1. Reddit presence is the single highest-leverage action for Perplexity visibility.
2. Maintain content freshness — Perplexity retrieves from live crawl.
3. Niche publication coverage compounds — pitch industry-specific outlets, not just big-name ones.
4. Structure content for direct extraction — Perplexity surfaces specific quoted sentences.

---

## Copilot (Microsoft)

**What it is:** Microsoft's AI assistant, integrated across Microsoft 365, Bing, and Windows. RAG-based via Bing.

### Citation behavior

- Similar to ChatGPT but with stronger Bing weighting and more Microsoft-ecosystem sources.
- Less independent citation data than the other platforms — sample sizes in studies are smaller.

### Top cited sources

- Similar to ChatGPT but with elevated representation of Microsoft properties and Bing-ranked pages.

### Key optimization signals

- **Bing ranking** is more predictive of Copilot visibility than Google ranking.
- Traditional technical SEO (for Bing) remains important — Bing has its own crawler and ranking signals that differ from Google.

### Strategy implications

1. Submit to Bing Webmaster Tools. Track Bing rankings separately from Google.
2. Optimize for Bing's ranking signals where they differ (more emphasis on exact-match keywords and social signals historically).
3. Microsoft ecosystem presence (LinkedIn for professional queries) compounds.

---

## Cross-platform patterns

### What's consistent across platforms

- **Reddit matters everywhere.** 21% of AI Overview citations, 46.5% of Perplexity, significant in ChatGPT and AI Mode.
- **Wikipedia matters everywhere** as a training data and retrieval source.
- **YouTube is a strong correlating factor** across AI Overviews, ChatGPT, and AI Mode (industry research).
- **LinkedIn dominates professional queries** across all platforms (recent cross-platform samples).
- **Software review marketplaces** are heavily cited across ChatGPT, Perplexity, and AI Overviews for commercial software queries.
- **Freshness matters** across multiple tested open and closed models in published benchmarks.

### What's divergent

- **86% of top-cited sources are unique to each platform.** Only 7 of the top 50 most-cited domains appear across all three major AI platforms.
- **Only 13.7% citation overlap between AI Overviews and AI Mode** despite both being Google.
- **Reddit weighting varies 2x** across platforms (21% → 46.5%).
- Training-data vs RAG mix is different on every platform, and changes with model updates.

### Practical takeaway

There is no such thing as "AI visibility." There is AI Overviews visibility, AI Mode visibility, ChatGPT visibility, Perplexity visibility, and Copilot visibility — each with different source pools, different signals, and different optimization levers.

A unified AEO strategy starts with unified fundamentals (crawler access, ski ramp structure, entity presence) and then customizes per platform:

- **AI Overviews:** Strong SEO + branded web mentions + YouTube.
- **AI Mode:** Wikipedia-legitimate + long-form reference + Quora.
- **ChatGPT:** Publisher coverage + Reddit + entity density.
- **Perplexity:** Reddit + niche earned media + freshness.
- **Copilot:** Bing ranking + Microsoft ecosystem.

Measure each platform independently. A single "AI visibility score" is almost always misleading.
