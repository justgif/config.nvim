# Neovim Config

## Table of Contents

> 1. [Installation](#1-installation)
> 2. [Keymaps](#2-keymaps)
> 3. [Plugins](#3-plugins)

## 1. Installation

### Dependencies

- [Neovim](https://github.com/neovim/neovim) v0.10+
- Any of the following C compilers:
  - `cc`, `gcc`, `clang`, `cl`, `zig`

### Clone repository to Neovim config directory

<details>
<summary>Linux/Mac</summary>

```
git clone https://github.com/justgif/config.nvim.git ${XDG_CONFIG_HOME:-$HOME/.config}/nvim
```

</details>

<details>
<summary>Windows</summary>

Powershell:
```
git clone https://github.com/justgif/config.nvim.git $env:LocalAppData\nvim
```

Command Prompt:
```
git clone https://github.com/justgif/config.nvim.git %LocalAppData%\nvim
```

</details>

### Run Neovim in terminal

```
nvim
```

[Back to Top](#table-of-contents)

## 2. Keymaps

All keymaps are assumed to be in normal mode unless otherwise stated.

Keymap descriptions surround the the first letters of corresponding words in [] brackets where possible to help remember the keymap. This is also reflected in Neovim with the Which Key plugin.

Some keymaps may have multiple options, which are formatted as `(X/Y/Z)`. For example, a keymap that looks like `<leader>a(1/2/3)` can be interpretted as the following 3 separate keymaps `<leader>a1`, `<leader>a2`, `<leader>a3`.

By default, `<leader> = <space>`. This can be remapped in `/lua/config/keymaps.lua`.

### 2.1 Custom

#### Navigation

| Map | Function |
|-|-|
| `<Ctrl>(h/j/k/l)` | Focus Left/Lower/Upper/Right Window |
| `<leader>ec` | [E]xplore [C]urrent Directory |
| `<leader>en` | [E]xplore [N]eovim Directory |
| `<leader>ew` | [E]xplore [W]orking Directory |

#### Misc

| Map | Function |
|-|-|
| `<leader><Enter>` | Source $MYVIMRC |
| `<Esc>` | Clear Search Highlights |
| `<leader>rw` | [R]eplace [W]ord |
| `<Esc><Esc>` | Return To Normal Mode (From Terminal Mode) |
| `<leader>tt` | [T]oggle Floating [T]erminal |

### 2.2 Plugins

#### Harpoon

| Map | Function |
|-|-|
| `<leader>hp` | [H]arpoon [P]repend Current File |
| `<leader>ha` | [H]arpoon [A]ppend Current File |
| `<leader>hd` | [H]arpoon [D]elete Current File |
| `<leader>hl` | [H]arpoon [L]ist Slots |
| `<leader>hr(1/2/3/4)` | [H]arpoon [R]eplace Slot [1/2/3/4] |
| `<Alt>(1/2/3/4)` | Select Slot [1/2/3/4] |

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
| `<leader>th` | [T]oggle Inlay [H]ints |
| `<leader>f` | [F]ormat Buffer |

#### Render Markdown

| Map | Function |
|-|-|
| `<leader>tm` | [T]oggle [M]arkdown Preview |

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

#### Which Key

| Map | Function |
|-|-|
| `<leader>?` | Show Current Buffer Keymaps |

[Back to Top](#table-of-contents)

## 3. Plugins

### 3.1 Functional

| Name | Description |
|-|-|
| [blink](https://github.com/Saghen/blink.cmp) | LSP Completion |
| [fugitive](https://github.com/tpope/vim-fugitive) | Improved git commands |
| [harpoon](https://github.com/ThePrimeagen/harpoon) | Quickly switch between files |
| [lazy](https://github.com/folke/lazy.nvim) | Plugin manager |
| [lazydev](https://github.com/folke/lazydev.nvim) | Configures LuaLS for Neovim |
| [lspconfig](https://github.com/neovim/nvim-lspconfig) | Provides LSP client configurations |
| [mason](https://github.com/williamboman/mason.nvim) | Manager for LSP servers, DAP servers, linters, and formatters |
| [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim) | Bridge between mason and lspconfig |
| [mason-tool-installer](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) | Installs and upgrades third-party tools |
| [mini](https://github.com/echasnovski/mini.nvim) | Collection of several modules |
| [telescope](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [telescope-fzf-native](https://github.com/nvim-telescope/telescope-fzf-native.nvim) | FZF sorter for telescope |
| [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Tree-sitter interface in Neovim |

### 3.2 Visual

| Name | Description |
|-|-|
| [fidget](https://github.com/j-hui/fidget.nvim) | Notifications and LSP progress |
| [gitsigns](https://github.com/lewis6991/gitsigns.nvim) | Git decorations for buffers |
| [kanagawa](https://github.com/rebelot/kanagawa.nvim) | Theme |
| [render-markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim) | Visualize Markdown files inside Neovim |
| [telescope-ui-select](https://github.com/nvim-telescope/telescope-ui-select.nvim) | Sets ui select to use telescope |
| [telescope-undo](https://github.com/debugloop/telescope-undo.nvim) | Visualize and search undo trees with telescope |
| [todo-comments](https://github.com/folke/todo-comments.nvim) | Highlight and search todo comments |
| [tokyonight](https://github.com/folke/tokyonight.nvim) | Theme |
| [web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | Nerd Font icons for Neovim |
| [which-key](https://github.com/folke/which-key.nvim) | Show available keymaps as they are typed |

[Back to Top](#table-of-contents)
