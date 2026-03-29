return{
	vim.lsp.config('pyright',{
		cmd = { 'pyright' },
		filetypes = { 'python' },
		settings = {
			python = {
				runtime = {
					version = 'Pyright'
				}
			}
		}
	})
}
