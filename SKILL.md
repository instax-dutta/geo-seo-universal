---
name: geo-seo-universal
description: Universal AI-powered GEO/SEO audit tool for agents.
license: MIT
compatibility: Requires python3 (3.11+) and outbound HTTPS. Works with Hermes Agent, OpenCode, Codex, KiloCode, and any agent supporting standard Markdown skill files.
metadata:
  author: instax-dutta
  version: "1.0.0"
  homepage: https://github.com/instax-dutta/geo-seo-universal
---

# GEO-SEO Universal

GEO-first, SEO-supported. Optimize websites for AI-powered search engines (ChatGPT, Claude, Perplexity, Gemini, Google AI Overviews) while maintaining traditional SEO foundations.

## When to Use

- "Audit my website for AI search visibility"
- "Optimize my content for ChatGPT/Perplexity"
- "Check if my brand is mentioned in AI search results"
- "Generate llms.txt for my site"
- "Improve my structured data / schema markup"
- "Analyze my competitors' AI visibility"
- "Find citation opportunities for my brand"
- Any request related to Generative Engine Optimization (GEO) or AI search engine optimization

Do NOT use this for general web development, content writing, or traditional SEO audits without an AI search component.

## The Core Workflow

Every audit follows this 4-phase loop:

1.  **Crawl & Extract** — Fetch the target site, extract metadata, headings, structured data, and internal links.
2.  **AI Visibility Check** — Query multiple AI search engines (ChatGPT, Claude, Perplexity, Gemini) for brand + category queries to measure citation rate and sentiment.
3.  **Gap Analysis** — Compare AI visibility against competitors; identify missing schema, weak entity associations, and crawlability issues.
4.  **Remediation Plan** — Generate prioritized, actionable fixes with exact code snippets (schema JSON-LD, llms.txt, meta tags, content rewrites).

## Commands

### `geo-audit`
Run a full GEO audit on a target URL.

```bash
python scripts/fetch_page.py --url https://example.com --output audit-report.md
```

### `geo-llmstxt`
Generate an `llms.txt` file for AI crawlers.

```bash
python scripts/llmstxt_generator.py --url https://example.com --output llms.txt
```

## Why This Works

- **Zero platform lock-in:** Works with any agent that can run Python or read Markdown.
- **Multi-engine coverage:** Audits ChatGPT, Claude, Perplexity, Gemini, and Google AI Overviews.
- **Actionable output:** Every finding comes with exact code to paste, not just a score.
