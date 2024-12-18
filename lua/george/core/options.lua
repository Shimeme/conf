local opt = vim.opt --for conciseness

--line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

--line wraping
opt.wrap = false


--search settings
opt.ignorecase = true
opt.smartcase = true

--cursor line
opt.cursorline = true

--appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

vim.cmd [[
  augroup Transparency
    autocmd!
    autocmd VimEnter * hi Normal guibg=NONE ctermbg=NONE
    autocmd VimEnter * hi NonText guibg=NONE ctermbg=NONE
    autocmd VimEnter * hi VertSplit guibg=NONE ctermbg=NONE
  augroup END
]]



--backspace
opt.backspace = "indent,eol,start"


--clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
