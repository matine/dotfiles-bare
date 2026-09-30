#!/usr/bin/env python3
"""
Title: restrict-write-paths
Usage: PreToolUse hook on Write|Edit|NotebookEdit (reads hook JSON on stdin)

Description:
Denies any file write whose target resolves outside the allowed roots.

Files tracked by the dotfiles bare repo (~/.dotfiles.git) are also allowed, so
config in $HOME can be edited in place. Symlinks are resolved first.
"""

import json
import os
import subprocess
import sys

ALLOWED = [
    os.path.realpath(os.path.expanduser(p))
    for p in ("~/.config/dotfiles", "~/.claude/plans")
]


def tracked_by_dotfiles(target):
    home = os.path.expanduser("~")
    result = subprocess.run(
        ["git", "--git-dir=" + os.path.join(home, ".dotfiles.git"), "--work-tree=" + home,
         "ls-files", "--error-unmatch", target],
        capture_output=True,
    )
    return result.returncode == 0


def main():
    try:
        payload = json.load(sys.stdin)
    except (json.JSONDecodeError, ValueError):
        return  # malformed input: stay out of the way rather than block everything

    path = (payload.get("tool_input") or {}).get("file_path")
    if not path:
        return

    target = os.path.realpath(os.path.expanduser(path))
    if any(target == root or target.startswith(root + os.sep) for root in ALLOWED):
        return
    if tracked_by_dotfiles(target):
        return

    print(json.dumps({
        "hookSpecificOutput": {
            "hookEventName": "PreToolUse",
            "permissionDecision": "deny",
            "permissionDecisionReason": (
                f"{target} is outside ~/.config/dotfiles and ~/.claude/plans, and is not "
                "tracked by the dotfiles repo. Track it first with `dot add`."
            ),
        }
    }))


main()
