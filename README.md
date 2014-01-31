# ~/.vim

These are my Vim configuration files. I've created these from scratch to suit
my needs, so don't expect to find lots and lots of useless stuff here. :)

## Plugins

| Plugin name         | Description                                       |
| ------------------- | ------------------------------------------------- |
| [ctrlp.vim][1]      | Full path file finder (or Textmate's ⌘T for Vim). |
| [Supertab][2]       | Auto-complete with \<tab\>.                       |
| [NERD Tree][3]      | File explorer in the form of a tree.              |
| [fugitive.vim][4]   | Git integration.                                  |
| [vim-airline][5]    | Awesome status line.                              |
| [base16-vim][6]     | Base16 colorschemes.                              |
| [nginx.vim][7]      | Highlights Nginx configuration files.             |
| [commentary.vim][8] | Comment code.                                     |
| [Syntastic][9]      | Syntax checking.                                  |

[1]: https://github.com/kien/ctrlp.vim
[2]: https://github.com/ervandew/supertab
[3]: https://github.com/scrooloose/nerdtree
[4]: https://github.com/tpope/vim-fugitive
[5]: https://github.com/bling/vim-airline
[6]: https://github.com/chriskempson/base16-vim
[7]: http://www.vim.org/scripts/script.php?script_id=1886
[8]: https://github.com/tpope/vim-commentary
[9]: https://github.com/scrooloose/syntastic

## Instalation

Clone this repository into your home directory:

    git clone git://github.com/lenon/.vim.git ~/.vim

Go to the cloned repo and then update submodules:

    cd ~/.vim
    git submodule update --init

Link `vimrc` and `gvimrc`:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Open Vim:

    vim

And install plugins:

    :BundleInstall

Restart vim and enjoy. :beer:
