#!/bin/sh

fileToCommit="$1"
modificationTime=$(ls --full-time "$fileToCommit" | cut -d ' ' -f 6-8)
git add "$fileToCommit"
git commit --date "$modificationTime" "$fileToCommit"
