return {
	"LukasPietzschmann/telescope-tabs",
	dependencies = { "nvim-telescope/telescope.nvim" },
	config = function()
		require("telescope").load_extension("telescope-tabs")
		local tabs = require("telescope-tabs")
		tabs.setup()
	end,
}
