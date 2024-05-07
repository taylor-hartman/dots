return {{ "williamboman/mason.nvim", config = true },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = {
                    --"lua_ls",
                    --"pylsp",
                    "pyright",
                    "terraformls",
                    "yamlls",
                },
            }
        end,
    }    
}
