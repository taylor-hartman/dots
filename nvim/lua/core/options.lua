local g = vim.g -- Global variables
local opt = vim.opt -- Set options (global/buffer/windows-scoped)
opt.clipboard = "unnamedplus" -- Copy/paste to system clipboard
opt.swapfile = false -- Don't use swapfile
opt.completeopt = "menuone,noinsert,noselect" -- Autocomplete options
opt.hlsearch = true -- highlight search results
opt.incsearch = true -- highlight search results
opt.ignorecase = true -- Ignore case letters when search
opt.smartcase = true -- Ignore lowercase for the whole pattern
opt.ttimeoutlen = 50
opt.timeoutlen = 500 -- time to wait for a mapped sequence to complete in ms
opt.updatetime = 300 -- faster completion
opt.undofile = true -- enable persistent undo
opt.spell = false -- enable spellcheck

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.list = false -- Show line number
opt.number = true -- Show line number
opt.numberwidth = 2 -- number column width
opt.signcolumn = "no" -- always show the sign column
opt.relativenumber = false -- Show line number
opt.showmatch = true -- Highlight matching parenthesis
opt.foldmethod = "marker" -- Enable folding (default 'foldmarker')
--opt.colorcolumn = '80'      -- Line lenght marker at 80 columns
opt.splitright = true -- Vertical split to the right
opt.splitbelow = true -- Horizontal split to the bottom
opt.linebreak = false -- Wrap on word boundary
opt.wrap = false -- Wrap lines
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.laststatus = 3 -- Set global statusline
opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
opt.autoread = true -- Automatically reread the file if a change was detected outside of vim
opt.showmode = false -- don't show mode indicator line
opt.scrolloff = 3 -- scroll offset keep context around cursor
opt.sidescrolloff = 5 -- scroll offset keep context around cursor
opt.conceallevel = 0 -- don't automatically collapse markdown and latex
opt.cursorline = true -- enable different color for line number (or whole line) of current line
opt.pumheight = 10 -- height of pop up menu
opt.showtabline = 2 -- always show tabs (2) (1 if only when 2 or more tabs)
opt.lazyredraw = false

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true -- Use spaces instead of tabs
opt.tabstop = 4 -- 1 tab == 4 spaces
opt.shiftwidth = 4 -- Shift 4 spaces when tab
opt.smartindent = true -- Autoindent new lines
opt.autoindent = true -- match previous line indent when doinng O or o
-- TODO: not sure if needed yet
-- opt.softtabstop = 2
-- opt.smarttab = true
-- opt.shiftround = true

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true -- Enable background buffers
opt.history = 100 -- Remember N lines in history
--opt.lazyredraw = true -- Faster scrolling (disabled for noice.nvim)
opt.synmaxcol = 240 -- Max column for syntax highlight
opt.updatetime = 250 -- ms to wait for trigger an event

-- Remember last position in file
vim.api.nvim_create_autocmd("BufReadPost", {
	callback = function()
		vim.cmd([[
      if line("'\"") > 0 && line("'\"") <= line("$") |
        exe "normal! g`\"" |
      endif
    ]])
	end,
})

--colorscheme
vim.cmd("colorscheme cool_name")
