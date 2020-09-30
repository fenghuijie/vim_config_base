source ~/.vim/bundles.vim

" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax hightlight and completion
syntax on
syntax enable

"--------
" Vim UI
"--------
set t_Co=256
set background=dark
let g:solarized_termtrans=1
color solarized

" highlight current line
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" search
set incsearch
set ignorecase
set smartcase

" editor settings
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
set nowrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
set expandtab       " expand tab to space

"-----------------
" Plugin settings
"-----------------
"******Tagbar******************
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
nmap <F6> :TagbarToggle<cr>

"******Nerd Tree***************
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"
nmap <F7> :NERDTreeToggle<cr>

"******Source Explorer*********
"nmap <F8> :SrcExplToggle<CR>
"let g:SrcExpl_winHeight = 8
"let g:SrcExpl_refreshTime = 100
"let g:SrcExpl_jumpKey = "<ENTER>"
"let g:SrcExpl_gobackKey = "<SPACE>"
"let g:SrcExpl_pluginList = [
"         \ "__Tag_List__",
"        \ "_NERD_tree_",
"         \ "__Tagbar__.1",
"         \ "NERD_tree_1",
"         \ "[Lookup File]"
"         \ ]
"let g:SrcExpl_isUpdateTags = 0
"let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."
"let g:SrcExpl_updateTagsKey = "<F12>"

"******SuperTab****************
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

"******LookupFile**************
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
if filereadable("./filenametags")                "设置tag文件的名字
   let g:LookupFile_TagExpr = '"./filenametags"'
endif
"map LookupFile as lf
nmap <silent> <leader>lf :LUTags<cr>
"map LUBufs as lb
nmap <silent> <leader>lb :LUBufs<cr>
"map LUWalk as lw
nmap <silent> <leader>lw :LUWalk<cr>

"******Mark******************** 
"nmap <silent> <leader>hl <Plug>MarkSet          "高亮光标所在单词
"vmap <silent> <leader>hl <Plug>MarkSet
"nmap <silent> <leader>hh <Plug>MarkClear        "清除单词高亮
"vmap <silent> <leader>hh <Plug>MarkClear
"nmap <silent> <leader>hr <Plug>MarkRegex
"vmap <silent> <leader>hr <Plug>MarkRegex 
source ~/.vim/bundle/mark/plugin/mark.vim

"******ctags*******************
if filereadable("tags")
    set tags=tags
endif

"******cscope******************
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb
    if filereadable("cscope.out")
       cs add cscope.out
    endif
    set csverb
endif
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>     "查找C语言符号，即查找函数名、宏、枚举值等出现的地方
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>     "查找函数、宏、枚举等定义的位置，类似ctags所提供的功能
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>     "查找调用本函数的函数 
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>     "查找指定的字符串 
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>     "查找egrep模式，相当于egrep功能，但查找速度快多了
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>     "查找并打开文件，类似vim的find功能
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR>   "查找包含本文件的文件 
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>     "查找本函数调用的函数

"******easy motion*************
let g:EasyMotion_leader_key = '<Leader>'

"******nerdcommenter***********
let NERDSpaceDelims=1
let NERDCompactSexyComs=1

"******NeoComplCache***********
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview
imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

"******Enable omni completion**
if !exists('g:neocomplcache_omni_patterns')
      let g:neocomplcache_omni_patterns = {}
  endif
let g:neocomplcache_omni_patterns.erlang = '[a-zA-Z]\|:'

"******ctrlp*******************
"set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
"let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

"---------------------------------
" Keybindings for plugin toggle
"---------------------------------
"nnoremap <F2> :set invpaste paste?<CR>
"set pastetoggle=<F2>
"nmap <F3> :GundoToggle<cr>
"nmap <F4> :IndentGuidesToggle<cr>

""""""""""""""""""""""""""""""
" BufExplorer
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

