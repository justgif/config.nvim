-- Show line numbers relative to cursor
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Sync clipboard between OS and Neovim
-- Schedule this setting because it can increase startup time
vim.schedule(function()
    vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Ignore case when searching, unless a capital letter exists in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Always show signcolumn
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 500

-- Configure split preference
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Set how whitespace characters are displayed
vim.opt.list = true
vim.opt.listchars = { tab = '  ', trail = '·', nbsp = '␣' }

-- Preview the effect of substitutions as they are being typed
vim.opt.inccommand = 'split'

-- Highlight the current line that the cursor is on
vim.opt.cursorline = true

-- Minimum number of lines to show above and below the cursor
vim.opt.scrolloff = 10

-- Set tabs to be 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Set Powershell as the default shell
if vim.fn.has 'win32' == 1 then
    vim.opt.shell = vim.fn.executable 'pwsh' and 'pwsh' or 'powershell'
    vim.o.shellcmdflag =
    [[-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues['Out-File:Encoding']='utf8';]]
    vim.o.shellredir = '2>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode'
    vim.o.shellpipe = '2>&1 | %%{ "$_" } | Tee-Object %s; exit $LastExitCode'
    vim.o.shellquote = ''
    vim.o.shellxquote = ''
end
