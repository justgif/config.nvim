# [Neovim](https://github.com/neovim/neovim) Configuration

## Table of Contents

> 1. [Keymaps](#keymaps)
> 2. [Plugins](#plugins)

## Keymaps

All keymaps are assumed to be in normal mode unless otherwise stated.

`<leader> = ' '`

### Custom

| Map | Function |
|-|-|
| `<leader><Enter>` | Source $MYVIMRC |
| `<Esc>` | Clear Search Highlights |
| `<Ctrl>h` | Focus Left Window |
| `<Ctrl>l` | Focus Right Window |
| `<Ctrl>j` | Focus Lower Window |
| `<Ctrl>k` | Focus Upper Window |
| `<Ctrl>h` | Move Cursor Left (Insert Mode) |
| `<Ctrl>l` | Move Cursor Right (Insert Mode) |
| `<Ctrl>j` | Move Cursor Down (Insert Mode) |
| `<Ctrl>k` | Move Cursor Up (Insert Mode) |
| `<leader>ec` | [E]xplore [C]urrent Directory |
| `<leader>en` | [E]xplore [N]eovim Directory |
| `<leader>ew` | [E]xplore [W]orking Directory |
| `<leader>rwg` | [R]eplace [W]ord ([G]lobally) |
| `<leader>rwc` | [R]eplace [W]ord (With [C]onfirmation) |

### Plugins

#### Harpoon

| Map | Function |
|-|-|
| `<leader>hp` | [H]arpoon [P]repend Current File |
| `<leader>ha` | [H]arpoon [A]ppend Current File |
| `<leader>hd` | [H]arpoon [D]elete Current File |
| `<leader>hl` | [H]arpoon [L]ist |
| `<leader>hr1` | [H]arpoon [R]eplace Slot [1] |
| `<leader>hr2` | [H]arpoon [R]eplace Slot [2] |
| `<leader>hr3` | [H]arpoon [R]eplace Slot [3] |
| `<leader>hr4` | [H]arpoon [R]eplace Slot [4] |
| `<Alt>1` | Select Slot [1] |
| `<Alt>2` | Select Slot [2] |
| `<Alt>3` | Select Slot [3] |
| `<Alt>4` | Select Slot [4] |

#### LSP

| Map | Function |
|-|-|
| `gd` | [G]oto [D]efinition |
| `gD` | [G]oto [D]eclaration |
| `gr` | [G]oto [R]eferences |
| `gI` | [G]oto [I]mplementation |
| `<leader>D` | Type [D]efinition |
| `<leader>ds` | [D]ocument [S]ymbols |
| `<leader>ws` | [W]orkspace [S]ymbols |
| `<leader>rn` | [R]e[n]ame |
| `<leader>ca` | [C]ode [A]ction |
| `<leader>th` | [T]oggle [I]nlay [H]ints |
| `<leader>f` | [F]ormat Buffer |

#### Telescope

| Map | Function |
|-|-|
| `<leader>u` | Telescope [U]ndo Tree |
| `<leader>sh` | [S]earch [H]elp Docs |
| `<leader>sk` | [S]earch [K]eymaps |
| `<leader>sf` | [S]earch [F]iles |
| `<leader>ss` | [S]earch [S]elect Telescope |
| `<leader>sw` | [S]earch Current [W]ord |
| `<leader>sg` | [S]earch by [G]rep |
| `<leader>sd` | [S]earch [D]iagnostics |
| `<leader>sr` | [S]earch [R]esume (from last search) |
| `<leader>s.` | [S]earch Recent Files |
| `<leader>s/` | [S]earch [/] Open Files |
| `<leader>sn` | [S]earch [N]eovim Config Files |
| `<leader>/` | Fuzzy Search Current Buffer |
| `<leader><leader>` | Find Current Open Buffers |

#### Which-Key

| Map | Function |
|-|-|
| `<leader>?` | Show Currently Available Keymaps |

[Back to Top](#neovim-configuration)

## Plugins

### Functional

| Name | Description |
|-|-|
| [fugitive](https://github.com/tpope/vim-fugitive) | Improved git commands |
| [harpoon](https://github.com/ThePrimeagen/harpoon) | The fastest way to switch between files |
| [lazy](https://github.com/folke/lazy.nvim) | Plugin manager |
| [lazydev](https://github.com/folke/lazydev.nvim) | Configures LuaLS for Neovim |
| [lspconfig](https://github.com/neovim/nvim-lspconfig) | Provides LSP client configurations |
| [mason](https://github.com/williamboman/mason.nvim) | Manager for LSP servers, DAP servers, linters, and formatters |
| [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim) | Bridge between mason and lspconfig |
| [mason-tool-installer](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) | Installs and upgrades third-party tools |
| [mini](https://github.com/echasnovski/mini.nvim) | Collection of several modules |
| [telescope](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [telescope-fzf-native](https://github.com/nvim-telescope/telescope-fzf-native.nvim) | FZF sorter for telescope |
| [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Provides a tree-sitter interface in Neovim |

### Visual

| Name | Description |
|-|-|
| [fidget](https://github.com/j-hui/fidget.nvim) | Notifications and LSP progress |
| [gitsigns](https://github.com/lewis6991/gitsigns.nvim) | Git decorations for buffers |
| [kanagawa](https://github.com/rebelot/kanagawa.nvim) | Theme |
| [telescope-ui-select](https://github.com/nvim-telescope/telescope-ui-select.nvim) | Sets ui select to use telescope |
| [telescope-undo](https://github.com/debugloop/telescope-undo.nvim) | Visualize and search undo trees with telescope |
| [todo-comments](https://github.com/folke/todo-comments.nvim) | Highlight and search todo comments |
| [tokyonight](https://github.com/folke/tokyonight.nvim) | Theme |
| [web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | Nerd Font icons for Neovim |
| [which-key](https://github.com/folke/which-key.nvim) | Show available keymaps as they are typed |

[Back to Top](#neovim-configuration)
