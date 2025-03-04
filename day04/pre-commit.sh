#!/bin/bash

# Check if any file contains "TODO"
if git diff --cached | grep -q "TODO"; then
  echo "🚨 Commit rejected! Remove TODO comments before committing."
  exit 1
fi

echo "✅ Pre-commit check passed!"
exit 0