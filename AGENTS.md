# Agent guidance

Use these skills as **deep playbooks** when the user’s task matches the skill’s domain. Prefer loading `SKILL.md` end-to-end, then open `references/` files when the main doc points to them.

**Routing (high level):**

- **Google / Microsoft Ads** execution, audits, or builds → paid-search slugs (`google-ads-*`, `paid-search-ads-playbook`).
- **Meta (Facebook / Instagram) ads** → paid-social slugs (`meta-ads-*`, `meta-ads-playbook`).
- **Budget mix, reporting, or cross-channel analysis** → `ad-spend-allocator`, `campaign-analyzer`, `paid-media-reporter`.
- **Organic + AI answer engines** (crawlers, content, measurement) → SEO slugs (`seo-*`, `ai-search-visibility-*`, `bofu-seo-aeo-strategy`).
- **LLM visibility prompt libraries** → `prompt-picker`.
- **Long-form methodology / beliefs** when a single SKILL is not enough → `seo-max-kt` (`SEO_AND_AEO_KT.md`).

If multiple skills apply, sequence them (strategy → execution → measurement) and say which skill you used for each section.
