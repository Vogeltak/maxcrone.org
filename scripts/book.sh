#!/usr/bin/env sh
# Creates a new .md file for a book review from a template.

# set -e  # Exit on error

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
            echo "Usage: $0 [-e|--edit] yyyy-mm-dd-title-of-book"
            exit 1
            ;;
        *)
            break
            ;;
    esac
done

# Check if filename argument is provided
if [ -z "$1" ]; then
    echo "Error: No filename provided"
    echo "Usage: $0 yyyy-mm-dd-title-of-book"
    exit 1
fi

filename="$1"

# Validate filename format (basic check for yyyy-mm-dd prefix)
if ! echo "$filename" | grep -qE '^[0-9]{4}-[0-9]{2}-[0-9]{2}-'; then
    echo "Error: Filename must start with yyyy-mm-dd format"
    echo "Example: 2024-03-15-great-gatsby"
    exit 1
fi

# Extract date (yyyy-mm-dd) from filename
date=$(echo "$filename" | cut -d'-' -f1-3)

# Find git repository root
repo_root=$(git rev-parse --show-toplevel 2>/dev/null)
if [ $? -ne 0 ]; then
    echo "Error: Not in a git repository"
    exit 1
fi

# Create books directory if it doesn't exist
books_dir="$repo_root/content/books"
mkdir -p "$books_dir"

# Full path for new file
file_path="$books_dir/$filename.md"

# Check if file already exists
if [ -f "$file_path" ]; then
    echo "Error: File already exists: $file_path"
    exit 1
fi

# Write template to file
cat > "$file_path" << EOF
+++
date = $date
title = "Title"
authors = [ "Max Crone",]

[extra]
rating = 5
writer = "name"
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
