if exists('g:vscode')
	" vscode neovim extension
	nnoremap <silent> <space> <Cmd>call VSCodeNotify('vspacecode.space')<CR>
	vnoremap <silent> <space> <Cmd>call VSCodeNotify('vspacecode.space')<CR>
else
	set mouse=a

	" ordinary neovim
	set nu
	set autoindent
	set shiftwidth=4
	set tabstop=4
	set noexpandtab
	syntax on

	set wrap
	set linebreak
	set nolist

	set hidden

	set background=dark

	let mapleader = "\<SPACE>"

	nnoremap <leader>wj <C-W><C-J>
	nnoremap <leader>wk <C-W><C-K>
	nnoremap <leader>wl <C-W><C-L>
	nnoremap <leader>wh <C-W><C-H>

	call plug#begin('~/.vim/plugged')
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	" {{{
	function! GFilesFallback()
		let output = system('git rev-parse --show-toplevel') " Is there a faster way?
		let prefix = get(g:, 'fzf_command_prefix', '')
		if v:shell_error == 0
			exec "normal :" . prefix . "GFiles\<CR>"
		else
			exec "normal :" . prefix . "Files\<CR>"
		endif
		return 0
	endfunction

	nnoremap <silent> <leader><space> :call GFilesFallback()<CR>
	nnoremap <silent> <leader>ff :Files ~<CR>
	nnoremap <silent> <leader>bb :Buffers<CR>
	nnoremap <silent> <leader>/ :Rg<CR>
	" }}}
	Plug 'airblade/vim-gitgutter'
	Plug 'ntpeters/vim-better-whitespace'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	" {{{
	let g:airline_powerline_fonts = 1
	let g:airline_theme = 'luna'
	" }}}
	Plug 'edkolev/tmuxline.vim'
	call plug#end()

endif
