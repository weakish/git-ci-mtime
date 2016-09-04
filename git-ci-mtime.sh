#!/bin/sh


git_ci_mtime() {
    modificationTime=$(ls --full-time "$fileToCommit" | cut -d ' ' -f 6-8)
    git add "$fileToCommit"
    git commit --date "$modificationTime" "$@" "$fileToCommit"
}

fileToCommit="$1"
shift 1
git_ci_mtime "$@"
