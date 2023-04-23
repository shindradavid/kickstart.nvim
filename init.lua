--[[

=====================================================================
================== PERSONAL FORK OF KICKSTART.NVIM ==================
=====================================================================

----- PRE-REQUISITES
-- install a nerd font -> `https://www.nerdfonts.com`
-- install ripgrep for telescope fuzzy finder `sudo pacman -S ripgrep`
-- uninstall previous config -> `rm -rf ~/.config/nvim`
-- remove previous config data -> `rm -rf ~/.local/share/nvim`

--]]
require('shindradavid.core.options')
require('shindradavid.core.lazy')
require('shindradavid.core.keymaps')
require('shindradavid.core.lsp')
require('shindradavid.core.cmp')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
