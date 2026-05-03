#!/bin/sh

# Install go tools
if command -v go >/dev/null 2>&1 && ! command -v pp >/dev/null 2>&1
then
  echo "  Installing/upgrading panicparse"
  go install github.com/maruel/panicparse/cmd/pp@latest
fi
