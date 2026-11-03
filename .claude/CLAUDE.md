# Claude global

## Responses

- **Answer first, explanation after.** Be as succinct as possible — I'll ask for
  more if I want it.
- **After touching files**, give a two-column table: file changed, and a very
  short note on the change.
- When making changes to a repository, no need to show diffs in the chat,
  I can review at the end in git.
- **When I tell you about a change I made myself**, reply only `Noted.`
- No need to remind me when changes are uncommitted.

## Code

- **Comments only when absolutely needed**, and keep them concise. Don't
  narrate what the code already says.

## Dotfiles

- My dotfiles are a bare git repo (`~/.dotfiles.git`, work tree `$HOME`), run
  with the `dot` alias instead of `git`. Config is edited in place in `~`;
  scripts, cheatsheets and Raycast commands live in `~/.config/dotfiles`
  (`$DOTFILES`), which has its own CLAUDE.md.

## Browser checks
- The Claude-in-Chrome extension isn't connected, so use Playwright for browser checks.
- Launch with chromium.launch({ channel: 'chrome' }). That uses your installed Chrome, because the browser Playwright expects (chromium_headless_shell-1228) isn't downloaded.
- Port 3000 is often taken by local websites, so start site on another port (e.g. npx next dev --turbopack -p 3050).
