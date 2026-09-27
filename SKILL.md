---
name: geo-seo
description: Audit and optimize websites for AI-powered search engines (ChatGPT, Claude, Perplexity, Gemini) while maintaining traditional SEO foundations.
license: MIT
compatibility: Requires python3 (3.11+) and outbound HTTPS. Works with Claude Code, OpenCode, Codex, KiloCode, and any agent supporting MCP or standard Markdown skill files.
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
python scripts/geo-audit.py --url https://example.com --output audit-report.md
```

### `geo-mentions`
Track brand mentions across AI search engines.

```bash
python scripts/geo-mentions.py --brand "MyBrand" --competitors "CompA,CompB"
```

### `geo-llmstxt`
Generate an `llms.txt` file for AI crawlers.

```bash
python scripts/geo-llmstxt.py --url https://example.com --output llms.txt
```

### `geo-schema`
Validate and fix structured data on a page.

```bash
python scripts/geo-schema.py --url https://example.com
```

### `geo-content`
Rewrite content for AI search visibility.

```bash
python scripts/geo-content.py --input article.md --output optimized.md
```

## Configuration

Create a `config.yaml` in the skill directory:

```yaml
ai_engines:
  - chatgpt
  - claude
  - perplexity
  - gemini
  - google_overview

brand:
  name: "Your Brand"
  competitors:
    - "Competitor A"
    - "Competitor B"

output:
  format: markdown  # or pdf
  include_screenshots: false
```

## Directories

- `scripts/` — Core audit and analysis scripts
- `templates/` — Schema, llms.txt, and content templates
- `assets/` — Logos, banners, and report styling

## Quick Start Example

```bash
# Install
git clone https://github.com/instax-dutta/geo-seo-universal.git
cd geo-seo-universal
./install.sh

# Run audit
python scripts/geo-audit.py --url https://mysite.com

# Generate llms.txt
python scripts/geo-llmstxt.py --url https://mysite.com
```

## Why This Works

- **Zero platform lock-in:** Works with any agent that can run Python or read Markdown.
- **Multi-engine coverage:** Audits ChatGPT, Claude, Perplexity, Gemini, and Google AI Overviews simultaneously.
- **Actionable output:** Every finding comes with exact code to paste, not just a score.