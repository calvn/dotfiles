#!/bin/sh

# Install go tools
if test $(which go) && test ! $(which pp)
then
  echo "  Installing/upgrading panicparse"
  go get github.com/maruel/panicparse/cmd/pp
fi