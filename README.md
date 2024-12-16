# 🤡 Moody Dotfiles
[![GitHub stars](https://img.shields.io/github/stars/ledleledle/dotfiles?color=brightgreen)](https://github.com/ledleledle/dotfiles/stargazers)
[![Visits Badge](https://badges.pufler.dev/visits/ledleledle/dotfiles)](https://github.com/ledleledle/dotfiles)
[![Created Badge](https://badges.pufler.dev/created/ledleledle/dotfiles)](https://github.com/ledleledle/dotfiles)

<picture>
  <source media="(prefers-color-scheme: dark)" alt="" align="right" width="400px" srcset=""/>
  <img alt="" align="right" width="400px" src=""/>
</picture>

:hand: **Hi there... Thank you for comming by!**

This is my personal configuration for Void Linux Environment (curently under Development).

Here are some details about my current setup:

- 💻 **Device** Lenovo Thinkpad X280
- 🪟 **Window Manager** [Hyprland](https://hyprland.org) tilling WM with rich features.
- 🌻 **Panel** [Waybar](https://github.com/Alexays/Waybar)
- 🚀 **Application Launcher** [Wofi](https://hg.sr.ht/~scoopta/wofi)
- 🔔 **Desktop Notification** [Dunst](https://github.com/dunst-project/dunst)
- 🐱 **Terminal Emulator** [Kitty](https://github.com/kovidgoyal/kitty)
- 🖥️ **Shell** [Zsh](https://zsh.org) with [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) framework.
- 📚 **File Manager** TBD
- 🎵 **Media Player** [mpv](https://mpv.io)
- 📖 **IDE** [Neovim](https://neovim.io/) with plugins installed (see Neovim section).
- 🌐 **Browser** [Firefox](https://www.mozilla.org) with a cool theme

## 🧑‍🔧 About the Dotfiles
> [!NOTE]
>  **TL;DR Who cares!?**

I started this project on 8 December 2024 when I got laid off from my previous company. This project helped me fill the gap after getting laid off and continues my journey in **Ricing** Industry, which has been left untouched since 2020. Looking at my previous dotfiles makes me think, **God... What is this mess?** They're so disorganized and nearly impossible to reproduce. So, my comeback here is to create dotfiles with clean and simple code also easy to use.

This configuration is inspired by this cruel world, depression and anxious feeling. Please note that these configuration is simply **what works and looks good to me**, and they may not work for everyone, you have to adjust by yourself if some not work or *different taste* (lol) :laughing:. Feel free to use or adapt anything you find useful. Feel free to reach out if you have any questions or problem.

**This configuration is:**
- :cry: Moody, can be dark or light.
- :keyboard: Keyboard users might love it but mouse-friendly too.

## 📚 Dependencies (Prerequisite)
This guide will help you to install some essential dependencies in order to used this configuration and running the OS properly.

> [!WARNING]  
> 🤖 Still tested and running on Void Linux only.<br>
> But I planned to supporting and providing info for any other Linux Distribution, until then if you're not using Void Linux, please research all the dependecies all by yourself 🙏

Anyway... You know how to install dependencies in Void Linux?
```bash
sudo xbps-install abc1 abc2 abc3 ...
```

<details>
<summary><b>Core dependencies (Void Linux)</b></summary>

`base-devel` is like `build-essential`.
```
git xorg base-devel brightnessctl
```
For rootless `brightnessctl` you can use bellow command.
```bash
sudo chmod +s $(which brightnessctl)
```

#### Hyprland
Hyprland is not available from Void Linux’s official repositories [due to a conflict of packaging philosophy](https://github.com/void-linux/void-packages/issues/37544). However, a [third party repository](https://github.com/Makrennel/hyprland-void) is available with binary packages built in CI by GitHub Actions.

You can add this repository by creating a file such as `/etc/xbps.d/hyprland-void.conf` with the following contents:
```bash
echo "repository=https://raw.githubusercontent.com/Makrennel/hyprland-void/repository-x86_64-glibc" > /etc/xbps.d/hyprland-void.conf

# Then update repo
xbps-install -S
```
Then you can install the packages as you would any other:
```
hyprland xdg-desktop-portal-hyprland hyprland-protocols hyprpaper
```

#### PipeWire
PipeWire is a modern server for handling audio (and video) streams.

</details>

<details>
<summary><b>Neovim</b></summary>

Required to install for neovim. `fd` and `ripgrep` will be used for `telescope` plugin.
```
neovim fd ripgrep
```
---
#### ⚙️ Plugin used
- [lazy.nvim](https://github.com/folke/lazy.nvim) is a plugin manager for Neovim.
- [catppuccin theme](https://github.com/catppuccin/nvim) Cool dark theme!
- [telescope](https://github.com/nvim-telescope/telescope.nvim) is a highly extendable fuzzy finder over lists.
- [tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation) provide some basic functionality such as highlighting and indentation.
- [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) browse the file system and other tree like structures.
- [lualine](https://github.com/nvim-lualine/lualine.nvim) Cool statusline!

</details>

<details>
<summary><b>Font</b></summary>
  
> Will be organized what used what not. Because font alone is eating up 8G of my storage! But Its still under development. So... I will be experimenting some font that match my taste!

Currently installed is:
```bash
twemoji xorg-fonts noto-fonts-ttf noto-fonts-cjk nerd-fonts noto-fonts-emoji
```
Using reference from [Void Linux Documentation](https://docs.voidlinux.org/config/graphical-session/fonts.html).

</details>

<details>
<summary><b>Cursor</b></summary>
  
I'm personaly used cursor from [catppuccin](https://github.com/catppuccin/cursors) called **Catppuccin Latte Light**. If you want to add more cursor, you can copy or extract to `~/.icons` or `~/.local/share/icons`. Then select desired cursor using `nwg-look`.

</details>

## 👾 Installation
Comming soon

## 🤝 Credits
They are my inspiration. *Pahlawan tanpa tanda jasa*.
- https://github.com/quantumfate/wofi
- The GOAT itself [@owl4ce](https://github.com/owl4ce/dotfiles)
<!--
## And thanks to
[![Contributors Display](https://badges.pufler.dev/contributors/ledleledle/dotfiles?size=50&padding=5&perRow=10&bots=true)](https://github.com/ledleledle/dotfiles)
-->
