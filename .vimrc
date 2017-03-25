set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" PluginList	列出安装的插件
" PluginInstall	根据配置文件安装插件
" PluginUpdate	更新插件
" PluginSearch [name]	查找名为 [name] 的插件
" PluginClean	清除无用的插件
" GoInstallBinaries

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go' " vim go插件
Plugin 'flazz/vim-colorschemes' " 主题包
Plugin 'vim-airline/vim-airline' " 显示底部状态栏
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar' " tagbar
Plugin 'kien/ctrlp.vim' " ctrl + p打开文件
Plugin 'The-NERD-tree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader = ","
au FileType go nmap <leader>gd <Plug>(go-doc)
set number
"set background=dark
"colorscheme darkblue
"set background=light
"colorscheme solarized
set t_Co=256
colorscheme molokai
if has("autocmd")
    autocmd FileType go setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
    autocmd FileType proto setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
    autocmd FileType python setlocal tabstop=4 sts=4 shiftwidth=4 expandtab
endif

set autoindent
set cursorline " 高亮当前行
set showmatch " 高亮显示匹配的括号
set ignorecase " 在搜索的时候忽略大小写
set incsearch " 边输入边查找
set hlsearch " 高亮搜索
set scrolloff=15   " 光标移动到buffer的顶部和底部时保持10行距离
" set nobackup " 不要备份文件
set noerrorbells " 发生错误时不滴滴响
" 关闭保存自动格式化功能 
let g:go_fmt_autosave = 0

" vim-ariline
" let g:airline_theme="molokai" 
let g:airline_powerline_fonts = 1
" 是否启用顶部tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
" 顶部tabline显示方式
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" 设置切换Buffer快捷键
" nnoremap <C-tab> :bn<CR>
" nnoremap <C-s-tab> :bp<CR>
" 关闭状态显示空白符号计数
" let g:airline#extensions#whitespace#enabled = 0
" let g:airline#extensions#whitespace#symbol = '!'
" 底部tabline显示方式
set laststatus=2
"set statusline=
"set statusline=%<%f\                     " Filename
"set statusline+=%w%h%m%r                 " Options
"set statusline+=\ [%{&ff}/%Y]            " Filetype
"set statusline+=\ [%{getcwd()}]          " Current dir
"set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info

"set statusline=  
"set statusline+=%7*\[%n]                                  "buffernr  
"set statusline+=%1*\ %<%F\                                "文件路径  
"set statusline+=%2*\ %y\                                  "文件类型  
"set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "编码1  
"set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "编码2  
"set statusline+=%4*\ %{&ff}\                              "文件系统(dos/unix..)   
"set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "语言 & 是否高亮，H表示高亮?  
"set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "光标所在行号/总行数 (百分比)  
"set statusline+=%9*\ col:%03c\                            "光标所在列  
"set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Read only? Top/bottom 
" 使用gt命令可以切换到下一个tab，使用gT命令可以切换到前一个tab
" 可以使用:tabs查看所有tab的列表，然后输入ngt命令切换到对应的tab，其中n是tab的编号
" 使用:tabc命令关闭当前tab

map <F3> :TagbarToggle<CR>
" let Tlist_Use_Right_Window=1
" let Tlist_Show_One_File=1
" let Tlist_Exit_OnlyWindow=1
" let Tlist_WinWidt=25
" let Tlist_Auto_Open=1 " 自动开启
" < CR >	跳到 tag 定义的位置
" < Space >	显示 tag 定义
" u	更新 tag
" j	向下移动
" k	向上移动
" x	放大缩小窗口
" q	关闭窗口

map <F2> :NERDTreeToggle<CR>
let NERDTreeWinSize=25
" autocmd vimenter * NERDTree " 自动启动
" o	打开关闭文件或目录
" t	在新标签中打开并转到文件
" T	在新标签中打开文件
" !	执行文件（文件名后面有 * 代表可执行）
" j	向下移动
" k	向上移动
" m	显示系统菜单
" p	转到父目录
" P	转到根目录
" q	关闭窗口
"
" tab替换空格
" :set ts=4
" :set expandtab
" :%retab!
" 空格替换tab
" :set ts=4
" :set noexpandtab
" :%retab!
map <F5> :%retab!<CR>

"<k0> - <k9> 小键盘 0 到 9 
"<S-...> Shift＋键 
"<C-...> Control＋键 
"<M-...> Alt＋键 或 meta＋键 
"<A-...> 同 <M-...> 
"<Esc> Escape 键 
"<Up> 光标上移键 
"<Space> 插入空格 
"<Tab> 插入Tab 
"<CR> 等于<Enter>











" install powerline
" 1. git clone https://github.com/powerline/fonts
" 2. ./install.sh
