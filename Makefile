SHELL := /bin/bash

.PHONY: test
test:
	@find zsh system git homebrew go yarn goland docker xcode functions -type f \( -name '*.zsh' -o -path 'functions/*' \) -print0 | xargs -0 -n1 zsh -n
	@bash -n script/bootstrap script/install
	@sh -n fzf/install.sh go/install.sh homebrew/install.sh vim/install.sh macos/install.sh macos/set-defaults.sh
	@bash -n bin/dev-vault
	@sh -n bin/dotf bin/e bin/git-all bin/git-amend bin/git-copy-branch-name bin/git-credit bin/git-delete-local-merged bin/git-nuke bin/git-promote bin/git-track bin/git-undo bin/git-unpushed bin/git-unpushed-stat bin/git-up bin/headers bin/movieme bin/mustacheme bin/search bin/set-defaults
	@find . -path ./.git -prune -o -name '*.json' -print0 | xargs -0 -n1 ruby -rjson -e 'JSON.parse(File.read(ARGV[0]))'
