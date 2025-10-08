#!/bin/bash
# Find staged python files
files=$(git diff --cached --name-only --diff-filter=ACM | grep '\.py$')
if [ -z "$files" ]; then
  echo "No Python files changed."
  exit 0
fi
pytest $files
