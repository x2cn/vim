
```shell
$ cd $HOME
$ git clone https://github.com/x2cn/vim.git
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
$ cd vim; cp .vimrc ..; cp -rf .vim ..;cd ..

$ vim .vimrc
:PluginInstall
:GoInstallBinaries
```
