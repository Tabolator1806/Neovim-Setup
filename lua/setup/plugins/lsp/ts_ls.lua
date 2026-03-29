return{
	vim.lsp.config('ts-ls',{
		cmd = {'typescript-language-server'},
		filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
		init_options = {
			plugins = {
				name = "@vue/typescript-plugin",
				location = "/usr/local/lib/node_modules/@vue/language-server",
				languages = {"vue"}
			}
		}
	})
}
