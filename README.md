# My .vim folder (managed with vundle)

## Requirements

* git
* rake
* ack
* CMake
* vim ;)

## Installation
    $ git clone git://github.com/benzimmer/dotvim.git ~/.vim
    $ cd ~/.vim
    $ rake vim:install   # create bundle directory and fetch vundle from github
    $ rake vim:link      # create symlinks to configuration files in ~/
    $ vim +BundleInstall # start vim and install scripts

## Cheatsheet

[CHEATSHEET.md](https://github.com/benzimmer/dotvim/blob/master/CHEATSHEET.md)

## Updating

    $ cd ~/.vim
    $ git pull
    $ vim +BundleInstall
    $ cd bundle/YouCompleteMe
    $ ./install.sh

## Plugin List

_Note: Auto generated from `vundle.config`


 * [vundle](https://github.com/gmarik/vundle)
 * [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
 * [Arduino-syntax-file](https://github.com/vim-scripts/Arduino-syntax-file)
 * [cocoa.vim.git](https://github.com/jgoulah/cocoa.vim.git)
 * [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
 * [vim-git](https://github.com/tpope/vim-git)
 * [vim-haml](https://github.com/tpope/vim-haml)
 * [vim-javascript](https://github.com/pangloss/vim-javascript)
 * [vim-jquery](https://github.com/itspriddle/vim-jquery)
 * [vim-json](https://github.com/leshill/vim-json)
 * [Jinja](https://github.com/vim-scripts/Jinja)
 * [htmljinja](https://github.com/estin/htmljinja)
 * [vim-markdown](https://github.com/tpope/vim-markdown)
 * [python.vim--Vasiliev](https://github.com/vim-scripts/python.vim--Vasiliev)
 * [textile.vim](https://github.com/timcharper/textile.vim)
 * [scss-syntax.vim](https://github.com/cakebaker/scss-syntax.vim)
 * [vim-handlebars](https://github.com/nono/vim-handlebars)
 * [delimitMate](https://github.com/Raimondi/delimitMate)
 * [ack.vim](https://github.com/mileszs/ack.vim)
 * [vim-fugitive](https://github.com/tpope/vim-fugitive)
 * [vim-indent-guides](https://github.com/mutewinter/vim-indent-guides)
 * [vim-repeat](https://github.com/tpope/vim-repeat)
 * [ColorV](https://github.com/Rykka/ColorV)
 * [IndexedSearch](https://github.com/vim-scripts/IndexedSearch)
 * [vim-easymotion](https://github.com/Lokaltog/vim-easymotion)
 * [nerdtree](https://github.com/scrooloose/nerdtree)
 * [nerdcommenter](https://github.com/ddollar/nerdcommenter)
 * [vim-surround](https://github.com/tpope/vim-surround)
 * [supertab](https://github.com/ervandew/supertab)
 * [vim-cucumber](https://github.com/tpope/vim-cucumber)
 * [vim-rails](https://github.com/tpope/vim-rails)
 * [vim-rspec](https://github.com/taq/vim-rspec)
 * [vim-endwise](https://github.com/tpope/vim-endwise)
 * [syntastic](https://github.com/scrooloose/syntastic)
 * [gist-vim](https://github.com/mattn/gist-vim)
 * [YankRing.vim](https://github.com/vim-scripts/YankRing.vim)
 * [status.vim](https://github.com/dickeytk/status.vim)
 * [AutoComplPop](https://github.com/vim-scripts/AutoComplPop)
 * [closetag.vim](https://github.com/vim-scripts/closetag.vim)
 * [minibufexpl.vim](https://github.com/fholgado/minibufexpl.vim)
 * [vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils)
 * [tlib_vim](https://github.com/tomtom/tlib_vim)
 * [snipmate-snippets](https://github.com/honza/snipmate-snippets)
 * [vim-snipmate](https://github.com/garbas/vim-snipmate)
 * [vim-powerline](https://github.com/Lokaltog/vim-powerline)
 * [ctrlp.vim](https://github.com/kien/ctrlp.vim)
 * [switch.vim](https://github.com/AndrewRadev/switch.vim)
 * [vimux](https://github.com/benmills/vimux)
 * [easybuffer.vim](https://github.com/troydm/easybuffer.vim)
