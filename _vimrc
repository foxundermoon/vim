set nocompatible
behave mswin
"语法高亮
syntax enable
syntax on
"配色方案
"colo desert
"vundle plugins----{{{
"set rtp+=~/vimfiles/bundle/Vundle.vim/ 
set rtp+=$VIM/vimfiles/bundle/Vundle.vim/ 

let path='$VIM/vimfiles/bundle'
call vundle#begin(path) " alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
Plugin 'powerline/powerline'
" All of your Plugins must be added before the following line
Plugin 'bradfitz/goimports'
Plugin 'cespare/vim-golang'
Plugin 'dgryski/vim-godef'
Plugin 'Blackrush/vim-gocode' 
Plugin 'majutsushi/tagbar'
Plugin 'Shougo/neocomplete.vim'
call vundle#end()            " required
"}}}
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
colo FoxDark
nmap <leader>ps :ColorSchemeExplorer<cr>
"滚动条+工具栏+菜单栏-----{{{
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
            \set guioptions-=T <Bar>
            \set guioptions-=m <Bar>
            \set guioptions-=R <Bar>
            \set guioptions-=L <Bar>
            \else <Bar>
            \set guioptions+=T <Bar>
            \set guioptions+=m <Bar>
            \set guioptions+=R <Bar>
            \set guioptions+=L <Bar>
            \endif<CR>

"HIDDEN Toolbar
set guioptions-=T
"HIDDEN Right Scrool bar 'R'	如有垂直分割的窗口，右边的滚动条总是存在。
set guioptions-=R
"'r'	右边的滚动条总是存在
set guioptions-=r
"NO USE Menu
set guioptions-=m
set guioptions-=L
"'l'	左边的滚动条总是存在
set guioptions-=l
"}}}
"status line{{{
set laststatus=2
let g:Powerline_symbols='unicode'
"
"}}}
"常用设置"{{{
set expandtab "用空格代替tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=2
set encoding=utf-8
set helplang=cn
set langmenu=zh_CN.utf-8
set guifont=Courier\ New:h20:cANSI "Courier New日后网上查找修改
set guifontwide=楷体:b:h18:cGB2312
lang mes zh_CN.utf-8
set fileencodings=ucs-bom,utf-8,cp936,gbk,gb18030,big5,latin-1,
            \unicode,utf-32
set fileencoding=utf-8
"改变字体"{{{
if has('gui_running') && has('gui_win32')
    let g:MyFontSize = 20
    function! SetFontSize(size)
        let g:MyFontSize = g:MyFontSize + a:size
        if g:MyFontSize < 10
            let g:VimAlpha = 10
        endif
        if g:MyFontSize > 42
            let g:MyFontSize = 42
        endif
        let l:MyFont = '"Courier_New:h' . g:MyFonfSize . ':cANSI"'
        let l:MyFontW = '"楷体:h' . g:MyFontSize . ':cGB2312'
        "call libcall(g:MyVimLib, 'SetAlpha', g:VimAlpha)
    endfunction
    map <A-F10> <esc>:call SetFontSize(+1)<cr>
    map <S-F10> <esc>:call SetFontSize(-1)<cr>
endif

"放大字体 
function <SID>FontSize_Enlarge() 
    if GetSystem() == "linux" 
        let pattern = '\<\d\+$' 
    elseif GetSystem() == "windows" 
        let pattern = ':h\zs\d\+\ze:' 
    endif 
    let fontsize = matchstr(&gfn, pattern) 
    let cmd = substitute(&gfn, pattern, string(fontsize + 1), 'g') 
    let &gfn=cmd 
    let fontsize = matchstr(&gfw, pattern) 
    let cmd = substitute(&gfw, pattern, string(fontsize + 1), 'g') 
    let &gfw=cmd 
endfunction 
nnoremap <A-+> :call <SID>FontSize_Enlarge()<CR> 

"缩小字体 
function <SID>FontSize_Reduce() 
    if GetSystem() == "linux" 
        let pattern = '\<\d\+$' 
    elseif GetSystem() == "windows" 
        let pattern = ':h\zs\d\+\ze:' 
    endif 
    let fontsize = matchstr(&gfn, pattern) 
    let cmd = substitute(&gfn, pattern, string(fontsize - 1), 'g') 
    let &gfn=cmd 
    let fontsize = matchstr(&gfw, pattern) 
    let cmd = substitute(&gfw, pattern, string(fontsize - 1), 'g') 
    let &gfw=cmd 
endfunction 
nnoremap <A--> :call <SID>FontSize_Reduce()<CR> 



"}}}
source $VIMRUNTIME\delmenu.vim
source $VIMRUNTIME\menu.vim
"解决consle输出乱码
language messages zh_CN.utf-8
set history=500
set nu!
set wrap
"set nowrap
set linebreak
set autochdir
set scrolloff=5
set hlsearch "高亮显示查找结果
set incsearch "增量查找
set autoindent
set showmatch
set smartindent
set nobackup
filetype on
filetype plugin on
filetype indent on
"用空格来开关折叠
set foldenable
"set statusline=[%F]%y%r%m%*%=[Line:%l,Column:%c][%p%%]
set ruler
set foldmethod=marker "manual
nnoremap <space> @=((foldclosed(line('.'))<0)?'zc':'zo')<CR>
nmap <leader><space> f{f}zf%
"设定自动保存折叠
au BufWinLeave *.* silent mkview
au BufWinEnter *.* silent !loadview
"}}}
"------------cue{{{
au BufNewFile,BufRead *.cue setf cue
"}}}
"------------autohotkey{{{
au FileType autohotkey map <F12> :silent !start autohotkey.exe %
au FileType autohotkey set fdo=block
au FileType autohotkey set fdm=manual

au FileType autohotkey set commentstring =;%s
"au FileType autohotkey set comments="n:;"}}}
"python{{{
"set filetype=python
au BufNewFile,BufRead *.py setf python
au FileType python map <F12> :silent !start python.exe %
"set ofu=syntaxcomplete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python runtime! autoload/pythoncomplete.vim
let g:pydiction_location = $VIM . '\data\python\complete-dict'
"default=15
let g:pydiction_menu_height = 20
"==============================python END =====================}}}
"MiniBufExplorer{{{
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:mimiBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1
"}}}
""""""""""""Taglist设置{{{
let Tlist_Ctags_Cmd = 'D:/Server/shell/ctags.exe'
" 不同时显示多个文件的 tag ，只显示当前文件的
let Tlist_Show_One_File=1
" 如果 taglist 窗口是最后一个窗口，则退出 vim
let Tlist_Exit_OnlyWindow=1
"让当前不被编辑的文件的方法列表自动折叠起来 
let Tlist_File_Fold_Auto_Close=1
"把taglist窗口放在屏幕的右侧，缺省在左侧
let Tlist_Use_Right_Window=1
"显示taglist菜单
let Tlist_Show_Menu=1
"启动vim自动打开taglist
"let Tlist_Auto_Open=1  
"-----------------------------------------------------------}}}
"" winManager setting""""""""""""{{{
"设置界面分割
"let g:winManagerWindowLayout ="BufExplorer,FileExplorer|TagList"
let g:winManagerWindowLayout="TagList|NERDTree,TagList|BufExplorer"
"设置winmanager的宽度，默认为25
let g:winManagerWidth = 30
"定义打开关闭winmanager按键
"nmap <F8> :WMToggle<cr>}}}
"NERD Tree{{{
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeBookmarksFile=$VIM.'\Data\NERDTreeBookmarks.txt'
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=31
nnoremap <C-F12> :NERDTreeToggle
"}}}
"php------{{{
au FileType php map <F7> :call CheckPHPSyntax()<CR>
function CheckPHPSyntax()
    let php_check_syntax_cmd='ZendCodeAnalyzer  --disable var-arg-unused'
    let exeFile = expand("%:t")
    let &makeprg = php_check_syntax_cmd
    set errorformat=%f(line\ %l):\ %m
    silent make %
    if len(getqflist())>2
        call setqflist(remove(getqflist(),2,-1))
        copen
    else
        cclose
        normal :
        echohl WarningMsg | echo "Check over,No error!" | echohl None
    endif
endfunction
"}}} 
"vjde---vim java develop enverement{{{
"<Load project>
":Vjdeload filename 
"<Save project as  a new project >
":Vjdeas filename 
"<Save the current project >
":Vjdesave 

"<Setup custom completion function  >
au FileType java set cfu="VjdeCompletionFun"
"<Setup classpath variable: >
let g:vjde_lib_path="lib/j2ee.jar:lib/struts.jar:build/classes"
let g:vjde_java_command='javaw'
let g:vjde_completion_key='<c-l>'
let g:vjde_cfu_java_para=1
let g:vjde_cfu_java_dot=1
let g:vjde_show_paras=1

"}}}
"===================Java======JavaBrowser========={{{
let Javabrowser_Use_Icon = 1
let JavaBrowser_Ctags_Cmd = 'D:/Server/shell/ctags.exe'

"假如编辑的是 java 文件, 那么读入 java.vim 的宏定义
autocmd FileType java source $VIM . '\data\java\java.vim'
"假如编辑的是 java 文件, 那么读入 jcommenter.vim 定义
autocmd FileType java source $VIM . '\data\java\jcommenter.vim'
"在新建 java 文件时, 预先将 java.skel 的内容复制进来
autocmd BufNewFile *.java 0r $VIM . '\data\java\java.skel'
"在读入 java.skel 内容后, 运行 gnp 这个宏命令
autocmd BufNewFile *.java normal gnp

"============= java END=================
"}}} 
"snipMate--+ map ---{{{
let g:snips_author = 'foxUnderMoon'
"mapping
"跳到下一行
imap <C-cr> <esc>A<cr>
"删除当前行光标以前部分
imap <C-bs> <esc>d0i<del>
inoremap <CR> <C-R>=MyEnter()<CR>
function MyEnter()
    let char = getline('.')[col('.') - 1]
    if char == '}' || char == ')' || char == ']' || char == '"' || char == "'"  
        return "\<Right>"
    else
        return "\<CR>"
    endif
endf

function ControlDel()
    let flag=1
    while flag
        let char = getline('.')[col('.') -1]
        if char == ' '
            return "\<del>"
        else
            let flag=0
            return
        endif
    endwhile
endf

"inoremap <CR> <C-R>=TabSkir()<CR>
"function MyEnter()
"let char = getline('.')[col('.') - 1]
"if char == '}' || char == ')' || char == ']' || char == ';'
"return "\<Right>\<CR>"
"else
"return "\<CR>"
"endif
"endf
"imap <C-S-delete> <esc>dda
"========= sketch =========
command! Sketch call ToggleSketch()
"}}} 
" {{{  Win---全屏+透明+置顶-----组件 gvimfullscreen.dll
" F11 全屏切换
" Shift + F11 降低窗口透明度
" Alt + F11 加大窗口透明度
" Contrl + F11 切换Vim是否总在最前面显示
if has('gui_running') && has('gui_win32') && has('libcall')
    let g:MyVimLib = 'gvimfullscreen_x64.dll'
    function! ToggleFullScreen()
        "let s:IsFullScreen = libcallnr("gvimfullscreen.dll", 'ToggleFullScreen', 0)
        "let s:IsFullScreen = libcallnr("gvimfullscreen.dll", 'ToggleFullScreen', 27 + 29*256 + 30*256*256)
        call libcall(g:MyVimLib, 'ToggleFullScreen', 27 + 29*256 + 30*256*256)
    endfunction

    let g:VimAlpha = 225
    function! SetAlpha(alpha)
        let g:VimAlpha = g:VimAlpha + a:alpha
        if g:VimAlpha < 0
            let g:VimAlpha = 0
        endif
        if g:VimAlpha > 255
            let g:VimAlpha = 255
        endif
        call libcall(g:MyVimLib, 'SetAlpha', g:VimAlpha)
    endfunction

    let g:VimTopMost = 0
    function! SwitchVimTopMostMode()
        if g:VimTopMost == 0
            let g:VimTopMost = 1
        else
            let g:VimTopMost = 0
        endif
        call libcall(g:MyVimLib, 'EnableTopMost', g:VimTopMost)
    endfunction
    "映射 Alt+Enter 切换全屏vim
    map <F11> <esc>:call ToggleFullScreen()<cr>
    "切换Vim是否在最前面显示
    nmap <C-F11> <esc>:call SwitchVimTopMostMode()<cr>
    "增加Vim窗体的不透明度
    nmap <A-F11> <esc>:call SetAlpha(5)<cr>
    "增加Vim窗体的透明度
    nmap <S-F11> <esc>:call SetAlpha(-7)<cr>
    "Vim启动的时候自动调用InitVim 以去除Vim的白色边框
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'InitVim', 0)
    " 默认设置透明
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'SetAlpha', g:VimAlpha)
endif
"}}}
""设置缩进和Tab{{{
"Linux 风格缩进
func! LT()
    " 设定缩进时的宽度为8
    set shiftwidth=8
    " 使得按退格键时可以一次删掉8个空格
    set softtabstop=8
    " 设定tab长度为8
    set tabstop=8
    " 不将tab用空格替换
    set noexpandtab
    " 将空格用tab替换
    set smarttab
    " 设定 Vim 来如何进行缩进
    set cinoptions=>s,e0,n0,f0,{0,}0,^0,L-1,:0,=s,l0,b0,gs,hs,p0,t0,is,+s,c3,C0,/0,(2s,us,U0,w0,W0,m0,j1,J1,)20,*70,#0
    " 格式化代码
    exec "%!indent\ -linux"
    exec "normal G"
endfunc
"K&R 风格缩进
func! KR()
    " 设定缩进时的宽度为4
    set shiftwidth=4
    " 使得按退格键时可以一次删掉4个空格
    set softtabstop=4
    " 设定tab长度为8
    set tabstop=8
    " 将tab用空格替换
    set expandtab
    " 设定 Vim 来如何进行缩进
    set cinoptions=>s,e0,n0,f0,{0,}0,^0,L2,:0,=s,l0,b0,gs,hs,p0,t0,is,+s,c3,C0,/0,(2s,us,U0,w0,W0,m0,j1,J1,)20,*70,#0
    " 格式化代码
    exec "%!indent\ -kr"
    exec "normal G"
endfunc
"MS 风格缩进
func! MS()
    " 设定缩进时的宽度为4
    set shiftwidth=4
    " 使得按退格键时可以一次删掉4个空格
    set softtabstop=4
    " 设定tab长度为8
    set tabstop=8
    " 将tab用空格替换
    set expandtab
    " 设定 Vim 来如何进行缩进
    set cinoptions=>s,e0,n0,f0,{0,}0,^0,L2,:s,=s,l0,b0,gs,hs,p0,t0,is,+s,c3,C0,/0,(2s,us,U0,w0,W0,m0,j1,J1,)20,*70,#0
    " 格式化代码
    exec "%!indent\ -kr\ -bl\ -bli0\ -cli4"
    exec "normal G"
endfunc
"GNU 风格缩进
func! GNU()
    " 设定缩进时的宽度为2
    set shiftwidth=2
    " 使得按退格键时可以一次删掉2个空格
    set softtabstop=2
    " 设定tab长度为8
    set tabstop=8
    " 将tab用空格替换
    set expandtab
    " 设定 Vim 来如何进行缩进
    set cinoptions=>s,e0,n0,f0,{s,}0,^0,:0,L-1,=s,l0,b0,gs,hs,p5,t0,is,+s,c3,C0,/0,(2s,us,U0,w0,W0,m0,j1,J1,)20,*70,#0
    " 格式化代码
    exec "%!indent"
    exec "normal G"
endfunc
"Java Eclipse风格缩进
func! JE()
    " 设定缩进时的宽度为4
    set shiftwidth=4
    " 使得按退格键时可以一次删掉4个空格
    set softtabstop=4
    " 设定tab长度为4
    set tabstop=4
    " 不将tab用空格替换
    set noexpandtab
    " 将空格用tab替换
    set smarttab
    " 设定 Vim 来如何进行缩进
    set cinoptions=>s,e0,n0,f0,{0,}0,^0,L-1,:0,=s,l0,b0,gs,hs,p0,t0,is,+s,c3,C0,/0,(2s,us,U0,w0,W0,m0,j1,J1,)20,*70,#0
    " 格式化代码 用4个空格缩进
    exec "%!astyle\ -A2 -I -U -Y -L -p -H -k3 -q"
    " 格式化代码 用tab缩进
    "exec "%!astyle\ -A2 -I -U -Y -T4 -L -p -H -k3 -q"
    exec "normal G"
endfunc
"DS 去行尾空格
func! DS()
    if search('\s\+$', 'pw') > 0
        " 去掉行尾空格
        exec "%s/\\s\\+$//"
    endif
endfunc
"}}}
""编译、调试、运行相关函数{{{
func MySys()
    return 'windows'
endf
"Debug 调试期版本
"编译c源文件{{{2
func! CompileC()
    exec "update"
    set makeprg=gcc\ -g\ -Wall\ -o\ %<\ %
    exec "make"
    set makeprg=make
endfunc

"编译cpp源文件{{{2
func! CompileCpp()
    exec "update"
    set makeprg=g++\ -g\ -Wall\ -o\ %<\ %
    exec "make"
    set makeprg=make
endfunc

"汇编、连接asm源文件{{{2
func! CompileAsm()
    if MySys() == "Windows"
        exec "update"
        set makeprg=nasm\ -f\ elf\ -g\ -F\ stabs\ -o\ %<.o\ %
        exec "make"
        if getqflist() == []
            set makeprg=ld\ -o\ %<.exe\ %<.o
            exec "make"
            set makeprg=make
        endif
    elseif MySys() == "Linux"
        exec "update"
        set makeprg=nasm\ -f\ elf\ -g\ -F\ stabs\ -o\ %<.o\ %
        exec "make"
        if getqflist() == []
            set makeprg=ld\ -o\ %<\ %<.o
            exec "make"
            set makeprg=make
        endif
    endif
endfunc

"编译makefile项目{{{2
func! CompileMake()
    exec "update"
    set makeprg=make
    exec "make\ -f\ %"
endfunc

"Release 最终的释放期版{{{2
"编译C源文件
func! ReleaseCompileC()
    exec "update"
    set makeprg=gcc\ -Wall\ -O2\ -o\ %<\ %
    exec "make"
    set makeprg=make
endfunc

"编译C++源文件{{{2
func! ReleaseCompileCpp()
    exec "update"
    set makeprg=g++\ -Wall\ -O2\ -o\ %<\ %
    exec "make"
    set makeprg=make
endfunc

"编译Java源文件{{{2
func! CompileJava()
    exec "update"
    set makeprg=javac\ -g\ -d\ .\ %
    exec "make"
    set makeprg=make
endfunc

"编译ASM源文件{{{2
func! ReleaseCompileAsm()
    if MySys() == "Windows"
        exec "update"
        set makeprg=nasm\ -f\ elf\ -o\ %<.o\ %
        exec "make"
        if getqflist() == []
            set makeprg=ld\ -o\ %<.exe\ %<.o
            exec "make"
            set makeprg=make
        endif
    elseif MySys() == "Linux"
        exec "update"
        set makeprg=nasm\ -f\ elf\ -o\ %<.o\ %
        exec "make"
        if getqflist() == []
            set makeprg=ld\ -o\ %<\ %<.o
            exec "make"
            set makeprg=make
        endif
    endif
endfunc

"编译makefile项目{{{2
func! ReleaseCompileMake()
    exec "update"
    set makeprg=make
    exec "make\ -f\ %"
endfunc

"编译Java源文件{{{2
func! ReleaseCompileJava()
    exec "update"
    set makeprg=javac\ -d\ .\ %
    exec "make"
    set makeprg=make
endfunc

"编译LaTeX源文件{{{2
func! CompileLaTeX()
    exec "update"
    let compilecmd="!latex"
    let compileflag=""
    exec compilecmd.compileflag." %"
    "exec "w"
    "set makeprg=latex\ %
    "exec "make"
endfunc

"运行c、cpp、asm程序{{{2
func! RunCCppAsm()
    if MySys() == "Windows"
        "exec "!.\\".expand("%<")
        "exec "!start .\\".expand("%<")
        exec "!start cmd /C \".\\".expand("%<")." && pause\""
    elseif MySys() == "Linux"
        exec "!./%<"
    endif
endfunc

"运行java类文件{{{2
func! RunJava()
    if search('^\s*package\s\+.*;$', 'pw') > 0
        "exec "norm gg/package/s+8" | exec "!java " . expand('<cfile>') . ".%<"
        "exec "norm gg/package/s+8" | exec "!start java " . expand('<cfile>') . ".%<"
        exec "norm gg/package/s+8" | exec "!start cmd /C \"java ".expand('<cfile>').".%<"." && pause\""
        exec "norm gg"
    else
        "exec "!java %<"
        "exec "!start java %<"
        "exec "!start cmd /C \"java %< && pause\""
        exec "!start cmd /C \"java %< && pause\""
        "exec "!java %<"
    endif
endfunc

"运行perl源文件{{{2
func! RunPerl()
    exec "update"
    exec "!perl %"
endfunc

"运行python源文件{{{2
func! RunPython()
    exec "update"
    exec "!python %"
endfunc

"运行ruby源文件{{{2
func! RunRuby()
    exec "update"
    exec "!ruby %"
endfunc

"预览htm、html、xhtml结果{{{2
func! RunHtml()
    exec "update"
    if MySys() == "Windows"
        "exec "!start\ cmd\ /C\ \"%\""
        exec "!start\ cmd\ /C\ \"".iconv(expand("%"), "utf-8", "cp936")."\""
    elseif MySys() == "Linux"
        exec "!firefox %"
    endif
endfunc

"预览LaTex结果{{{2
func! RunLaTeX()
    if MySys() == "Windows"
        exec "!yap %<.dvi"
    elseif MySys() == "Linux"
        exec "!xdvi %<"
    endif
endfunc

"根据文件类型自动选择相应的编译函数{{{2
func! CompileCode()
    if &filetype == "c"
        exec "call CompileC()"
    elseif &filetype == "cpp"
        exec "call CompileCpp()"
    elseif &filetype == "asm"
        exec "call CompileAsm()"
    elseif &filetype == "java"
        exec "call CompileJava()"
    elseif &filetype == "tex"
        exec "call CompileLaTeX()"
    elseif &filetype == "plaintex"
        exec "call CompileLaTeX()"
    elseif &filetype == "make"
        exec "call CompileMake()"
    elseif &filetype == "perl"
        exec "call RunPerl()"
    elseif &filetype == "python"
        exec "call RunPython()"
    elseif &filetype == "ruby"
        exec "call RunRuby()"
    endif
endfunc

"根据文件类型自动选择相应的编译函数{{{2
func! ReleaseCompileCode()
    if &filetype == "c"
        exec "call ReleaseCompileC()"
    elseif &filetype == "cpp"
        exec "call ReleaseCompileCpp()"
    elseif &filetype == "asm"
        exec "call ReleaseCompileAsm()"
    elseif &filetype == "java"
        exec "call ReleaseCompileJava()"
    elseif &filetype == "tex"
        exec "call TexToPdf()"
    elseif &filetype == "plaintex"
        exec "call TexToPdf()"
    elseif &filetype == "make"
        exec "call CompileMake()"
    elseif &filetype == "perl"
        exec "call RunPerl()"
    elseif &filetype == "python"
        exec "call RunPython()"
    elseif &filetype == "ruby"
        exec "call RunRuby()"
    endif
endfunc

func! DviToPdf()
    if MySys() == "Windows"
        exec "!dvipdfmx %<"
    elseif MySys() == "Linux"
        exec "!dvipdf %<.dvi"
    endif
endfun

func! TexToPdf()
    exec "w"
    exec "!pdflatex %"
endfun

"根据文件类型自动选择相应的调试器调试{{{2
func! DebugCode()
    if &filetype == "c"
        exec "!gdb %<"
    elseif &filetype == "cpp"
        exec "!gdb %<"
    elseif &filetype == "asm"
        exec "!gdb %<"
    elseif &filetype == "java"
        exec "!jdb %<"
    elseif &filetype == "make"
        exec "normal gg/:<CR>:noh<CR>b"|exec "!gdb " . expand('<cfile>')
    endif
endfunc

"运行可执行文件{{{2
func! RunResult()
    if &filetype == "c"
        exec "call RunCCppAsm()"
    elseif &filetype == "cpp"
        exec "call RunCCppAsm()"
    elseif &filetype == "asm"
        exec "call RunCCppAsm()"
    elseif &filetype == "java"
        exec "call RunJava()"
    elseif &filetype == "tex"
        exec "call RunLaTeX()"
    elseif &filetype == "plaintex"
        exec "call RunLaTeX()"
    elseif &filetype == "perl"
        exec "!perl %"
    elseif &filetype == "python"
        exec "!python %"
    elseif &filetype == "ruby"
        exec "!ruby %"
    elseif &filetype == "make"
        exec "normal gg/:<CR>:noh<CR>b"|exec '!' . expand('<cfile>')
    elseif &filetype == "html"
        exec "call RunHtml()"
    elseif &filetype == "xhtml"
        exec "call RunHtml()"
    elseif &filetype == "css"
        exec "call RunHtml()"
    elseif &filetype == "javascript"
        exec "call RunHtml()"
    endif
endfunc
"}}}
"设置:Run执行的命令，主要用于带参数运行命令{{{
if MySys() == "windows"
    if has("autocmd")
        autocmd filetype make :command! -nargs=? Run :exe "normal gg/:<cr>:noh<cr>b"|:exe "!.\\".expand('<cfile>')." <args>"
        autocmd filetype c,cpp :command! -nargs=? Run :exe "!.\\".expand("%<")." <args>"
        autocmd filetype python  :command! -nargs=? Run :!python % <args>
        autocmd filetype htm,html,xhtml :command! Run :!%
    endif
elseif MySys() == "Linux"
    if has("autocmd")
        autocmd filetype make :command! -nargs=? Run :exe "normal gg/:<cr>:noh<cr>b"|:exe '!./'.expand('<cfile>').<args>
        autocmd filetype c,cpp :command! -nargs=? Run :!./%< <args>
        autocmd filetype python  :command! -nargs=? Run :!python % <args>
        autocmd filetype htm,html,xhtml :command! Run :!firefox %
    endif
endif
if has("autocmd")
    autocmd BufReadPost,BufWritePost *.java call SetJavaRunType()
endif
func! SetJavaRunType()
    if search('^\s*package\s\+.*;$', 'pw') == 0
        :command! -nargs=? Run :!java %< <args>
    else
        :command! -nargs=? Run :exe "normal gg/package/s+8<CR>:noh<CR>"|:exe "!java ".expand('<cfile>').".%< <args>"
    endif
endfunc

"}}}
""设置快捷键{{{
"gh临时关闭高亮显示搜索结果
map gh :noh<CR>:normal v:normal<ESC>
"gy系统剪切板复制
map gy "+y
"gy复制一个单词(从光标所在字符开始)，可配合YouDao词典的剪切板监视功能查词
"map gy "+ye
"gY复制一个单词(到光标所在字符结束)，可配合YouDao词典的剪切板监视功能查词
"map gY my"+yb`y

"Linux缩进风格 g=l
map g=l :call LT()<CR>v<Esc>
"K&R缩进风格 g=k
map g=k :call KR()<CR>v<Esc>
"MS缩进风格 g=m
map g=m :call MS()<CR>v<Esc>
"GNU缩进风格 g=g
map g=g :call GNU()<CR>v<Esc>
"Java Eclipse缩进风格 g=j
map g=j :call JE()<CR>v<Esc>
"DS去掉尾空 g=d
map g=d :call DS()<CR>v<Esc>

func! MAP()
    " gc 保存、编译
    nmap <leader>gc :call CompileCode()<CR>
    " gr 保存、运行
    nmap <leader>gr :call RunResult()<CR>
    " gl 调试
    nmap <leader>gl :call DebugCode()<CR>
    " gw 光标wrap到第一个错误或警告
    nmap <leader>gw :cfirst<CR>
    " gp 光标跳到上一个错误或警告
    nmap <leader>gp :cprevious<CR>
    " gn 光标跳到下一个错误或警告
    nmap <leader>gn :cnext<CR>
    " gs 释放
    nmap <leader>gs :call ReleaseCompileCode()<CR>
endfunc

"编辑一个文件时，直接用相应的键盘映射
if has("autocmd")
    autocmd FileType c,cpp,make,java call MAP()
    autocmd FileType python,perl,ruby,php call MAP()
    autocmd FileType htm,html,xhtml,xml call MAP()
    autocmd FileType vim,tex,latex call MAP()
endif

"一些不错的映射转换语法（如果在一个文件中混合了不同语言时有用）
nmap <leader>fh :set filetype=xhtml<CR>
nmap <leader>fc :set filetype=css<CR>
nmap <leader>fj :set filetype=javascript<CR>
nmap <leader>fp :set filetype=php<CR>

"将本文件同步到需要同步的文件夹里
":command SYNC :w! G:/TDDownload/.vimrc |:w! G:/百度云/我的配置/vimrc |:update
"窗口分割时,进行切换的按键热键需要连接两次,比如从下方窗口移动
"光标到上方窗口,需要<c-w>k,非常麻烦,现在重映射为<c-k>,切换的
"时候会变得非常方便.
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
"}}}
"设置dictionary目录{{{
if MySys() == "Windows"
    set dictionary=$Vim\dict\words
elseif MySys() == "Linux"
    set dictionary=/usr/share/dict/words
endif
"}}}
""插件的设置{{{
"---------- Taglist.vim [显示程序中的宏定义、变量、函数、类] ----------
let Tlist_GainFocus_On_ToggleOpen=0
let Tlist_WinWidth=30
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Enable_Fold_Column=0
let Tlist_Inc_Winwidth=0
"}}}
"---------- WinManager.vim [窗口管理] ----------{{{
"let g:winManagerWindowLayout='FileExplorer|TagList'

"--------------------Cscope设置--------------------
"if filereadable("cscope.out")
"cs add cscope.out
"elseif $CSCOPE_DB != ""
"cs add $CSCOPE_DB
"endif
"--------------------PowerLine设置--------------------
"set t_Co=256 
"set guifont=PowerlineSymbols\ for\ Powerline 
"let g:Powerline_symbols = 'fancy' 

"--------------------bufexplore设置--------------------
" 打开Buffer Explore
"map gb :BufExplorer<CR>
" gbp 前一个Buffer
"map gbp :bprevious<CR>
" gbn 后一个Buffer
"map gbn :bnext<CR>
"关闭缓冲区
"nnoremap g. :bd!<CR>
" Buffers操作快捷方式,模仿Tab操作的gt，gT
"nnoremap gb :next<CR>
"nnoremap gB :previous<CR>

"------------------NERD_commenter设置------------------
"map <C-C> <plug>NERDCommenterToggle

"------------------ZenCoding设置------------------
"let g:user_zen_leader_key = '<C-_>'
"}}}
""插件的快捷键设置{{{
nmap <leader>mT :NERDTreeToggle<CR>
nmap <leader>mt :TlistToggle<CR>
nmap <leader>mm :WMToggle<CR>
"}}}
"go lang ide{{{
autocmd BufWritePre *.go :Fmt
" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
"}}}
"neo -complete----实时补全插件{{{
""Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
"}}}
