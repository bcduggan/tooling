#!/usr/bin/sh
# https://git-scm.com/docs/githooks#_prepare_commit_msg
#MISE description="Transform topic branch names into conventional commit message and print stdout"
#USAGE arg "<commit_msg_file>" help="File that contains the commit log message"
#USAGE arg "<commit_msg_source>" help="Source of the commit message (message, template, )"
#USAGE arg "<commit_object_name>" help="Existing commit object if squash or amend commit"

set -euf

[ "${usage_commit_msg_source?}" = "merge" ] || exit 0

git branch --format='%(refname:lstrip=2)' --points-at MERGE_HEAD
