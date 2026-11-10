#!/usr/bin/env bash
# Wraps src/quote-desk.html into a standalone index.html you can open in any browser.
set -euo pipefail
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n</head>\n<body>\n'
  cat src/quote-desk.html
  printf '\n</body>\n</html>\n'
} > index.html
echo "Built index.html"
