-- Basic settings
vim.bo.expandtab=true
vim.o.ts=4
vim.o.shiftwidth=4
vim.o.encoding='UTF-8'

vim.o.hlsearch=true

-- Manage Packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
  
    use 'tpope/vim-sensible'
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        }
    }
    use 'navarasu/onedark.nvim'
    use {
        'akinsho/bufferline.nvim',
        tag = "v3.*",
        requires = 'nvim-tree/nvim-web-devicons'
    }
    use 'lukas-reineke/indent-blankline.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'xiyaowong/nvim-transparent'
    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    if packer_bootstrap then
        require('packer').sync()
    end
end)

-- Import lua modules
require("keymaps")
require("nvim_tree")
require("onedark").load()
require("transparent_config")
vim.opt.termguicolors = true
require("bufferline").setup{}
require("indent_blankline").setup {
    show_current_context = true,
    show_current_context_start = true,
}
require("treesitter_config")
require('lualine').setup()
