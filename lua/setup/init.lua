require("setup.remap")
print("pomocy")
vim.lsp.config['pyright'] = {
	filetypes = { "py" },
	settings = {
		python = {
			runtime = {
				version = 'Pyright'
			}
		}
	}
}
vim.lsp.enable("pyright")
vim.g.terminal_emulator = "alacritty"
vim.opt.relativenumber = true
