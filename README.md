Such as completions for variable names and function names(neocomplcache), expanding snippets(snipMate), auto closing brackets/brace/quote(delimitMate) and fast expand expressions to HTML(ZenCoding).

* [neocomplcache](http://github.com/Shougo/neocomplcache) - Ultimate auto completion system for Vim.
* [supertab](http://github.com/ervandew/supertab) - Perform all your vim insert mode completions with Tab.

### Shortcuts



### Tutorial



## IDE features

* [nerdtree](http://github.com/scrooloose/nerdtree) - A tree explorer plugin for navigating the filesystem.
* [tagbar](http://github.com/majutsushi/tagbar) - Displays the tags of the current file in a sidebar.
* [syntastic](https://github.com/scrooloose/syntastic) - Syntax checking hacks for vim.

## Themes

* [solarized](https://github.com/altercation/vim-colors-solarized) - precision colorscheme for the vim text editor

## Installation

1. Backup your old vim configuration files:

        mv ~/.vim ~/.vim.orig
        mv ~/.vimrc ~/.vimrc.orig

2. Clone and install this repo:

        git clone git://github.com/fenghuijie/vim_config_base.git ~/.vim
        ln -s ~/.vim/vimrc ~/.vimrc

3. Setup `Vundle`:

        git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

4. Install bundles. Launch vim(ignore the errors and they will disappear after installing needed plugins)and run:

        :BundleInstall

Thst's it!

## How to manage this vimrc?

All plugins are listed in file `bundles.vim` with detailed comments, just add plugins as you like.

1. `:BundleClean` to clean up unused plugins
2. `:BundleInstall` to install newly added plugins
3. `:BundleInstall!` to upgrade all plugins

Other configurations are also well organized in vimrc.

