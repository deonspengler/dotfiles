My configs and scripts
======================
This repository is a collection of configurations files and scripts that I use on my Arch Linux system to make my life easier. This is how my desktop currently looks like, if you see something that you like please feel free to use anything that might be of use to you.

![Image of my Desktop](https://github.com/deonspengler/dotfiles/raw/master/screenshot.png)

Below is a brief description of some of the tools that I use in the hope that someone else might find this useful.

bspwm
-----
This is a fantastic tiling window manager that represents windows as the leaves of a full binary tree. My scripts for bspwm supports single to multiple monitors, adjusting the workspaces depending on the amount of monitors that is detected during startup. These scripts for bspwm depends on the following applications.

* nitrogen (is a fast and lightweight desktop background browser and setter for X windows)
* conky (is a extremely configurable system monitor)
* sxhkd (is a simple X hotkey daemon with a powerful and compact configuration syntax)
* dunst (is a minimalistic notification daemon that can listen to notifications from libnotify)
* xdo (is a utility for performing actions on windows in X)
* lemonbar (is a lightweight bar based on XCB)

vim
---
Vim is one of the best text editors and is very customisable, with few plugins it can pretty much do whatever you require from a text editor. Here is a couple of plugins that I use and find very useful.

* vungle (is used to manage plugins in vim)
* ultisnips (is the ultimate solution for snippets in vim)
* vim-snippets (contains snippets files for various programming languages)
* YouCompleteMe (is a fast, as-you-type, fuzzy-search code completion engine for vim)
* nerdcommenter (allows for easy commenting of code for many file types)
* vim-airline (is a lean status/tabline for vim)
* jellbeans (is a dark yet colourful colour scheme)

To setup Vim on your system with my configuration please run the following command to install vundle on your system.

```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Once that is done you can proceed to execute vim. With Vim now open type :PluginInstall. This can take awhile to complete, when the install process finishes exit vim and run the following commands to compile and finalize the installation of YouCompleteMe.

```
cd ~/.vim/bundle/YouCompleteMe
python2 install.py
```
