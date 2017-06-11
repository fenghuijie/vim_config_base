Vim config files
================

I use `vundle` to manage my plugins.

## Code Completions

* [neocomplcache](http://github.com/Shougo/neocomplcache) - Ultimate auto completion system for Vim.
* [supertab](http://github.com/ervandew/supertab) - Perform all your vim insert mode completions with Tab.
* [snipMate](https://github.com/garbas/vim-snipmate) - Plugin for using TextMate-style snippets in Vim.
* [delimitMate](http://github.com/Raimondi/delimitMate) - Provides auto-balancing and some expansions for parens, quotes, etc.

### Shortcuts

* `Tab` -> Rotate across the completion list
* `Tab` -> Expand snippets or jump to the next placeholder of snippet

## Fast navigation

* [EasyMotion](https://github.com/Lokaltog/vim-easymotion) - Vim motions on speed!

### Shortcuts

* `%` -> Jump between brackets and html/xml tags
* `<leader>` + `w` -> Beginning of the word.
* `<leader>` + `f` + `{char}` -> Find {char} to the right.

## Fast editing

* [surround](http://github.com/tpope/vim-surround) - Easily delete, change and add such surroundings in pairs.
* [nerdcommenter](http://github.com/scrooloose/nerdcommenter) - Easy commenting of code for many filetypes.
* [Gundo](https://github.com/sjl/gundo.vim/) - visualize your Vim undo tree.
* [tabular](https://github.com/godlygeek/tabular) - Vim script for text filtering and alignment.
* [IndentGuides](https://github.com/nathanaelkane/vim-indent-guides) - A Vim plugin for visually displaying indent levels in code.

### Shortcuts

* `%` -> Jump between brackets and html/xml tags
* `<leader>` + `c` + `<space>` -> Toggle comment
* `F3` -> Toggle Gundo viewer
* `F4` -> Toggle Indent Guides

## IDE features

* [nerdtree](http://github.com/scrooloose/nerdtree) - A tree explorer plugin for navigating the filesystem.
* [tagbar](http://github.com/majutsushi/tagbar) - Displays the tags of the current file in a sidebar.
* [syntastic](https://github.com/scrooloose/syntastic) - Syntax checking hacks for vim.
* [ctrlp](https://github.com/kien/ctrlp.vim) - Fuzzy file, buffer, mru and tag finder.
* [powerline](https://github.com/Lokaltog/vim-powerline) - The ultimate vim statusline utility.
* [fugitive](https://github.com/tpope/vim-fugitive/) - a Git wrapper so awesome, it should be illegal.
* [syntastic](https://github.com/scrooloose/syntastic) - Syntax checking hacks for vim.

### Shortcuts
* `F6` -> Toggle Nerd-Tree file viewer
* `F7` -> Toggle tagbar
* `Ctrl` + `p` -> Toggle ctrlp

## Other Utils

* [fcitx-status](https://github.com/humiaozuzu/fcitx-status) - automatic change status of fcitx in vim.
* [togglemouse](https://github.com/nvie/vim-togglemouse/) - Toggles the mouse focus between Vim and your terminal emulator, allowing terminal emulator mouse commands, like copy/paste.

### Shortcuts

* `F12` -> Toggle Mouse

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

