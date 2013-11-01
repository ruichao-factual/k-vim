"=============================================================================
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
"=============================================================================

" ===  Use Vundle to manage plugin  ==========================================
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
            Bundle 'bling/vim-airline'
            " Bundle 'Lokaltog/powerline'
            " Bundle 'Lokaltog/vim-powerline'
            Bundle 'kien/rainbow_parentheses.vim'
            Bundle 'myusuf3/numbers.vim'
            Bundle 'Yggdroot/indentLine'
            " Bundle 'nathanaelkane/vim-indent-guides'
            Bundle 'airblade/vim-gitgutter'
        " General move and edit
            Bundle 'Lokaltog/vim-easymotion'
            Bundle 'spf13/vim-autoclose'
            Bundle 'tpope/vim-surround'
            Bundle 'tpope/vim-repeat'
            Bundle 'scrooloose/nerdtree'
            Bundle 'corntrace/bufexplorer'
            Bundle 'fholgado/minibufexpl.vim'
            Bundle 'kien/ctrlp.vim'
            Bundle 'terryma/vim-multiple-cursors'
            Bundle 'vim-scripts/sessionman.vim'
            " allows you to configure % to match more than just single characters
            Bundle 'matchit.zip'
            Bundle 'bronson/vim-trailing-whitespace'
            Bundle 'jistr/vim-nerdtree-tabs'
            Bundle 'mbbill/undotree'
            Bundle 'tpope/vim-abolish.git'
        " General Programming
            Bundle 'tpope/vim-fugitive'
            " Pick one of the checksyntax, jslint, or syntastic
            Bundle 'scrooloose/syntastic'
            Bundle 'kevinw/pyflakes-vim'
            " Bundle 'mattn/webapi-vim'
            Bundle 'mattn/gist-vim'
            Bundle 'scrooloose/nerdcommenter'
            Bundle 'godlygeek/tabular'
            if executable('ctags')
                Bundle 'majutsushi/tagbar'
            endif
            Bundle 'vim-scripts/TaskList.vim'
            Bundle 'terryma/vim-expand-region'
        " Snippets & AutoComplete
            Bundle 'Valloric/YouCompleteMe'
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
            Bundle 'hdima/python-syntax'
            Bundle 'nvie/vim-flake8'
            Bundle 'python.vim'
            Bundle 'python_match.vim'
            Bundle 'pythoncomplete'
        "jinja2 highlight
            Bundle 'Glench/Vim-Jinja2-Syntax'
        " Java
            Bundle 'derekwyatt/vim-scala'
            Bundle 'derekwyatt/vim-sbt'
        " Javascript
            Bundle 'elzr/vim-json'
            Bundle 'groenewege/vim-less'
            Bundle 'briancollins/vim-jst'
            Bundle 'kchmck/vim-coffee-script'
            Bundle "pangloss/vim-javascript"
            Bundle 'nono/jquery.vim'
        " NodeJs
            Bundle 'moll/vim-node'
        " Nginx
            Bundle 'thiderman/nginx-vim-syntax'
        " Markdown
            Bundle 'plasticboy/vim-markdown'
        Bundle 'ervandew/supertab'
        " Vim-scripts repos
        " Bundle 'L9'
        " non github repos
        "Bundle 'git://git.wincent.com/command-t.git'
    " }

    filetype on "required!
    filetype indent on "required!
    filetype plugin on

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

    "if has ('x') && has ('gui') " On Linux use + register for copy-paste
    "    set clipboard=unnamedplus
    "elseif has ('gui')     " On mac and Windows, use * register for copy-paste
    "    set clipboard=unnamed
    "endif
    set go+=a  "when select by mouse, default copy to clipboard
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

    if has('cmdline_info')
        set ruler                   " Show the ruler
        set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
        set showcmd                 " Show partial commands in status line and
                                    " Selected characters/lines in visual mode
    endif

    if has('statusline')
        set laststatus=2
        " Broken down into easily includeable segments
        set statusline=%<%f\                     " Filename
        set statusline+=%w%h%m%r                 " Options
        set statusline+=%{fugitive#statusline()} " Git Hotness
        set statusline+=\ [%{&ff}/%Y]            " Filetype
        set statusline+=\ [%{getcwd()}]          " Current dir
        set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
    endif


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

" ===  Text, tab and indent related  =========================================
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
    " copy from cursor to end
    map Y y$

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

    if has("user_commands")
        command! -bang -nargs=* -complete=file E e<bang> <args>
        command! -bang -nargs=* -complete=file W w<bang> <args>
        command! -bang -nargs=* -complete=file Wq wq<bang> <args>
        command! -bang -nargs=* -complete=file WQ wq<bang> <args>
        command! -bang Wa wa<bang>
        command! -bang WA wa<bang>
        command! -bang Q q<bang>
        command! -bang QA qa<bang>
        command! -bang Qa qa<bang>
    endif


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

    "au VimResized * exe "normal! \<c-w>="

    " select all
    " map <Leader>sa ggVG"
    " Map <Leader>ff to display all lines with keyword under cursor
    " and ask which one to jump to
    nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

    " Find merge conflict markers
    map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>

    " Visual shifting (does not exit Visual mode)
    vnoremap < <gv
    vnoremap > >gv

    " Adjust viewports to the same size
    map <Leader>= <C-w>=

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

"========================== config for plugins begin ======================================


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
" ===  minibufferexpl  =======================================================
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

" === Tagbar  ================================================================
    nmap <F9> :TagbarToggle<CR>
    let g:tagbar_autofocus = 1

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
    "map <leader>f :CtrlPMRU<CR>
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
    au VimEnter * RainbowParenthesesToggle
    au Syntax * RainbowParenthesesLoadRound
    au Syntax * RainbowParenthesesLoadSquare
    au Syntax * RainbowParenthesesLoadBraces

" ===  Yggdroot/indentLine  ==================================================
    let g:indentLine_noConcealCursor = 1
    let g:indentLine_color_term = 0
    let g:indentLine_char = '¦'

" ===  bronson/vim-trailing-whitespace  ======================================
    map <leader><space> :FixWhitespace<cr>

" ===  UndoTree  =============================================================
    nnoremap <leader>u :UndotreeToggle<CR>
    " If undotree is opened, it is likely one wants to interact with it
    let g:undotree_SetFocusWhenToggle=1

" ===  Airline  ==============================================================
    let g:airline_powerline_fonts = 1
    let g:airline_theme="molokai"
    "let g:airline#extensions#tabline#enabled = 1
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    let g:airline_symbols.space = "\ua0"

" ===  Bundle 'vim-scripts/UltiSnips'
    "Bundle 'SirVer/ultisnips'
    "let g:UltiSnipsExpandTrigger = "<tab>"
    "let g:UltiSnipsJumpForwardTrigger = "<tab>"
    "定义存放代码片段的文件夹 .vim/snippets下，使用自定义和默认的，将会的到全局，有冲突的会提示
    "let g:UltiSnipsSnippetDirectories=["snippets", "bundle/UltiSnips/UltiSnips"]


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



" ===  Bundle 'scrooloose/syntastic'
    let g:syntastic_error_symbol='>>'
    let g:syntastic_warning_symbol='>'
    let g:syntastic_check_on_open=1
    let g:syntastic_enable_highlighting = 0
    "let g:syntastic_python_checker="flake8,pyflakes,pep8,pylint"
    let g:syntastic_python_checkers=['pyflakes']
    highlight SyntasticErrorSign guifg=white guibg=black

    " python fly check, 弥补syntastic只能打开和保存才检查语法的不足
    let g:pyflakes_use_quickfix = 0



" ===  'hdima/python-syntax' ===========================================
    let python_highlight_all = 1

" ===  'plasticboy/vim-markdown'  =====================================
    let g:vim_markdown_folding_disabled=1

" ===  for javascript
    let g:html_indent_inctags = "html,body,head,tbody"
    let g:html_indent_script1 = "inc"
    let g:html_indent_style1 = "inc"

" ===  Bundle 'vim-scripts/TaskList.vim'
    map <leader>td <Plug>TaskList

" ===  GUI, scheme, color  ===================================================
    syntax enable
    syntax on
    " Set font according to system
    if has("mac") || has("macunix")
        "set guifont=inconsolata\ for\ Powerline:h16
        set guifont=Anonymice\ Powerline:h16
    elseif has("win16") || has("win32")
        set guifont=Bitstream\ Vera\ Sans\ Mono:h11
    elseif has("linux")
        set guifont=Monospace\ 11
    endif
    hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
    hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
    hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE

    " Set extra options when running in GUI mode
    " scheme and colors
    set background=dark
    if filereadable(expand("~/.vim/bundle/vim-colors-solarized/colors/solarized.vim"))
        let g:solarized_termcolors=256
        let g:solarized_termtrans=1
        let g:solarized_contrast="normal"
        let g:solarized_visibility="normal"
        color solarized             " Load a colorscheme
    endif

    if has("gui_running")
        set guioptions-=T
        set guioptions-=e
        " Disable scrollbars
        set guioptions-=r
        set guioptions-=R
        set guioptions-=L
        set guioptions-=l
        set guitablabel=%M\ %t
        set showtabline=1
        set linespace=2
        set noimd
        colorscheme solarized
    endif
    set colorcolumn=80

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


