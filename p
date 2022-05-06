#!/usr/bin/env bash

set -e

remote=${1:-"origin"}

SSH_PORT="2211"
BROWSER_OPEN="open -a Safari "

# repo url based on remote
get_url() {
    url=$(git remote get-url $remote)
    if [ "" != "$url" ]; then
    url=${url/\.git/}
    url=${url/git\@/}
    url=${url/ssh\:\/\//https:\/\/}

    # remove port from origin
    url=${url/:"$SSH_PORT"}

    echo "$url/-/pipelines"
    fi
}

# get branch
get_branch() {
    echo $(git rev-parse --abbrev-ref HEAD)
}

url=$(get_url)
if [ "" != "$url" ]; then
    $($BROWSER_OPEN $url)
fi
