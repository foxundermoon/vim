"neobundle plugins----{{{2
" neobund head {{{3
"set rtp+=~/vimfiles/bundle/Vundle.vim/ 
if !1 | finish | endif
filetype off
if has('vim_starting')
    if &compatible
        set nocompatible               " Be iMproved
    endif

    " Required:
    "set runtimepath+=~/.vim/bundle/neobundle.vim/
    set rtp+=$VIM/vimfiles/bundle/neobundle.vim/ 
endif

let pluginPath='$VIM/vimfiles/bundle'
"call vundle#begin(path) " alternatively, pass a path where Vundle should install plugins
"}}}
"call vundle#begin('~/some/path/here')
call neobundle#begin(pluginPath)
NeoBundle 'Shougo/neobundle.vim' 
"NeoBundle 'gmarik/Vundle.vim'
NeoBundle 'L9'
NeoBundle 'Conque-Shell'
NeoBundle 'paredit.vim'  "Paredit Mode: Structured Editing of Lisp S-expressions
NeoBundle 'mattn/lisper-vim' "provide lisp environments 
NeoBundle 'amdt/vim-niji'   " A rainbow parentheses plugin for Clojure, Common Lisp & Scheme. Configurable & well-documented.
"NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
NeoBundle 'mattn/webapi-vim' " request the web http ssl  etc...
"NeoBundle 'Lokaltog/vim-powerline'  "beautiful status line
"NeoBundle 'powerline/powerline', {'rtp':'powerline/powerline/bindings/vim/'}
"NeoBundle 'bling/vim-airline'
"NeoBundle 'bradfitz/goimports'
"undle/vimpro use the  https://github.com/josharian/impl
NeoBundle 'rhysd/vim-go-impl'  
"NeoBundle 'cespare/vim-golang'
NeoBundle 'dgryski/vim-godef'
NeoBundle 'Blackrush/vim-gocode' 
"NeoBundle 'nsf/gocode'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'zhchang/quick_file'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'ianva/vim-youdao-translater'
NeoBundle 'DirDiff.vim'
NeoBundle 'DrawIt'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
"NeoBundle 'SirVer/ultisnips'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neoinclude.vim'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/context_filetype.vim'
NeoBundle 'ujihisa/neco-look'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'wincent/command-t'
NeoBundle 'gregsexton/gitv'
NeoBundle 'chase/vim-ansible-yaml'
NeoBundle 't9md/vim-choosewin'
"NeoBundle 'abijr/colorpicker'
NeoBundle 'MattesGroeger/vim-bookmarks'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'chrisbra/csv.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'bogado/file-line'
NeoBundle 'fatih/vim-go'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'leshill/vim-json'
NeoBundle 'groenewege/vim-less'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'godlygeek/tabular'
NeoBundle 'mattn/gist-vim' 
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'foxundermoon/snip'
call neobundle#end()            " required
filetype plugin indent on
NeoBundleCheck
"}}}
"��ʼ��{{{2
let $LANG = 'en'
set langmenu=en
"set autochdir
source $VIMRUNTIME/vimrc_example.vim 
"behave mswin
"�﷨����
syntax enable
syntax on
"��ɫ����
"colo desert
set encoding=utf-8
set expandtab "�ÿո����tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=2
set helplang=cn
set guifont=DejaVu_Sans_Mono_for_Powerline:h14:cDEFAULT "Courier New�պ����ϲ����޸�
"set guifont=Innovation:h20:cANSI "Courier New�պ����ϲ����޸�
"set guifontwide=Adobe\ Caslon\ Pro,Wingdings\ 3:h16:cGB2312
set guifontwide=DejaVu_Sans_Mono_for_Powerline:h14:cDEFAULT
"lang mes en_US.utf-8
language messages en_US.utf-8
set history=500
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gbk,gb18030,big5,latin-1,unicode,utf-32
"language messages utf-8 
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
colo FoxDark
"�ı�����"{{{2
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
        let l:MyFontW = '"����:h' . g:MyFontSize . ':cGB2312'
        "call libcall(g:MyVimLib, 'SetAlpha', g:VimAlpha)
    endfunction
    map <A-F10> <esc>:call SetFontSize(+1)<cr>
    map <S-F10> <esc>:call SetFontSize(-1)<cr>
endif
breakadd func FontSize_Reduce
breakadd func FontSize_Enlarge
"�Ŵ����� 
function <SID>FontSize_Enlarge() 
    if has("linux")
        let pattern = '\<\d\+$' 
    elseif has("windows")
        let pattern = ':h\zs\d\+\ze:' 
    endif 
    let fontsize = matchstr(&gfn, pattern) 
    let cmd = substitute(&gfn, pattern, string(fontsize + 1), 'g') 
    let &gfn=cmd 
    let fontsize = matchstr(&gfw, pattern) 
    let cmd = substitute(&gfw, pattern, string(fontsize + 1), 'g') 
    let &gfw=cmd 
endfunction 
nnoremap <C-kPlus> :call <SID>FontSize_Enlarge()<CR> 

"��С���� 
function <SID>FontSize_Reduce() 
    if has("linux")
        let pattern = '\<\d\+$' 
    elseif has("windows")
        let pattern = ':h\zs\d\+\ze:' 
    endif 
    let fontsize = matchstr(&gfn, pattern) 
    let cmd = substitute(&gfn, pattern, string(fontsize - 1), 'g') 
    let &gfn=cmd
    let fontsize = matchstr(&gfw, pattern) 
    let cmd = substitute(&gfw, pattern, string(fontsize - 1), 'g') 
    let &gfw=cmd 
endfunction 
nnoremap <C-kMinus> :call <SID>FontSize_Reduce()<CR> 



"}}}
"���consle�������
set nu!
set wrap
"set nowrap
set linebreak
"set autochdir
set scrolloff=5
set hlsearch "������ʾ���ҽ��
set incsearch "��������
set autoindent
set showmatch
set smartindent
set nobackup
"�ÿո��������۵�
set foldenable
"set statusline=[%F]%y%r%m%*%=[Line:%l,Column:%c][%p%%]
set ruler
set foldmethod=marker "manual
"�趨�Զ������۵�
au BufWinLeave *.* silent mkview
au BufWinEnter *.* silent !loadview
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"}}}��ʼ������
"key map{{{2  
command! -n=0 -bar Evimrc :e $vim/_vimrc
"vnoremap <C-c> "*y
"vnoremap <C-v> "*p
"vnoremap <C-x> "*d
"vnoremap <C-s> :w<CR>
nnoremap <S-w> @=(Ydc)<CR>
nmap <leader>ps :call ColorSchemeExplorer<cr>
nnoremap <space> @=((foldclosed(line('.'))<0)?'zc':'zo')<CR>
nmap <leader><space> zf%
nnoremap <Esc> :execute "noh"<CR>
"������һ��
inoremap <S-cr> <esc>A<C-cr>
nnoremap <S-cr> <esc>A<C-cr>
snoremap <S-CR> <esc>A<C-cr>
"imap <C-s> :<esc>
nnoremap <leader>w :w<cr>
nnoremap <leader>1w :w!<cr>
nnoremap <Leader>fg :setf go <CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>1q :q!<CR>
"ɾ����ǰ�й����ǰ����
"imap <C-bs> <esc>d0i<del>
"inoremap <CR> <C-R>=MyEnter()
"neocomplete key map
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
inoremap <expr><silent><CR> <SID>my_cr_function('i')
snoremap <expr><silent><CR> <SID>my_cr_function('s')
"smap <expr><silent><CR> <SID>s_my_cr_function()
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
inoremap <expr><Esc> <SID>my_esc_function('i') 
inoremap <expr><Up> <SID>my_up_function()
inoremap <expr><Down> <SID>my_down_function()
inoremap <expr> <TAB> <SID>my_tab_function('i')
snoremap <expr> <TAB> <SID>my_tab_function('s')
inoremap <expr><silent> <C-TAB> <SID>my_control_tap_function('i')
snoremap <expr><silent><C-TAB> <SID>my_control_tap_function('s')
inoremap <expr><silent><M-CR> <SID>my_alt_cr_function('i')
nnoremap <expr><silent><M-CR> <SID>my_alt_cr_function('n')
inoremap <expr><silent><C-CR> <SID>my_control_cr_function('i')
nnoremap <expr><silent><C-CR> <SID>my_control_cr_function('n')
inoremap <expr><silent><S-CR> <SID>my_shift_cr_function('i')
nnoremap <expr><silent><S-CR> <SID>my_shift_cr_function('n')

"{{{4 key functions
"{{{5 <S-CR>
function! s:my_shift_cr_function(mod)
    if a:mod=='i'
        if pumvisible()
            return neocomplete#cancel_popup() . "\<esc>". "\<A>" . "\<CR>"
        else
            return "\<esc>" . "\<A>" . "\<CR>"
        endif
    elseif a:mod=='n'
        return "\<A>" . "\<cr>"
    endif
endfunction
"{{{5 <A-CR>
function! s:my_alt_cr_function(mod)
    if a:mod=='i'
        return "\<A-cr>"
    elseif a:mod=='n'
        return "\<A-cr>"
    endif
endfunction
"{{{5 <CR>
function! s:my_cr_function(mod)
    if a:mod == 'i'
    "return neocomplete#close_popup() . "\<CR>"
    " For no inserting <CR> key.
    if pumvisible()
        "return neocomplete#close_popup() . "\<CR>"
        if neosnippet#expandable()
            return neocomplete#close_popup() . neosnippet#mappings#expand_impl()
            "call neosnippet#mappings#expand_or_jump_impl()
        else
            return  neocomplete#close_popup()
        endif
    elseif neosnippet#jumpable()
        return neosnippet#mappings#jump_impl()
        "call neosnippet#mappings#expand_or_jump_impl()
    elseif neosnippet#expandable()
        return neosnippet#mappings#expand_impl()
    else
        return "\<CR>"
    endif
elseif a:mo=='s'
    if neosnippet#expandable()
        return neosnippet#mappings#expand_impl()
    else
        return "\<CR>"
    endif
endif
    "return pumvisible() ? neocomplete#close_popup() : 
    "\ "\<CR>"
endfunction
"{{{5 <C-CR>
function! s:my_control_cr_function(mod)
    if a:mod =='i'
        if neosnippet#jumpable()
            return neosnippet#mappings#jump_impl()
        else
            return "\<C-cr>"
        endif
    elseif  a:mod =='n'
        return "\<C-cr>"
    endif
endfunction
"{{{5
function! s:my_shift_cr_function(mod)
    if a:mod =='i'
        if pumvisible()
            return neocomplete#close_popup() . "\<esc>" . "\<a>" . "\<cr>"
        else
            return  "\<esc>" . "\<a>" . "\<cr>"
        endif
    elseif a:mod =='n'
        return "\<a>" . "\<CR>"
    endif
endfunction
"{{{5 <TAB>
function! s:my_tab_function(mod)
    if a:mod == 'i'
        let char = getline('.')[col('.') - 1]
        if pumvisible()
            return "\<C-n>"  
            "if neosnippet#expandable_or_jumpable()
            "return "\<C-n>"  
            "" "\<Plug>(neosnippet_expand_or_jump)"
            ""call neosnippet#mappings#expand_or_jump_impl()
            "else
            "return neocomplete#close_popup()
            "endif
            "elseif neosnippet#jumpable()
            "return neosnippet#mappings#jump_impl()
            "elseif char == '}' || char == ')' || char == ']' || char == '"' || char == "'"  
            "return "\<Right>"
        elseif <SID>check_back_space()
            return "\<TAB>"
        else
            return neocomplete#start_manual_complete()
        endif
    elseif a:mod == 's'
        if neosnippet#jumpable()
            return neosnippet#mappings#jump_impl()
        endif
    endif
endfunction
"{{{5 <C-TAP>
function! s:my_control_tap_function(mod) 
    if a:mod == 'i'
        if neosnippet#jumpable()
            return neosnippet#mappings#jump_impl()
        else
            return ""
        endif
    elseif a:mod =='n'
        return "\<C-TAP>"
    elseif a:mod == 's'
        if neosnippet#jumpable()
            return neosnippet#mappings#jump_impl()
        else
            return ""
        endif
    endif
endfunction
"{{{5 check_back_space
function! s:check_back_space() 
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction
"{{{5 <Esc>
function! s:my_esc_function(mod)
    if a:mod=='i'
        if pumvisible()
            return neocomplete#cancel_popup()
        else
            return "\<Esc>"
        endif
    if a:mod=='n'
        return "\<Esc>"
    endif
endfunction
"{{{5 <Up>
function! s:my_up_function()
    if pumvisible()
        return "\<C-p>"
    else
        return "\<Up>"
    endif
endfunction
"{{{5 <Down>
function! s:my_down_function()
    if pumvisible()
        return "\<C-n>"
    else
        return "\<Down>"
endfunction
"{{{5 MyEnter
function MyEnter()
    let char = getline('.')[col('.') - 1]
    if char == '}' || char == ')' || char == ']' || char == '"' || char == "'"  
        return "\<Right>"
    else
        return "\<CR>"
    endif
endf
"{{{5 ControlDel
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
endfunction
"������+������+�˵���-----{{{2
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
"HIDDEN Right Scrool bar 'R'	���д�ֱ�ָ�Ĵ��ڣ��ұߵĹ��������Ǵ��ڡ�
set guioptions-=R
"'r'	�ұߵĹ��������Ǵ���
set guioptions-=r
"NO USE Menu
set guioptions-=m
set guioptions-=L
"'l'	��ߵĹ��������Ǵ���
set guioptions-=l
"}}}
"cue"{{{2
au BufNewFile,BufRead *.cue setf cue
"}}}
"status line{{{2
set laststatus=2
"let g:Powerline_dividers_override = ['>>', '>', '<<', '<']
"let g:Powerline_symbols='unicode'
set t_Co=256 
let g:Powerline_symbols = 'fancy' 
"
"}}}
"autohotkey{{{2
au FileType autohotkey map <F12> :silent !start autohotkey.exe %
au FileType autohotkey set fdo=block
au FileType autohotkey set fdm=manual

au FileType autohotkey set commentstring =;%s
"au FileType autohotkey set comments="n:;"}}}
"python{{{2
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
"MiniBufExplorer{{{2
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:mimiBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1
"}}}
"Taglist����{{{2
let Tlist_Ctags_Cmd = $VIMRUNTIME . '/ctags.exe'
" ��ͬʱ��ʾ����ļ��� tag ��ֻ��ʾ��ǰ�ļ���
let Tlist_Show_One_File=1
" ��� taglist ���������һ�����ڣ����˳� vim
let Tlist_Exit_OnlyWindow=1
"�õ�ǰ�����༭���ļ��ķ����б��Զ��۵����� 
let Tlist_File_Fold_Auto_Close=1
"��taglist���ڷ�����Ļ���Ҳ࣬ȱʡ�����
let Tlist_Use_Right_Window=1
"��ʾtaglist�˵�
let Tlist_Show_Menu=1
"����vim�Զ���taglist
let Tlist_Auto_Open=1  
"-----------------------------------------------------------}}}
"" winManager setting{{{2
"���ý���ָ�
"let g:winManagerWindowLayout ="BufExplorer,FileExplorer|TagList"
let g:winManagerWindowLayout="TagList|NERDTree,TagList|BufExplorer"
"����winmanager�Ŀ�ȣ�Ĭ��Ϊ25
let g:winManagerWidth = 30
"����򿪹ر�winmanager����
"nmap <F8> :WMToggle<cr>}}}
"NERD Tree{{{2
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
nnoremap <C-F12> :NERDTreeToggle<CR>
"}}}
"vjde---vim java develop enverement{{{2
"<Load project>
":Vjdeload filename 
"<Save project as  a new project >
":Vjdeas filename 
"<Save the current project >
":Vjdesave 

"<Setup custom completion function  >
"au FileType java set cfu="VjdeCompletionFun"
"<Setup classpath variable: >
"let g:vjde_lib_path="lib/j2ee.jar:lib/struts.jar:build/classes"
"let g:vjde_java_command='javaw'
"let g:vjde_completion_key='<c-l>'
"let g:vjde_cfu_java_para=1
"let g:vjde_cfu_java_dot=1
"let g:vjde_show_paras=1

"}}}
"Java======JavaBrowser{{{2
let Javabrowser_Use_Icon = 1
let JavaBrowser_Ctags_Cmd = $VIMRUNTIME . '/ctags.exe'

"����༭���� java �ļ�, ��ô���� java.vim �ĺ궨��
"autocmd FileType java source $VIM . '\data\java\java.vim'
"����༭���� java �ļ�, ��ô���� jcommenter.vim ����
"autocmd FileType java source $VIM . '\data\java\jcommenter.vim'
"���½� java �ļ�ʱ, Ԥ�Ƚ� java.skel �����ݸ��ƽ���
"autocmd BufNewFile *.java 0r $VIM . '\data\java\java.skel'
"�ڶ��� java.skel ���ݺ�, ���� gnp ���������
"autocmd BufNewFile *.java normal gnp

"============= java END=================
"}}} 
"snipMate {{{2
"let g:snips_author = 'foxUnderMoon'
"mapping
"========= sketch =========
command! Sketch call ToggleSketch()
"}}} 
" {{{  Win---ȫ��+͸��+�ö�----��� gvimfullscreen.dll
" F11 ȫ���л�
" Shift + F11 ���ʹ���͸����
" Alt + F11 �Ӵ󴰿�͸����
" Contrl + F11 �л�Vim�Ƿ�������ǰ����ʾ
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
    "ӳ�� Alt+Enter �л�ȫ��vim
    nmap <F11> <esc>:call ToggleFullScreen()<cr>
    nmap <F5> <esc>:call ToggleFullScreen()<cr>
    nmap <A-cr> <esc>:call ToggleFullScreen()<cr>
    "�л�Vim�Ƿ�����ǰ����ʾ
    nmap <C-F11> <esc>:call SwitchVimTopMostMode()<cr>
    "����Vim����Ĳ�͸����
    nmap <A-F11> <esc>:call SetAlpha(5)<cr>
    "����Vim�����͸����
    nmap <S-F11> <esc>:call SetAlpha(-7)<cr>
    "Vim������ʱ���Զ�����InitVim ��ȥ��Vim�İ�ɫ�߿�
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'InitVim', 0)
    " Ĭ������͸��
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'SetAlpha', g:VimAlpha)
endif
"}}}
"youdao{{{2
vnoremap <silent> <C-T> <Esc>:Ydv<CR> 
nnoremap <silent> <C-T> <Esc>:Ydc<CR> 
noremap <leader>yd :Yde<CR>
"}}} 
"������ �ж���{{{2
map <Leader>ch :call SetColorColumn()<CR>
function! SetColorColumn()
    let col_num = virtcol(".")
    let cc_list = split(&cc, ',')
    if count(cc_list, string(col_num)) <= 0
        execute "set cc+=".col_num
    else
        execute "set cc-=".col_num
    endif
endfunction
"}}}
""����������Tab{{{2
"Linux �������
func! LT()
    " �趨����ʱ�Ŀ��Ϊ8
    set shiftwidth=8
    " ʹ�ð��˸��ʱ����һ��ɾ��8���ո�
    set softtabstop=8
    " �趨tab����Ϊ8
    set tabstop=8
    " ����tab�ÿո��滻
    set noexpandtab
    " ���ո���tab�滻
    set smarttab
    " �趨 Vim ����ν�������
    set cinoptions=>s,e0,n0,f0,{0,}0,^0,L-1,:0,=s,l0,b0,gs,hs,p0,t0,is,+s,c3,C0,/0,(2s,us,U0,w0,W0,m0,j1,J1,)20,*70,#0
    " ��ʽ������
    exec "%!indent\ -linux"
    exec "normal G"
endfunc
"K&R �������
func! KR()
    " �趨����ʱ�Ŀ��Ϊ4
    set shiftwidth=4
    " ʹ�ð��˸��ʱ����һ��ɾ��4���ո�
    set softtabstop=4
    " �趨tab����Ϊ8
    set tabstop=8
    " ��tab�ÿո��滻
    set expandtab
    " �趨 Vim ����ν�������
    set cinoptions=>s,e0,n0,f0,{0,}0,^0,L2,:0,=s,l0,b0,gs,hs,p0,t0,is,+s,c3,C0,/0,(2s,us,U0,w0,W0,m0,j1,J1,)20,*70,#0
    " ��ʽ������
    exec "%!indent\ -kr"
    exec "normal G"
endfunc
"MS �������
func! MS()
    " �趨����ʱ�Ŀ��Ϊ4
    set shiftwidth=4
    " ʹ�ð��˸��ʱ����һ��ɾ��4���ո�
    set softtabstop=4
    " �趨tab����Ϊ8
    set tabstop=8
    " ��tab�ÿո��滻
    set expandtab
    " �趨 Vim ����ν�������
    set cinoptions=>s,e0,n0,f0,{0,}0,^0,L2,:s,=s,l0,b0,gs,hs,p0,t0,is,+s,c3,C0,/0,(2s,us,U0,w0,W0,m0,j1,J1,)20,*70,#0
    " ��ʽ������
    exec "%!indent\ -kr\ -bl\ -bli0\ -cli4"
    exec "normal G"
endfunc
"GNU �������
func! GNU()
    " �趨����ʱ�Ŀ��Ϊ2
    set shiftwidth=2
    " ʹ�ð��˸��ʱ����һ��ɾ��2���ո�
    set softtabstop=2
    " �趨tab����Ϊ8
    set tabstop=8
    " ��tab�ÿո��滻
    set expandtab
    " �趨 Vim ����ν�������
    set cinoptions=>s,e0,n0,f0,{s,}0,^0,:0,L-1,=s,l0,b0,gs,hs,p5,t0,is,+s,c3,C0,/0,(2s,us,U0,w0,W0,m0,j1,J1,)20,*70,#0
    " ��ʽ������
    exec "%!indent"
    exec "normal G"
endfunc
"Java Eclipse�������
func! JE()
    " �趨����ʱ�Ŀ��Ϊ4
    set shiftwidth=4
    " ʹ�ð��˸��ʱ����һ��ɾ��4���ո�
    set softtabstop=4
    " �趨tab����Ϊ4
    set tabstop=4
    " ����tab�ÿո��滻
    set noexpandtab
    " ���ո���tab�滻
    set smarttab
    " �趨 Vim ����ν�������
    set cinoptions=>s,e0,n0,f0,{0,}0,^0,L-1,:0,=s,l0,b0,gs,hs,p0,t0,is,+s,c3,C0,/0,(2s,us,U0,w0,W0,m0,j1,J1,)20,*70,#0
    " ��ʽ������ ��4���ո�����
    exec "%!astyle\ -A2 -I -U -Y -L -p -H -k3 -q"
    " ��ʽ������ ��tab����
    "exec "%!astyle\ -A2 -I -U -Y -T4 -L -p -H -k3 -q"
    exec "normal G"
endfunc
"DS ȥ��β�ո�
func! DS()
    if search('\s\+$', 'pw') > 0
        " ȥ����β�ո�
        exec "%s/\\s\\+$//"
    endif
endfunc
"}}}
""���롢���ԡ�������غ���{{{2
func MySys()
    return 'windows'
endf
"Debug �����ڰ汾
"����cԴ�ļ�{{{3
func! CompileC()
    exec "update"
    set makeprg=gcc\ -g\ -Wall\ -o\ %<\ %
    exec "make"
    set makeprg=make
endfunc

"����cppԴ�ļ�{{{3
func! CompileCpp()
    exec "update"
    set makeprg=g++\ -g\ -Wall\ -o\ %<\ %
    exec "make"
    set makeprg=make
endfunc

"��ࡢ����asmԴ�ļ�{{{3
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

"����makefile��Ŀ{{{3 
func! CompileMake()
    exec "update"
    set makeprg=make
    exec "make\ -f\ %"
endfunc

"Release ���յ��ͷ��ڰ�{{{3
"����CԴ�ļ�
func! ReleaseCompileC()
    exec "update"
    set makeprg=gcc\ -Wall\ -O2\ -o\ %<\ %
    exec "make"
    set makeprg=make
endfunc

"����C++Դ�ļ�{{{3
func! ReleaseCompileCpp()
    exec "update"
    set makeprg=g++\ -Wall\ -O2\ -o\ %<\ %
    exec "make"
    set makeprg=make
endfunc

"����JavaԴ�ļ�{{{3
func! CompileJava()
    exec "update"
    set makeprg=javac\ -g\ -d\ .\ %
    exec "make"
    set makeprg=make
endfunc

"����ASMԴ�ļ�{{{3
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

"����makefile��Ŀ{{{3
func! ReleaseCompileMake()
    exec "update"
    set makeprg=make
    exec "make\ -f\ %"
endfunc

"����JavaԴ�ļ�{{{3
func! ReleaseCompileJava()
    exec "update"
    set makeprg=javac\ -d\ .\ %
    exec "make"
    set makeprg=make
endfunc

"����LaTeXԴ�ļ�{{{3
func! CompileLaTeX()
    exec "update"
    let compilecmd="!latex"
    let compileflag=""
    exec compilecmd.compileflag." %"
    "exec "w"
    "set makeprg=latex\ %
    "exec "make"
endfunc

"����c��cpp��asm����{{{3
func! RunCCppAsm()
    if MySys() == "Windows"
        "exec "!.\\".expand("%<")
        "exec "!start .\\".expand("%<")
        exec "!start cmd /C \".\\".expand("%<")." && pause\""
    elseif MySys() == "Linux"
        exec "!./%<"
    endif
endfunc

"����java���ļ�{{{3
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

"����perlԴ�ļ�{{{3
func! RunPerl()
    exec "update"
    exec "!perl %"
endfunc

"����pythonԴ�ļ�{{{3
func! RunPython()
    exec "update"
    exec "!python %"
endfunc

"����rubyԴ�ļ�{{{3
func! RunRuby()
    exec "update"
    exec "!ruby %"
endfunc

"Ԥ��htm��html��xhtml���{{{3
func! RunHtml()
    exec "update"
    if MySys() == "Windows"
        "exec "!start\ cmd\ /C\ \"%\""
        exec "!start\ cmd\ /C\ \"".iconv(expand("%"), "utf-8", "cp936")."\""
    elseif MySys() == "Linux"
        exec "!firefox %"
    endif
endfunc

"Ԥ��LaTex���{{{3
func! RunLaTeX()
    if MySys() == "Windows"
        exec "!yap %<.dvi"
    elseif MySys() == "Linux"
        exec "!xdvi %<"
    endif
endfunc

"�����ļ������Զ�ѡ����Ӧ�ı��뺯��{{{3
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

"�����ļ������Զ�ѡ����Ӧ�ı��뺯��{{{3
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

"�����ļ������Զ�ѡ����Ӧ�ĵ���������{{{3
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

"���п�ִ���ļ�{{{3
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
"����:Runִ�е������Ҫ���ڴ�������������{{{3
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
""���ÿ�ݼ�{{{2
"gh��ʱ�رո�����ʾ�������
map gh :noh<CR>:normal v:normal<ESC>
"gyϵͳ���а帴��
map gy "+y
"gy����һ������(�ӹ�������ַ���ʼ)�������YouDao�ʵ�ļ��а���ӹ��ܲ��
"map gy "+ye
"gY����һ������(����������ַ�����)�������YouDao�ʵ�ļ��а���ӹ��ܲ��
"map gY my"+yb`y
nnoremap gc "+d
nnoremap gp "+p

"Linux������� g=l
map g=l :call LT()<CR>v<Esc>
"K&R������� g=k
map g=k :call KR()<CR>v<Esc>
"MS������� g=m
map g=m :call MS()<CR>v<Esc>
"GNU������� g=g
map g=g :call GNU()<CR>v<Esc>
"Java Eclipse������� g=j
map g=j :call JE()<CR>v<Esc>
"DSȥ��β�� g=d
map g=d :call DS()<CR>v<Esc>

func! MAP()
    " gc ���桢����
    nmap <leader>gc :call CompileCode()<CR>
    " gr ���桢����
    nmap <leader>gr :call RunResult()<CR>
    " gl ����
    nmap <leader>gl :call DebugCode()<CR>
    " gw ���wrap����һ������򾯸�
    nmap <leader>gw :cfirst<CR>
    " gp ���������һ������򾯸�
    nmap <leader>gp :cprevious<CR>
    " gn ���������һ������򾯸�
    nmap <leader>gn :cnext<CR>
    " gs �ͷ�
    nmap <leader>gs :call ReleaseCompileCode()<CR>
endfunc

"�༭һ���ļ�ʱ��ֱ������Ӧ�ļ���ӳ��
if has("autocmd")
    autocmd FileType c,cpp,make,java call MAP()
    autocmd FileType python,perl,ruby,php call MAP()
    autocmd FileType htm,html,xhtml,xml call MAP()
    autocmd FileType vim,tex,latex call MAP()
endif

"һЩ�����ӳ��ת���﷨�������һ���ļ��л���˲�ͬ����ʱ���ã�
nmap <leader>fh :set filetype=xhtml<CR>
nmap <leader>fc :set filetype=css<CR>
nmap <leader>fj :set filetype=javascript<CR>
nmap <leader>fp :set filetype=php<CR>

"�����ļ�ͬ������Ҫͬ�����ļ�����
":command SYNC :w! G:/TDDownload/.vimrc |:w! G:/�ٶ���/�ҵ�����/vimrc |:update
"���ڷָ�ʱ,�����л��İ����ȼ���Ҫ��������,������·������ƶ�
"��굽�Ϸ�����,��Ҫ<c-w>k,�ǳ��鷳,������ӳ��Ϊ<c-k>,�л���
"ʱ����÷ǳ�����.
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
"}}}
"����dictionaryĿ¼{{{
if MySys() == "Windows"
    set dictionary=$Vim\dict\words
elseif MySys() == "Linux"
    set dictionary=/usr/share/dict/words
endif
"}}}
""���������{{{
"---------- Taglist.vim [��ʾ�����еĺ궨�塢��������������] ----------
let Tlist_GainFocus_On_ToggleOpen=0
let Tlist_WinWidth=30
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Enable_Fold_Column=0
let Tlist_Inc_Winwidth=0
"}}}
"---------- WinManager.vim [���ڹ���] ----------{{{
"let g:winManagerWindowLayout='FileExplorer|TagList'

"--------------------Cscope����--------------------
"if filereadable("cscope.out")
"cs add cscope.out
"elseif $CSCOPE_DB != ""
"cs add $CSCOPE_DB
"endif
"--------------------PowerLine����--------------------
"set t_Co=256 
"set guifont=PowerlineSymbols\ for\ Powerline 
"let g:Powerline_symbols = 'fancy' 

"--------------------bufexplore����--------------------
" ��Buffer Explore
"map gb :BufExplorer<CR>
" gbp ǰһ��Buffer
"map gbp :bprevious<CR>
" gbn ��һ��Buffer
"map gbn :bnext<CR>
"�رջ�����
"nnoremap g. :bd!<CR>
" Buffers������ݷ�ʽ,ģ��Tab������gt��gT
"nnoremap gb :next<CR>
"nnoremap gB :previous<CR>

"------------------NERD_commenter����------------------
"map <C-C> <plug>NERDCommenterToggle

"------------------ZenCoding����------------------
"let g:user_zen_leader_key = '<C-_>'
"}}}
""����Ŀ�ݼ�����{{{
nmap <leader>mT :NERDTreeToggle<CR>
"nmap <leader>mt :TlistToggle<CR>
"nmap <leader>mm :WMToggle<CR>
"}}}
"go lang ide{{{2
"
"
let g:go_play_open_browser = 0
let g:go_fmt_fail_silently = 1
"let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
"let g:go_bin_path = expand("~/.gotools")

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

autocmd BufWritePre *.go :Fmt
autocmd FileType go nnoremap <F12> :!go run %<CR> 
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)

" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
"filetype off
"filetype plugin indent off
"set runtimepath+=$GOROOT/misc/vim
"filetype plugin indent on
"syntax on
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
"emmet  zencoding  html��չ{{{2
let g:user_emmet_leader_key='<C-y>'
"}}}
"github  gist{{{2
let g:gist_use_password_in_gitconfig = 1
"{{{2neosnippet config
let g:neosnippet#snippets_directory=$VIM .'/vimfiles/bundle/snip' 
let g:neosnippet#disable_select_mode_mappings =1
let g:neosnippet#disable_runtime_snippets = {
            \ 'java': 1 ,
            \ 'cpp': 1 ,
            \ }
let g:neosnippet#enable_snipmate_compatibility=0
let g:neosnippet#enable_preview =0
let g:neosnippet#expand_word_boundary=1
let g:neosnippet#scope_aliases = {
            \ 'go': 'go,gof',
            \}
" Plugin key-mappings.
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets' behavior.
"imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)"
"\: pumvisible() ? "\<C-n>" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)"
"\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
    set conceallevel=2 concealcursor=i
endif

" Enable snipMate compatibility feature.
" let g:neosnippet#enable_snipmate_compatibility = 1
" neosnippet END}}} 
"neocomplete  config{{{2
"{{{3 config
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#max_list = 2000
let g:neocomplete#max_keyword_width = 70
let g:neocomplete#auto_completion_start_length=2
let g:neocomplete#manual_completion_start_length = 0
let g:neocomplete#min_keyword_length=4
let g:neocomplete#enable_ignore_case=0
let g:neocomplete#enable_smart_case=1
let g:neocomplete#enable_camel_case =1
let g:neocomplete#disable_auto_complete =0
let g:neocomplete#enable_cursor_hold_i=1
let g:neocomplete#enable_auto_select =1
let g:neocomplete#enable_auto_delimiter =1
let g:neocomplete#enable_fuzzy_completion=1
let g:neocomplete#enable_multibyte_completion=0
let g:neocomplete#lock_buffer_name_pattern= ''
"let g:neocomplete#

" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#enable_auto_close_preview = 0
let g:neocomplete#fallback_mappings = 
            \ ["\<C-x>\<C-o>","\<C-x>\<C-n>"]
let g:neocomplete#sources#buffer#cache_limit_size = 900000

"{{{4 Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
            \ 'default' : '',
            \ 'vimshell' : $HOME.'/.vimshell_hist',
            \ 'scheme' : $HOME.'/.gosh_completions'
            \ }

"{{{4 Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"{{{4 Define delimiter
if !exists('g:neocomplete#delimiter_patterns')
    let g:neocomplete#delimiter_patterns={}
endif
let g:neocomplete#delimiter_patterns.vim=['#']
let g:neocomplete#delimiter_patterns.cpp=['::']
let g:neocomplete#delimiter_patterns.java=['.']
let g:neocomplete#delimiter_patterns.go = ['.']
" {{{4 omni completion.
"
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php =
\ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
let g:neocomplete#sources#omni#input_patterns.c =
\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
let g:neocomplete#sources#omni#input_patterns.cpp =
\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl =
            \ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

if !exists('g:neocomplete#sources#omni#functions')
    let g:neocomplete#sources#omni#functions = {}
endif
" Go (plugin: gocode)
let g:neocomplete#sources#omni#functions.go =
            \ 'go#complete#Complete'
" Clojure (plugin: vim-clojure)
let g:neocomplete#sources#omni#functions.clojure =
            \ 'vimclojure#OmniCompletion'
"" SQL
let g:neocomplete#sources#omni#functions.sql =
            \ 'sqlcomplete#Complete'
"" R (plugin: vim-R-plugin)
let g:neocomplete#sources#omni#input_patterns.r =
            \ '[[:alnum:].\\]\+'
let g:neocomplete#sources#omni#functions.r =
            \ 'rcomplete#CompleteR'
"" XQuery (plugin: XQuery-indentomnicomplete)
let g:neocomplete#sources#omni#input_patterns.xquery =
            \ '\k\|:\|\-\|&'
let g:neocomplete#sources#omni#functions.xquery =
            \ 'xquerycomplete#CompleteXQuery'
"omini complete END }}}
"config END 2}}}
"ctrl-p {{{2
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
if has('windows')
    let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows
endif
if has('Linux')
    let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
endif
