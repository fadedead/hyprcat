--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'core.lazy-bootstrap'

require 'core.vim-settings'

require 'core.keymaps'

require 'core.vim-settings'

require 'core.telescope-setup'

require 'core.treesitter-setup'

require 'core.lsp-setup'

require 'core.cmp-setup'
