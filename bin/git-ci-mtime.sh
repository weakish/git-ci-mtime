#!/bin/sh

set -e
set -u

git_ci_mtime() {
    modificationTime=$(ls --full-time "$fileToCommit" | cut -d ' ' -f 6-8)
    git add "$fileToCommit"
    git commit --date "$modificationTime" "$@" "$fileToCommit"
}

case "$1" in
    -h|--help|help) echo 'Usage: git ci-mtime FILE --more-git-commit-options' ;;
    *) fileToCommit="$1"; shift 1; git_ci_mtime "$@"
esac
