# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store. There's a nifty
# command line interface to it that we can use to just install everything, so
# yeah, let's do that.

if [ ! -z "${SKIP_OS_UPDATES}" ]; then
    echo "SKIP_OS_UPDATES set, skipping OS software update"
    exit 0
fi

echo "› sudo softwareupdate -i -a"
sudo softwareupdate -i -a
