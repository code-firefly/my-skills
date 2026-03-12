#!/bin/bash
# List all skills and their versions in the my-skills repository

set -euo pipefail

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
GRAY='\033[0;90m'
NC='\033[0m' # No Color

# Root directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

# Print header
echo -e "${BLUE}=== My Skills Repository ===${NC}\n"

# Function to print skill info
print_skill() {
    local skill_dir="$1"
    local skill_name="$(basename "$skill_dir")"
    local version_file="$skill_dir/VERSION"
    local metadata_file="$skill_dir/metadata.json"

    if [ -f "$version_file" ]; then
        local version="$(cat "$version_file")"
        echo -e "  ${GREEN}✓${NC} ${skill_name} ${GRAY}v${version}${NC}"

        # Print platform support from metadata if available
        if [ -f "$metadata_file" ]; then
            if command -v jq &> /dev/null; then
                local cc_status="$(jq -r '.platforms."claude-code".status' "$metadata_file" 2>/dev/null || echo "unknown")"
                local oc_status="$(jq -r '.platforms.openclaw.status' "$metadata_file" 2>/dev/null || echo "unknown")"

                local cc_symbol="❓"
                local oc_symbol="❓"

                case "$cc_status" in
                    supported) cc_symbol="✅" ;;
                    todo) cc_symbol="🔄" ;;
                    not-planned) cc_symbol="❌" ;;
                    deprecated) cc_symbol="⚠️" ;;
                esac

                case "$oc_status" in
                    supported) oc_symbol="✅" ;;
                    todo) oc_symbol="🔄" ;;
                    not-planned) oc_symbol="❌" ;;
                    deprecated) oc_symbol="⚠️" ;;
                esac

                echo -e "    ${GRAY}CC: ${cc_symbol} | OC: ${oc_symbol}${NC}"
            fi
        fi
    fi
}

# Function to scan directory
scan_dir() {
    local dir="$1"
    local label="$2"
    local has_content=false

    for category_dir in "$dir"/*/; do
        if [ -d "$category_dir" ]; then
            local category="$(basename "$category_dir")"
            local has_skills=false

            for skill_dir in "$category_dir"/*/; do
                if [ -d "$skill_dir" ] && [ -f "$skill_dir/SKILL.md" ]; then
                    if [ "$has_skills" = false ]; then
                        echo -e "${BLUE}${label} / ${category^}:${NC}"
                        has_skills=true
                        has_content=true
                    fi
                    print_skill "$skill_dir"
                fi
            done
        fi
    done

    if [ "$has_content" = false ]; then
        echo -e "${GRAY}${label}: (empty)${NC}"
    fi
    echo ""
}

# Scan each platform directory
scan_dir "$ROOT_DIR/universal" "Universal"
scan_dir "$ROOT_DIR/claude-code" "Claude Code"
scan_dir "$ROOT_DIR/openclaw" "OpenClaw"

# Summary
echo -e "${BLUE}Summary:${NC}"
total_skills=$(find "$ROOT_DIR" -name "SKILL.md" | wc -l)
echo -e "  Total skills: ${GREEN}${total_skills}${NC}"
echo ""
echo -e "Legend: ${GREEN}✓${NC} Active | ✅ Supported | 🔄 Todo | ❌ N/A"
