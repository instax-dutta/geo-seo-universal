#!/usr/bin/env bash
set -euo pipefail

# geo-seo-universal installer
# Installs the skill into the active agent's skill directory

SKILL_NAME="geo-seo"
SKILL_DIR="${HOME}/.hermes/skills/${SKILL_NAME}"

echo "Installing ${SKILL_NAME}..."

# Create skill directory
mkdir -p "${SKILL_DIR}"/{scripts,templates,assets}

# Download core files
curl -sSL "https://raw.githubusercontent.com/instax-dutta/geo-seo-universal/main/SKILL.md" -o "${SKILL_DIR}/SKILL.md"
curl -sSL "https://raw.githubusercontent.com/instax-dutta/geo-seo-universal/main/scripts/geo-audit.py" -o "${SKILL_DIR}/scripts/geo-audit.py"
curl -sSL "https://raw.githubusercontent.com/instax-dutta/geo-seo-universal/main/scripts/geo-content.py" -o "${SKILL_DIR}/scripts/geo-content.py"
curl -sSL "https://raw.githubusercontent.com/instax-dutta/geo-seo-universal/main/scripts/geo-llmstxt.py" -o "${SKILL_DIR}/scripts/geo-llmstxt.py"
curl -sSL "https://raw.githubusercontent.com/instax-dutta/geo-seo-universal/main/scripts/geo-mentions.py" -o "${SKILL_DIR}/scripts/geo-mentions.py"
curl -sSL "https://raw.githubusercontent.com/instax-dutta/geo-seo-universal/main/scripts/geo-schema.py" -o "${SKILL_DIR}/scripts/geo-schema.py"
curl -sSL "https://raw.githubusercontent.com/instax-dutta/geo-seo-universal/main/scripts/geo-technical.py" -o "${SKILL_DIR}/scripts/geo-technical.py"

# Make scripts executable
chmod +x "${SKILL_DIR}/scripts/"*.py

# Install Python deps
pip install requests playwright 2>/dev/null || uv pip install requests playwright 2>/dev/null || true

echo ""
echo "✅ ${SKILL_NAME} installed successfully!"
echo "   Skill directory: ${SKILL_DIR}"
echo "   Run 'geo-audit --url https://example.com' to start."