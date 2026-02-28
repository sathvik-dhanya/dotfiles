"Use Vim settings, rather then Vi settings (much better!).

"Make Vim more useful. This must be first, because it changes 
"other options as a side effect
set nocompatible

"Enhance command-line completion
set wildmenu
set wildignore+=*.git # Ignore completion

"Line numbering
set number

"Allow backspace in insert mode
set backspace=indent,eol,start

"Store lots of :cmdline history
set history=1000

"Show incomplete cmds down the bottom
set showcmd

"Show current mode down the bottom
set showmode

"Disable cursor blink
set gcr=a:blinkon0

"No sounds
set visualbell

"tell Vim to always put a status line in, even if there is only one window
set laststatus=2

"Reload files changed outside vim
set autoread

"Make sure that unsaved buffers that are to be put in the background 
"are allowed to go in there (i.e. the "must save first" error doesn't come up)
set hidden

"turn on syntax highlighting
syntax on

"Turn off swap files
set noswapfile
set nobackup
set nowb

"Indentation
set autoindent	# Auto-indent new lines
set expandtab	# Use spaces instead of tabs
set shiftwidth=2	# Number of auto-indent spaces
set smartindent	# Enable smart-indent
set smarttab	# Enable smart-tabs
set softtabstop=2	# Number of spaces per Tab
set tabstop=2	# Number of spaces per Tab

"Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype on
filetype plugin on
filetype indent on

"Search settings
set hlsearch	# Highlight all search results
set smartcase	# Enable smart-case search
set ignorecase	# Always case-insensitive
set incsearch	# Searches for strings incrementally

"Highlighting
set showmatch	# Highlight matching brace
set t_Co=256
set cursorline
hi cursorline cterm=none
highlight CursorLine guibg=#303000 ctermbg=234

"Keep indentation on paste
set pastetoggle=<F2>
