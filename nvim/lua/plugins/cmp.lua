return {
        -- Autocompletion
        "hrsh7th/nvim-cmp",
        dependencies = {
            -- Adds LSP completion capabilities
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "saadparwaiz1/cmp_luasnip",
        },
        config = function()

            require("cmp").setup()
        end,
    }
