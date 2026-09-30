## Git aliases

[← Index](index.md)

| Key / Alias | What it does | Source |
| --- | --- | --- |
| `git gl` | `git config --global -l` | `~/.gitconfig` |
| `git ch` | `git checkout` | `~/.gitconfig` |
| `git chn` | `git checkout -b` | `~/.gitconfig` |
| `git pl` | `git pull` | `~/.gitconfig` |
| `git p` | `git push` | `~/.gitconfig` |
| `git po` | `git push -u origin` | `~/.gitconfig` |
| `git a` | `git add -A` | `~/.gitconfig` |
| `git c` | `git commit` | `~/.gitconfig` |
| `git cm` | `git commit -m` | `~/.gitconfig` |
| `git m` | `git merge` | `~/.gitconfig` |
| `git sh` | `git stash` | `~/.gitconfig` |
| `git shc` | `git stash clear` | `~/.gitconfig` |
| `git l` | `git log` | `~/.gitconfig` |
| `git ll` | `git log --oneline` | `~/.gitconfig` |
| `git last` | `git log -1 HEAD --stat` | `~/.gitconfig` |
| `git rv` | `git remote -v` | `~/.gitconfig` |
| `git d` | `git diff` | `~/.gitconfig` |
| `git dv` | `git difftool -t vimdiff -y` — **shadowed**, a later `dv` wins | `~/.gitconfig` |
| `git set` | `git remote set-url origin` | `~/.gitconfig` |
| `git rm` | `git rm -r` | `~/.gitconfig` |
| `git st` | `git status -sb` | `~/.gitconfig` |
| `git mn` | `git checkout main` | `~/.gitconfig` |
| `git dv` | `git checkout develop` | `~/.gitconfig` |
| `git del` | `git branch -D` | `~/.gitconfig` |
| `git b` | `git branch` | `~/.gitconfig` |
| `git delalldry` | `git branch \| grep -v "develop\\|main"` _(shell)_ | `~/.gitconfig` |
| `git delall` | `git branch \| grep -v "develop\\|main" \| xargs git branch -D` _(shell)_ | `~/.gitconfig` |

> **Note:** `git dv` is defined 2 times; only the last definition is live.
