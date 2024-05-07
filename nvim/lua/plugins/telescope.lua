return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require("telescope").setup({
          defaults = {
            mappings = {
              i = {
                ["<Leader>m"] = "close",
                ["<C-c>"] = false,
              },
              n = { 
                ["<Leader>m"] = "close",
              },
            },
          }
        })
  end,
}


