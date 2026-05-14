#!/bin/bash
# slack-draft-composer installer
# Copies SKILL.md from this folder into the active Cowork plugin directory.
# Run this after pulling updates from the repo.

set -e

SKILL_SOURCE="$(cd "$(dirname "$0")" && pwd)/SKILL.md"
PLUGIN_SKILLS_DIR="$HOME/Library/Application Support/Claude/plugins"

echo "slack-draft-composer installer"
echo "=============================="

# Verify source file exists
if [ ! -f "$SKILL_SOURCE" ]; then
  echo "ERROR: SKILL.md not found at $SKILL_SOURCE"
  echo "Make sure you're running this from the SlackResponder folder."
  exit 1
fi

# Find the slack-draft-composer skill directory in the Cowork plugin temp location
SKILL_DIR=$(find /var/folders -name "slack-draft-composer" -type d 2>/dev/null | head -1)

if [ -z "$SKILL_DIR" ]; then
  echo ""
  echo "Could not auto-detect the Cowork plugin directory."
  echo "This usually means Cowork hasn't loaded the plugin yet."
  echo ""
  echo "Steps to fix:"
  echo "  1. Open Cowork"
  echo "  2. Make sure the slack-draft-composer plugin is installed and enabled"
  echo "  3. Start a session (this forces Cowork to unpack the plugin)"
  echo "  4. Re-run this script"
  echo ""
  echo "Alternatively, paste the plugin skill path manually:"
  read -p "  Plugin skill directory path (leave blank to cancel): " MANUAL_PATH
  if [ -z "$MANUAL_PATH" ]; then
    echo "Cancelled."
    exit 0
  fi
  SKILL_DIR="$MANUAL_PATH"
fi

SKILL_DEST="$SKILL_DIR/SKILL.md"

echo ""
echo "Source: $SKILL_SOURCE"
echo "Dest:   $SKILL_DEST"
echo ""

cp "$SKILL_SOURCE" "$SKILL_DEST"

echo "Done. SKILL.md installed."
echo ""
echo "Brand brains are NOT copied by this script — they stay personal to each user."
echo "Your brand-brains/ folder: $(dirname "$SKILL_SOURCE")/brand-brains/"
