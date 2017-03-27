My configs and scripts
======================
This repository is a collection of configurations that I use on my systems to make my life easier. Below is a brief description of some of the tools that I use in the hope that someone else might find this useful.

![Image of my Desktop](https://github.com/deonspengler/dotfiles/raw/master/screenshot.png)

bspwm
-----
This is a fantastic tiling window manager that represents windows as the leaves of a full binary tree. My scripts for bspwm supports single to multiple monitors, adjusting the workspaces depending on the amount of monitors that is detected during startup. These scripts for bspwm depends on the following.

1. nitrogen (is a fast and lightweight desktop background browser and setter for X windows)
2. conky (is a extremely configurable system monitor)
3. sxhkd (is a simple X hotkey daemon with a powerful and compact configuration syntax)
4. dunst (is a minimalistic notification daemon that can listen to notifications from libnotify)
5. xdo (is a utility for performing actions on windows in X)
6. lemonbar (is a lightweight bar based on XCB)

vim
---
Using the vim text editor with a couple of plugins it can make anyone look like a pro. Here is a couple of plugins that I find very useful.

1. Vungle: Used to manage plugins in Vim
2. Ultisnips: Is the ultimate solution for snippets in Vim
3. Vim-snippets: Contains snippets files for various programming languages
4. YouCompleteMe: Is a fast, as-you-type, fuzzy-search code completion engine for Vim
5. Nerdcommenter: Allows for easy commenting of code for many file types
6. Vim-airline: Is a lean status/tabline for vim
7. Jellbeans: It is a dark yet colourful colour scheme

To setup Vim on your system with my configuration please run the following command to install vundle on your system.

```git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim```

Once that is done you can proceed to execute vim. With Vim now open type :PluginInstall. This will take awhile to complete.
