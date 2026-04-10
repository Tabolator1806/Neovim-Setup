return {
	"williamboman/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"ts_ls",
			"html",
			"cssls",
			"svelte",
			"lua_ls",
			"emmet_ls",
			"pyright",
			"clangd",
			"eslint",
			"vue_ls",
			"vtsls"
		}
	},
	dependencies = {
	 {
			"williamboman/mason.nvim",
			opts = {
				ui = {
					icons = {
						package_installed = "y",
						package_pending = ">",
						package_uninstalled = "n"
					}
				}
			}
		},
		"neovim/nvim-lspconfig"
	}
}
