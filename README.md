# k-vim
-------------------------

## Install
1. clone the repo to local

        git clone git@github.com:ruichao-factual/k-vim.git

2. install dependencies

        sudo apt-get install ctags
        sudo apt-get install build-essential cmake python-dev  #required by YCM plugins

        # brew install ctags     (mac user)

        # required by python
        sudo pip install pyflakes
        sudo pip install pylint
        sudo pip install pep8

3. Install plugin

        cd k-vim/
        sh -x install.sh

4. Q&As:

   * [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
   
      This plugin require Vim >7.3.584
      
   * What does install.sh do?
   
   	  1. link vimrc/vim to $HOME/.vimrc, $HOME/.vim
   	  2. clone vundle to local bundle directory
   	  3. install other plugins using Vundle
   	  4. auto compile YCM.
   
5. Plugins manage => [vundle](https://github.com/gmarik/vundle)：



## Plugins introduction
------------
> Plugins manager

#### [gmarik/vundle](https://github.com/gmarik/vundle)

   Delete plugins: remove/commend out the bundle line and then execute:

        :BundleClean

   Install new plugins: add new plugins in vimrc and execute:

        :BundleInstall

   Update:
   
        :BundleUpdate


>  navigating and managing files

1. #### [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)
        
            ,n      Toggle NERDTree

            o 		Open files, directories and bookmarks
            i		Open selected file in a split window
            s		Open selected file in a new vsplit
            x		Close the current nodes parent
            R		Recursively refresh the current root
            r		Recursively refresh the current directory
            P		Jump to the root node
            p		Jump to current nodes parent
            K		Jump up inside directories at the current tree depth
            J		Jump down inside directories at the current tree depth


2. #### [corntrace/bufexplorer](https://github.com/corntrace/bufexplorer)

   buffer manager

        ,be  normal open
        ,bs  force horizontal split open
        ,bv  force vertical split open
        
        
        <F1>           Toggle help information.
        <enter>        Opens the buffer that is under the cursor into the current window.
        <leftmouse>    Opens the buffer that is under the cursor into the current window.
		<shift-enter>  Opens the buffer that is under the cursor in another tab. 
		d              delete the buffer under the cursor from the list. 
		R              Toggles relative path/absolute path.
		T              Toggles to show only buffers for this tab or not. 
		D              wipeout the buffer under the cursor from the list. 
		f              Toggles whether you are taken to the active window when selecting a buffer or not.
		o              Opens the buffer that is under the cursor into the current window.
        p              Toggles the showing of a split filename/pathname. 
        q              Quit exploring.
        r              Reverses the order the buffers are listed in. 
        s              Selects the order the buffers are listed in. [buffer number/file name/file extension/full path.
        t              Opens the buffer that is under the cursor in another tab. 
        u              Toggles the showing of "unlisted" buffers.

3. #### [kien/ctrlp.vim](https://github.com/hdima/python-syntax)

   Ctrlp replaces the Command-T plugin with a 100% vim plugin. It provides an intuitive and fast mechanism to load files from the file system (with regex and fuzzy find), from open buffers, and from recently used files.[doc](http://kien.github.io/ctrlp.vim/)

         ,p           Launch ctrlp
         ,f           show recently opened files

         ctrl + j/k   move up/down

   Demo

   ![ctrip](https://github.com/wklken/gallery/blob/master/vim/ctrlp.gif?raw=true)





> Display improvement

1. ####[Theme: solarized](https://github.com/altercation/vim-colors-solarized)

   	![solarized](https://github.com/wklken/gallery/blob/master/vim/solarized.png?raw=true)

2. ####[Theme: molokai](https://github.com/tomasr/molokai)

	![molokai](https://github.com/wklken/gallery/blob/master/vim/molokai.png?raw=true)
	
3. #### [CSApprox](http://www.vim.org/scripts/script.php?script_id=2390) 
   
   Make gvim-only colorschemes work transparently in terminal vim

4. ####[bling/vim-airline](https://github.com/bling/vim-airline)

   
5. ####[kien/rainbow_parentheses.vim](https://github.com/kien/rainbow_parentheses.vim)

   Highlight parentheses

   Demo:

   ![rainbow](https://github.com/wklken/gallery/blob/master/vim/rainbow_parentheses.png?raw=true)

6. ####[Yggdroot/indentLine](https://github.com/Yggdroot/indentLine)

   Alternative one  [nathanaelkane/vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)
   
   tune colors to accordant with solarized. ([颜色](http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim?file=Xterm-color-table.png))

   Demo:

   ![indentline](https://github.com/wklken/gallery/blob/master/vim/indentline.png?raw=true)

7. #### [airblade/vim-gitgutter]



> Quick movement

    
1. ####[Lokaltog/vim-easymotion](https://github.com/Lokaltog/vim-easymotion)

   EasyMotion provides an interactive way to use motions in Vim.

   It quickly maps each possible jump destination to a key allowing very fast and straightforward movement.

   EasyMotion is triggered using the normal movements, but prefixing them with <leader><leader>

   For example this screen shot demonstrates pressing ,,w | ,,fe
 
  Demo:

   ![easy_motion](https://github.com/wklken/gallery/blob/master/vim/easymotion.gif?raw=true)
   
2. #### [majutsushi/tagbar](https://github.com/majutsushi/tagbar)

   This plugin requires exuberant-ctags and will automatically generate tags for your open files. It also provides a panel to navigate easily via tags

        <F9>    Tagbar Toggle
        CTRL-]  while the cursor is on a keyword (such as a function name) to jump to it's definition.
        Ctrl-T  jump back up one level

   Demo

   ![tagbar](https://github.com/wklken/gallery/blob/master/vim/tagbar.gif?raw=true)

3. ####[vim-scripts/matchit.zip](https://github.com/vim-scripts/matchit.zip)
  
  The matchit.vim script allows you to configure % to match more than just single characters.

> Autocomplete and quick edit


1. ####[Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

   

   
   这个需要自己去看官方的配置方式,演示在官方github有

   需要Vim 7.3.584 以上版本([如何编译vim](https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source))

   这个插件包含了以下四个插件功能,所以不需要装下面四个

        clang_complete
        AutoComplPop
        Supertab
        neocomplcache
        jedi(对python的补全)

   快捷键:

        ,gd  跳到声明位置, 仅 filetypes: c, cpp, objc, objcpp, python 有效

2. #### [SirVer/ultisnips](https://github.com/SirVer/ultisnips)

   必装，效率杀手锏，快速插入自定义的代码片段

   自动补全加这个,高效必备, 针对各种语言已经带了一份配置了，可以到安装目录下查看具体，我有针对性补全一份，在snippets目录下，可自行修改

   演示

   ![ultisnips](https://github.com/wklken/gallery/blob/master/vim/utilsnips.gif?raw=true)

3. #### [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter)

      	[count]<leader>cc      	    Comment out the current line or text selected in visual mode. 
      	[count]<leader>cu        	Uncomments the selected line(s).
      	[count]<leader>c<space>    	Toggles the comment state of the selected line(s)(according to topmost selected line).
      	[count]<leader>ci      	    Toggles the comment state of the selected line(s) individually.
      	[count]<leader>cm      	    Comments the given lines using only one set of multipart delimiters.
    

4. #### [tpope/vim-surround](https://github.com/tpope/vim-surround)

        cs"' [inside]
        "Hello world!" -> 'Hello world!'
        ds"
        "Hello world!" -> Hello world!
        ysiw"
        Hello -> "Hello"

   
5. #### [tpope/vim-repeat](https://github.com/tpope/vim-repeat)

   



6. ####[spf13/vim-autoclose](https://github.com/spf13/vim-autoclose)

   autocomplete "(", "{", "[" and so on.

   
7. ####[godlygeek/tabular](https://github.com/godlygeek/tabular)

   Tabularize lets you align statements on their equal signs and other characters

        <Leader>a= :Tabularize /=
		<Leader>a: :Tabularize /:
		<Leader>a:: :Tabularize /:\zs
		<Leader>a, :Tabularize /,
		<Leader>a<Bar> :Tabularize /

8. ####[terryma/vim-expand-region](https://github.com/terryma/vim-expand-region)

   选装，visual mode selection
   视图模式下可伸缩选中部分，用于快速选中某些块

        [sd]
        = 增加选中范围(+/=按键)
        - 减少选中范围(_/-按键)

   演示（直接取链到其github图)

   ![expand-region](https://raw.github.com/terryma/vim-expand-region/master/expand-region.gif)

9. ####[vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)

   选装，多光标批量操作

        [sd]
        ctrl + m 开始选择
        ctrl + p 向上取消
        ctrl + x 跳过
        esc   退出

   演示(官方演示图)

   ![multiple-cursors](https://raw.github.com/terryma/vim-multiple-cursors/master/assets/example1.gif)

> 语法检查

1. ####[scrooloose/syntastic](https://github.com/scrooloose/syntastic)

   建议安装，静态语法及风格检查,支持多种语言

   修改了下标记一列的背景色,原有的背景色在solarized下太难看了…..

   演示

   ![syntastic](https://github.com/wklken/gallery/blob/master/vim/syntastic.png?raw=true)

2. ####[kevinw/pyflakes-vim](https://github.com/kevinw/pyflakes-vim)

   虽然这个的作者推荐使用syntastic,但是这个插件对于pythoner还是很需要的

   因为有一个特牛的功能,fly check,即,编码时在buffer状态就能动态查错标记,弥补syntastic只能保存和打开时检查语法错误的不足

   演示
   ![pyflakes](https://github.com/wklken/gallery/blob/master/vim/pyflakes.png?raw=true)
   
3. ####[bronson/vim-trailing-whitespace](https://github.com/bronson/vim-trailing-whitespace)

            ,<space>    remove tailing spaces

> 具体语言

    主要是python  其它语言以及前端的,用得少没有研究使用过
    python   golang   markdown
    需要其它语言支持的,可以到github上捞,上面很多流行的vim配置,eg. spf13-vim
    以下均为选装，根据自己需要

1. ####[python-syntax](https://github.com/hdima/python-syntax)

   使用Python建议安装，python语法高亮,就是python.vim,在github,有维护和更新

2. ####[jnwhiteh/vim-golang](https://github.com/jnwhiteh/vim-golang)

   使用golang建议安装， golang语法高亮

   golang刚入门使用,项目中还没正式开始,目前很多golang的手册有配置vim的介绍,后续有需求再弄

3. ####[plasticboy/vim-markdown](https://github.com/plasticboy/vim-markdown)

   markdown语法,编辑md文件

6. ####[pangloss/vim-javascript](https://github.com/pangloss/vim-javascript)

   偶尔会看看js,频率不高

4. ####[nono/jquery.vim](https://github.com/nono/jquery.vim)

   jquery高亮

5. ####[thiderman/nginx-vim-syntax](https://github.com/thiderman/nginx-vim-syntax)

   nginx配置文件语法高亮,常常配置服务器很有用

6. ####[Glench/Vim-Jinja2-Syntax](https://github.com/Glench/Vim-Jinja2-Syntax)

   jinja2 语法高亮


> 其它扩展增强

    根据自身需求自取配置,不需要的话自己注解

2. ####[tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)

   git plugin

   不是很习惯,所以用的次数太少,目前和现有配置快捷键有冲突,尚未解决


3. ####[mbbill/undotree](https://github.com/mbill/undotree)

   make full use of Vim perminent history

        [sd] ,u  查看文件编辑历史

> 待考察的

1. ####sjl/vitality.vim

2. ####vim-scripts/Conque-Shell

3. ####vim-scripts/YankRing.vim

4. ####vim-scripts/auto.git

5. ####[AndrewRadev/splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim)


## personal defined hotkey
-----------------

    F1   Turn off help
    F2   Set wrap/nowrap
    F3   Numbers Toggle (Turn on/off relative number)
    F4   Number Toggle (Show on/off number, need first turn off relative number)
    F12  Set paste/nopaste (Turn off autoindent etc. for paste)
    Y    Make Y the same action as D, C
    w!!  Save file use sudo
    t    add a line below current line
    T    add a line before current line
    ctrl + j/k/h/l  switch between different split windows

    ,tn  new tab
    ,tc  tab close
    ,to  tab only
    ,te  new tab edit

    ,p   open ctrlp
    ,/   set off search high light
------------------------



Email: ruichaoxue@gmail.com

Github: https://github.com/ruichao-factual
