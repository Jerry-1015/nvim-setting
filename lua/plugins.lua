local packer = require("packer")
packer.startup(
    function(use)
        -- Packer 可以管理自己本身
        use("wbthomason/packer.nvim")
        ------------------ colorschemes --------------------
        -- tokyonight
        use("folke/tokyonight.nvim")
        -- gruvbox
        use({ "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } })
        ------------------ plugins -------------------------
        --nvim-tree
        use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
        -- bufferline (新增)
        use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
        -- lualine
        use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
        use("arkav/lualine-lsp-progress")
        -- telescope
        use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
        -- telescope extensions
        use "LinArcX/telescope-env.nvim"
        -- dashboard-nvim
        use("glepnir/dashboard-nvim")
        -- project
        use("ahmedkhalf/project.nvim")
        -- treesitter
        use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
        ------------------- LSP -----------------------------
        use({ "williamboman/nvim-lsp-installer", commit = "36b44679f7cc73968dbb3b09246798a19f7c14e0" })
        -- Lspconfig
        use({ "neovim/nvim-lspconfig" })
        -- 补全引擎
        use("hrsh7th/nvim-cmp")
        -- snippet 引擎
        use("hrsh7th/vim-vsnip")
        -- 补全源
        use("hrsh7th/cmp-vsnip")
        use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
        use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
        use("hrsh7th/cmp-path") -- { name = 'path' }
        use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
        -- 常见编程语言代码段
        use("rafamadriz/friendly-snippets")
        -- autopairs
        use("windwp/nvim-autopairs")
        -- easy motion
        use("phaazon/hop.nvim")

    end
-- pcall(
--     vim.cmd,
--     [[
--     augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--     augroup end
--   ]]
-- )
)
