"==========================================
" Author:  ruichao
" Version: 1
" Email: ruichaoxue@gmail.com
" Last_modify: 2013-10-27
" Sections:
"     ->General 基础设置
"     ->Show 展示/排班等界面格式设置
"     ->file encode, 文件编码,格式
"     ->others 其它基础配置
"     ->hot key  自定义快捷键
"     ->bundle 插件管理和配置项
"     ->colortheme 主题,及一些展示上颜色的修改
"==========================================
" ===  Use Vundle to manage plugin  ============================
" => Vundle
    " :BundleInstall     install
    " :BundleInstall!    update
    " :BundleClean       remove plugin not in list
    set nocompatible
    filetype off   "required!
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    " let Vundle manage Vundle
    " required
    Bundle 'gmarik/vundle'

    "  My Bundles here {
        " original repos on github
        " Bundle 'tpope/vim-fugitive'
        " General
            Bundle 'altercation/vim-colors-solarized'
            Bundle 'spf13/vim-colors'
            Bundle 'flazz/vim-colorschemes'
            Bundle 'tomasr/molokai'
            Bundle 'godlygeek/csapprox'
            " Bundle 'bling/vim-airline'
            " Bundle 'Lokaltog/powerline'
            Bundle 'Lokaltog/vim-powerline'
            Bundle 'kien/rainbow_parentheses.vim'
            Bundle 'myusuf3/numbers.vim'
            Bundle 'airblade/vim-gitgutter'
            Bundle 'Yggdroot/indentLine'
            Bundle 'spf13/vim-autoclose'
            Bundle 'tpope/vim-surround'
            Bundle 'tpope/vim-repeat'
            Bundle 'scrooloose/nerdtree'
            Bundle 'kien/ctrlp.vim'
            Bundle 'Lokaltog/vim-easymotion'
            Bundle 'Valloric/YouCompleteMe'
            Bundle 'terryma/vim-multiple-cursors'
            Bundle 'vim-scripts/sessionman.vim'
            Bundle 'matchit.zip'
            Bundle 'bronson/vim-trailing-whitespace'
            Bundle 'jistr/vim-nerdtree-tabs'
            Bundle 'mbbill/undotree'
            Bundle 'nathanaelkane/vim-indent-guides'
            Bundle 'tpope/vim-abolish.git'
            Bundle 'corntrace/bufexplorer'
            "Bundle 'fholgado/minibufexpl.vim'
        " General Programming
            " Pick one of the checksyntax, jslint, or syntastic
            Bundle 'scrooloose/syntastic'
            Bundle 'tpope/vim-fugitive'
            " Bundle 'mattn/webapi-vim'
            Bundle 'mattn/gist-vim'
            Bundle 'scrooloose/nerdcommenter'
            Bundle 'godlygeek/tabular'
            if executable('ctags')
                Bundle 'majutsushi/tagbar'
            endif
        " Snippets & AutoComplete
            Bundle 'Shougo/neocomplcache'
            Bundle 'Shougo/neosnippet'
            Bundle 'honza/vim-snippets'
        " Html
            Bundle 'amirh/HTML-AutoCloseTag'
            Bundle 'hail2u/vim-css3-syntax'
            Bundle 'tpope/vim-haml'
        " Ruby
            Bundle 'tpope/vim-rails'
        " Python
            Bundle 'nvie/vim-flake8'
            Bundle 'python.vim'
            Bundle 'python_match.vim'
            Bundle 'pythoncomplete'
        " Java
            Bundle 'derekwyatt/vim-scala'
            Bundle 'derekwyatt/vim-sbt'
        " Javascript
            Bundle 'elzr/vim-json'
            Bundle 'groenewege/vim-less'
            Bundle 'briancollins/vim-jst'
            Bundle 'kchmck/vim-coffee-script'
        " NodeJs
            Bundle 'moll/vim-node'
        Bundle 'ervandew/supertab'
        " Vim-scripts repos
        " Bundle 'L9'
        " non github repos
        "Bundle 'git://git.wincent.com/command-t.git'
    " }

    filetype on "required!
    filetype indent on "required!

" ===  General config  =========================================
    " set how many lines of history VIM has to remember
    set history=1000
    " set to auto read when a file is changed from the outside
    set autoread
    " Automatically enable mouse usage
    set mouse=a
    " Hide the mouse cursor while typing
    set mousehide

    " With a map leader, it's possible to do extra key combinations
    let mapleader=","
    let g:mapleader=","

    " timespan for a combine key command
    set timeoutlen=2000

    " Configure backspace so it acts as it should act
    set backspace=eol,start,indent
    set whichwrap+=b,s,h,l,[,],<,>

    "- 则点击光标不会换,用于复制
    " 修复ctrl+m 多光标操作选择的bug，但是改变了ctrl+v进行字符选中时将包含光标下的字符
    "set selection=exclusive
    set selection=inclusive
    set selectmode=mouse,key

    " No annoying sound on errors
    set novisualbell
    set noerrorbells
    set t_vb=



" === VIM user interface ========================================
    " Set 7 lines to the cursor - when moving vertically using j/k
    " the number of context lines you would like to see above and below the cursor
    set scrolloff=7
    " allow for cursor beyond last character
    set virtualedit=onemore
    set shortmess+=filmnrxoOtT "   ??




" ===  Show 展示/排班等界面格式设置 ============================
    set title          " change the terminal's title
    set number         " Show line number
    set wrap           " Turn wrap on
    " map <F2> to toggle wrap
    nnoremap <F2> :set wrap! wrap?<CR>
    " show matching brackets when text indicator is over them
    set showmatch
    " Highlight problematic whitespace
    set list
    set listchars=tab:>·,trail:•,extends:#,nbsp:.
    " add < and > as matchpairs
    set matchpairs+=<:>
    " How many tenths of a second to blink when matching brackets
    set mat=2
    " search config
    set ignorecase     " Ignore case
    set incsearch      " Show search result while typing
    set hlsearch       " Highlight search content
    set smartcase      " Smart about case when search
    set cursorcolumn   " Highlight current line
    set cursorline     " Highlight current column
    set showcmd        " Show command in status line
    set laststatus=2   " Always show the status line


" ===  Fold config  ===========================================
    set foldenable     " Auto fold code
    set foldmethod=indent " Fold method
    set foldlevel=99      " Set unfold as default
    "set foldcolumn=2      " Add extra margin to the left
    " Fold hot keys
    nmap <leader>f0 :set foldlevel=0<CR>
    nmap <leader>f1 :set foldlevel=1<CR>
    nmap <leader>f2 :set foldlevel=2<CR>
    nmap <leader>f3 :set foldlevel=3<CR>
    nmap <leader>f4 :set foldlevel=4<CR>
    nmap <leader>f5 :set foldlevel=5<CR>
    nmap <leader>f6 :set foldlevel=6<CR>
    nmap <leader>f7 :set foldlevel=7<CR>
    nmap <leader>f8 :set foldlevel=8<CR>
    nmap <leader>f9 :set foldlevel=9<CR>

" ===  encoding, filecodings setting ==========================
    set encoding=utf8   " Set utf8 as standard encoding
    "encoding script
    if has("multi_byte")
        "set fileencoding priority
        if getfsize(expand("%")) > 0
            set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,latain1
        else
            set fileencodings=cp936,big5,euc-jp,euc-kr,latain1
        endif
        "CJK environment detection and corresponding setting
        if v:lang =~ "^zh_CN"
            "Use cp936 to support GBK, euc-cn == gb2312
            set encoding=cp936
            set termencoding=cp936
            set fileencoding=cp936
        elseif v:lang =~ "^zh_TW"
            "cp950, big5 or euc-tw
            set encoding=big5
            set termencoding=big5
            set fileencoding=big5
        elseif v:lang =~ "^ko"
            set encoding=euc-kr
            set termencoding=euc-kr
            set fileencoding=euc-kr
        elseif v:lang =~ "^ja_JP"
            set encoding=euc-jp
            set termencoding=euc-jp
            set fileencoding=enc-jp
        endif

        " Detect UTF-8 locale, and replace CJK setting if needed
        if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
            set encoding=utf-8
            set termencoding=utf-8
            set fileencoding=utf-8
        endif
    else
        echoerr "Sorry, this version of (g)vim was not compiled with multi_byte"
    endif

    set ffs=unix,mac,dos          " Use Unix as the standard file type

    " 如遇Unicode值大于255的文本，不必等到空格再折行。
    set formatoptions+=m

    " 合并两行中文时，不在中间加空格：
    set formatoptions+=B

" ===  Buffer config ===========================================
    " A buffer becomes hidden when it is abandoned
    set hidden
    " Automatically switch to the current file directory when a new buffer is opened
    autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
    set ttyfast " ????

" ===  Files, backups and undo   ================================
    "Turn backup off, since most stuff is in SVN, Git etc.
    set nobackup
    set nowb
    set noswapfile
    if has('persistent_undo')
        set undofile
        set undolevels=1000
        set undoreload=10000
    endif
    " set swap(.swp), backup(~), undo(.udf) directory to vim installation
    " please make sure the directory exists otherwise current directory will
    " be used
    set undodir=~/k-vim/undo//,.
    " turn off backup and swapfile, no need
    "set backupdir=~/k-vim/backup//,.
    "set directory=~/k-vim/swap//,.

" ===  Text, tab and indent related
    set expandtab      " Use spaces instead of tabs
    set smarttab       " Be smart when using tabs
    set shiftwidth=4   " 1 tab == 4 spaces
    set tabstop=4
    set softtabstop=4  " Let backspace delete 4 spaces
    set autoindent     " auto indent
    set smartindent    " smart indent

" ===  Other configs  =========================================
    autocmd! bufwritepost _vimrc source % " vimrc文件修改之后自动加载。 windows。
    autocmd! bufwritepost .vimrc source % " vimrc文件修改之后自动加载。 linux。

    " For regular expressions turn magic on
    set magic

" ===  自动补全配置  =========================================
    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
    set completeopt=longest,menu
    set wildmenu       " Show list instead of just completing
    " Command <Tab> Completion, list matches, then longest common part, then all
    set wildmode=list:longest,full

    ""离开插入模式后自动关闭预览窗口
    "autocmd InsertLeave * if pumvisible() == 0|pclose|endif
    ""回车即选中当前项
    "inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

    ""上下左右键的行为 会显示其他信息
    "inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
    "inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
    "inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
    "inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"


    " Ignore compiled files
    set wildignore=*.o,*~,*.pyc,*.class
    if has("win16") || has("win32")
        set wildignore+=*/.git*,*/.hg/*,*/.DS_Store
    else
        set wildignore+=.git\*,.hg\*
    endif

    " if this not work ,make sure .viminfo is writable for you
    if has("autocmd")
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    endif

    " Function: delete trailing white space
    func! DeleteTrailingWS()
      exe "normal mz"
      %s/\s\+$//ge
      exe "normal `z"
    endfunc
    autocmd BufWrite *.py :call DeleteTrailingWS()      " Remove trailing white space before save
    autocmd BufWrite *.coffee :call DeleteTrailingWS()  " Remove trailing white space before save

    " Remember info about open buffers on close"
    set viminfo^=%

" === hot key  ===============================================================

    " Quickly edit/reload the vimrc file
    nmap <silent> <leader>ev :e $MYVIMRC<CR>
    nmap <silent> <leader>sv :so $MYVIMRC<CR>

    "强迫自己用 hjkl
    "map <Left> <Nop>
    "map <Right> <Nop>
    "map <Up> <Nop>
    "map <Down> <Nop>

    "Treat long lines as break lines (useful when moving around in them)
    map j gj
    map k gk
    " Go to home and end using capitalized directions
    noremap H 0
    noremap L $
    " Remap VIM 0 to first non-blank character
    map 0 ^

    " better command line editing (bash style)
    cnoremap <C-f> <Right>
    cnoremap <C-b> <Left>
    cnoremap <C-a> <Home>
    cnoremap <C-e> <End>

    "Smart way to move between windows
    map <C-j> <C-W>j
    map <C-k> <C-W>k
    map <C-h> <C-W>h
    map <C-l> <C-W>l

    " copy from cursor to end
    map Y y$

    " Speed up scrolling of the viewport slightly
    nnoremap <C-e> 3<C-e>
    nnoremap <C-y> 3<C-y>

    "set paste when in insert mode, press <F12> to go to paste mode where you can
    "paste mass data that won't be autoindented
    set pastetoggle=<F12>
    " disbale paste mode when leaving insert mode
    au InsertLeave * set nopaste


    " Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
    "map <space> /
    "map <c-@> ?"

    " w!! to sudo & write a file
    cmap w!! w !sudo tee >/dev/null %
    noremap <silent><leader>/ :nohls<CR>

    " In insert mode use kj to leave insert mode
    inoremap kj <Esc>
    " I can type :help on my own, thanks.
    noremap <F1> <Esc>

    "nnoremap <leader>v V`}
    "Use sane(very magic) regexes
    nnoremap / /\v
    vnoremap / /\v

    "Keep search pattern at the center of the screen."
    nnoremap <silent> n nzz
    nnoremap <silent> N Nzz
    nnoremap <silent> * *zz
    nnoremap <silent> # #zz
    nnoremap <silent> g* g*zz

    "Use arrow key to change buffer"
    "noremap <left> :bp<CR>
    "noremap <right> :bn<CR>

    " Add a newline before / after current line
    nmap t o<ESC>k
    nmap T O<ESC>j

    " ctrl +jk to move lines
    noremap <C-j> :m-2<CR>
    noremap <C-k> :m+<CR>
    inoremap <C-j> <Esc>:m+<CR>
    inoremap <C-k> <Esc>:m-2<CR>

    " Quickly close the current window
    nnoremap <leader>q :q<CR>
    nnoremap <leader>wq :wq<CR>

    au VimResized * exe "normal! \<c-w>="

    " select all
    map <Leader>sa ggVG"

    " automatically reload vimrc when it's saved
    au BufWritePost .vimrc so ~/.vimrc

    " Close the current buffer
    "map <leader>bd :Bclose<cr>
    "" " Close all the buffers
    "map <leader>ba :1,1000 bd!<cr>

    map <leader>tn :tabnew<cr>
    map <leader>to :tabonly<cr>
    map <leader>tc :tabclose<cr>
    map <leader>tm :tabmove<cr>

    " tabnext  tabpreviouse

    " Opens a new tab with the current buffer's path
    " Super useful when editing files in the same directory
    map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" bundle 插件管理和配置项
"========================== config for plugins begin ======================================

" 0-bundle the plugins
"package dependent:  ctags
"python dependent:  pep8, pyflake


" ===  NERDTree ==============================================================
    map <leader>n :NERDTreeToggle<CR>:NERDTreeMirror<CR>
    map <leader>e :NERDTreeFind<CR>
    let NERDTreeShowBookmarks=1
    let NERDTreeChDirMode=0
    let NERDTreeQuitOnOpen=1
    let NERDTreeMouseMode=2
    let NERDTreeShowHidden=1
    let NERDTreeKeepTreeInNewTab=1
    let g:nerdtree_tabs_open_on_gui_startup=0
    let NERDTreeHighlightCursorline=1
    let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]
    let g:netrw_home='~/bak'
    "close vim if the only window left open is a NERDTree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end

" ===  Numbers.vim  ==========================================================
    nnoremap <F4> :NumbersToggle<CR>
    nnoremap <F3> :set nonumber!<CR>

" ===  vim-autoclose  ========================================================
    let g:autoclose_vim_commentmode = 1   " Don't paired " for vim config file
"for minibufferexpl
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
"解决FileExplorer窗口变小问题
let g:miniBufExplForceSyntaxEnable = 1
let g:miniBufExplorerMoreThanOne=2
let g:miniBufExplCycleArround=1

" 默认方向键左右可以切换buffer
nnoremap <TAB> :MBEbn<CR>
noremap <leader>bn :MBEbn<CR>
noremap <leader>bp :MBEbp<CR>
noremap <leader>bd :MBEbd<CR>

"标签导航
" === Tagbar  ================================================================
nmap <F9> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

"标签导航 要装ctags
Bundle 'vim-scripts/taglist.vim'
set tags=tags;/
let Tlist_Ctags_Cmd="/usr/bin/ctags"
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 30
let Tlist_Process_File_Always = 0
let Tlist_Show_Menu = 0
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "order"
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 0
let Tlist_WinWidth = 25

" Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux"
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',
    \ }
"\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

" === vim-powerline  =========================================================
" if want to use fancy,need to add font patch ->
" git clone git://gist.github.com/1630581.git ~/.fonts/ttf-dejavu-powerline
let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'unicode'


"===  kien/rainbow_parentheses.vim  ==========================================
    let g:rbpt_colorpairs = [
        \ ['brown',       'RoyalBlue3'],
        \ ['Darkblue',    'SeaGreen3'],
        \ ['darkgray',    'DarkOrchid3'],
        \ ['darkgreen',   'firebrick3'],
        \ ['darkcyan',    'RoyalBlue3'],
        \ ['darkred',     'SeaGreen3'],
        \ ['darkmagenta', 'DarkOrchid3'],
        \ ['brown',       'firebrick3'],
        \ ['gray',        'RoyalBlue3'],
        \ ['black',       'SeaGreen3'],
        \ ['darkmagenta', 'DarkOrchid3'],
        \ ['Darkblue',    'firebrick3'],
        \ ['darkgreen',   'RoyalBlue3'],
        \ ['darkcyan',    'SeaGreen3'],
        \ ['darkred',     'DarkOrchid3'],
        \ ['red',         'firebrick3'],
        \ ]
    let g:rbpt_max = 40
    let g:rbpt_loadcmd_toggle = 0

" ===  Yggdroot/indentLine  ==================================================
    let g:indentLine_noConcealCursor = 1
    let g:indentLine_color_term = 0
    let g:indentLine_char = '¦'

" ===  bronson/vim-trailing-whitespace  =====================================
    map <leader><space> :FixWhitespace<cr>



"迄今为止用到的最好的自动VIM自动补全插件
" ===  Bundle 'Valloric/YouCompleteMe'  ======================================
"youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
"let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
"let g:ycm_key_list_previous_completion = ['<Up>']


"快速插入代码片段
"Bundle 'vim-scripts/UltiSnips'
"Bundle 'SirVer/ultisnips'
"let g:UltiSnipsExpandTrigger = "<tab>"
"let g:UltiSnipsJumpForwardTrigger = "<tab>"
"定义存放代码片段的文件夹 .vim/snippets下，使用自定义和默认的，将会的到全局，有冲突的会提示
"let g:UltiSnipsSnippetDirectories=["snippets", "bundle/UltiSnips/UltiSnips"]


"for code alignment
" ===  Bundle 'godlygeek/tabular'  ===========================================
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

"for visual selection
"Bundle 'terryma/vim-expand-region'
"map = <Plug>(expand_region_expand)
"map - <Plug>(expand_region_shrink)

"for mutil cursor
"Bundle 'terryma/vim-multiple-cursors'
"let g:multi_cursor_use_default_mapping=0
" Default mapping
"let g:multi_cursor_next_key='<C-m>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'



" 编辑时自动语法检查标红, vim-flake8目前还不支持,所以多装一个
"" 使用pyflakes,速度比pylint快
"Bundle 'scrooloose/syntastic'
"let g:syntastic_error_symbol='>>'
"let g:syntastic_warning_symbol='>'
"let g:syntastic_check_on_open=1
"let g:syntastic_enable_highlighting = 0
""let g:syntastic_python_checker="flake8,pyflakes,pep8,pylint"
"let g:syntastic_python_checkers=['pyflakes']
"highlight SyntasticErrorSign guifg=white guibg=black
"
"" python fly check, 弥补syntastic只能打开和保存才检查语法的不足
"Bundle 'kevinw/pyflakes-vim'
"let g:pyflakes_use_quickfix = 0



" for python.vim syntax highlight
" === Bundle 'hdima/python-syntax' ===========================================
let python_highlight_all = 1


" for markdown
" ===  Bundle 'plasticboy/vim-markdown'  =====================================
let g:vim_markdown_folding_disabled=1

" for javascript
"Bundle "pangloss/vim-javascript"
"let g:html_indent_inctags = "html,body,head,tbody"
"let g:html_indent_script1 = "inc"
"let g:html_indent_style1 = "inc"
"
""for jquery
"Bundle 'nono/jquery.vim'
"
""for jinja2 highlight
"Bundle 'Glench/Vim-Jinja2-Syntax'
"
""for nginx conf file highlight.   need to confirm it works
"Bundle 'thiderman/nginx-vim-syntax'

"################### 其他 ###################"
" task list
Bundle 'vim-scripts/TaskList.vim'
map <leader>td <Plug>TaskList

"edit history, 可以查看回到某个历史状态
"Bundle 'sjl/gundo.vim'
"nnoremap <leader>h :GundoToggle<CR>


" ===  GUI, scheme, color  =======================================
    syntax enable
    syntax on
    " Set font according to system
    if has("mac") || has("macunix")
        "set guifont=inconsolata:h16
        set guifont=monaco:h13
    elseif has("win16") || has("win32")
        set guifont=Bitstream\ Vera\ Sans\ Mono:h11
    elseif has("linux")
        set guifont=Monospace\ 11
    endif

    " Set extra options when running in GUI mode
    " scheme and colors
    if has("gui_running")
        set guifont=Monaco:h14
        set guioptions-=T
        set guioptions-=e
        set guioptions-=r
        set guioptions-=L
        set guitablabel=%M\ %t
        set showtabline=1
        set linespace=2
        set noimd
        colorscheme molokai
        "let g:molokai_original = 1
    else
        let g:solorized_termcolors=256
        let g:solarized_termtrans=1
        let g:solarized_contrast="high"
        let g:solarized_visibility="normal"
        set background=dark
        colorscheme solarized
    endif

"设置标记一列的背景颜色和数字一行颜色一致
hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange

"" for error highlight，防止错误整行标红导致看不清
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

" settings for kien/rainbow_parentheses.vim
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

