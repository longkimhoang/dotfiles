# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

This is a personal Neovim config (Lua, lazy.nvim, Rose Pine theme). There is no build, lint, or test tooling.

## Commands

- Sync plugins headlessly: `nvim --headless "+Lazy! sync" +qa`
- Check the config loads cleanly: `nvim --headless -c 'lua print(vim.g.colors_name)' -c qa` (should print `rose-pine`)
- Run these from `~`, not from this directory.

## Architecture

Load order: `init.lua` sets leader keys (`<Space>` / `\`), then `require("config.lazy")`, which bootstraps lazy.nvim into `stdpath("data")/lazy` (cloned on first run) and calls `setup` with `{ import = "plugins" }`.

Each file in `lua/plugins/` returns a lazy.nvim spec (or a list of specs); new plugins are added by dropping in a new file, with no central registry. Leader keys must stay set in `init.lua` before lazy loads, or plugin keymaps will bind to the wrong leader.

`lua/plugins/colorscheme.lua` loads rose-pine eagerly (`lazy = false`, `priority = 1000`) and applies `colorscheme` in its `config`. `variant = "auto"` follows `&background` (dark → `main`, light → `dawn`). An invalid variant name is silently accepted by rose-pine.

`lazy-lock.json` pins plugin versions; it is updated by `:Lazy sync`/`update`. The lazy.nvim update checker is disabled.
