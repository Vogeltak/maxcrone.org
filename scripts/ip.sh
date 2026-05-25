#!/usr/bin/env sh
# Creates a new .md file for the next "internet pieces" entry from a template.

# Parse options
open_editor=0
while [ $# -gt 0 ]; do
    case "$1" in
        -e|--edit)
            open_editor=1
            shift
            ;;
        -*)
            echo "Error: Unknown option: $1"
            echo "Usage: $0 [-e|--edit]"
            exit 1
            ;;
        *)
            echo "Error: Unexpected argument: $1"
            echo "Usage: $0 [-e|--edit]"
            exit 1
            ;;
    esac
done

# Find git repository root
repo_root=$(git rev-parse --show-toplevel 2>/dev/null)
if [ $? -ne 0 ]; then
    echo "Error: Not in a git repository"
    exit 1
fi

# Create links directory if it doesn't exist
links_dir="$repo_root/content/links"
mkdir -p "$links_dir"

# Determine the next count by scanning existing internet-pieces-N.md files
next_count=1
for f in "$links_dir"/*-internet-pieces-*.md; do
    [ -f "$f" ] || continue
    n=$(basename "$f" .md | sed -n 's/.*-internet-pieces-\([0-9]\{1,\}\)$/\1/p')
    [ -z "$n" ] && continue
    if [ "$n" -ge "$next_count" ]; then
        next_count=$((n + 1))
    fi
done

# Use today's date in yyyy-mm-dd format
date=$(date +%Y-%m-%d)

# Build filename and full path
filename="$date-internet-pieces-$next_count"
file_path="$links_dir/$filename.md"

# Check if file already exists
if [ -f "$file_path" ]; then
    echo "Error: File already exists: $file_path"
    exit 1
fi

# Write template to file
cat > "$file_path" << EOF
+++
title = "Pieces from the internet #$next_count"
authors = [ "Max Crone",]
+++
leader
<!-- more -->
remainder
EOF

echo "Created: $file_path"

# Open in editor if requested
if [ "$open_editor" -eq 1 ]; then
    if [ -z "$EDITOR" ]; then
        echo "Warning: \$EDITOR not set, skipping editor launch"
    else
        "$EDITOR" "$file_path"
    fi
fi
