return{
	vim.lsp.config('vue-ls',{
		cmd = {'vue-language-server'},
		filetypes = {'vue'}
	})
}
