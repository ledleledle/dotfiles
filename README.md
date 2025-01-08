# 🤡 Moody Dotfiles
[![GitHub stars](https://img.shields.io/github/stars/ledleledle/dotfiles?color=brightgreen)](https://github.com/ledleledle/dotfiles/stargazers)
[![Visits Badge](https://badges.pufler.dev/visits/ledleledle/dotfiles)](https://github.com/ledleledle/dotfiles)
[![Created Badge](https://badges.pufler.dev/created/ledleledle/dotfiles)](https://github.com/ledleledle/dotfiles)

<picture>
  <source media="(prefers-color-scheme: dark)" alt="" align="right" width="400px" srcset="development_preview.png"/>
  <img alt="" align="right" width="400px" src="development_preview.png"/>
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
- 📚 **File Manager** [Thunar](https://wiki.archlinux.org/title/Thunar)
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

#### Core utilities
```
git curl wget unzip
```

#### Core dependencies (in order to work properly)
> **Notes**: If you're previously using `wpa_supplicant` or any other network manager, please disable service or it will be conflict between services. We'll use `NetworkManager` service to connect to internet and for widget we'll use `nm-applet`.
```
xorg base-devel brightnessctl dbus NetworkManager network-manager-applet dunst tlp wlogout
```
For rootless `brightnessctl` you can use bellow command.
```bash
sudo chmod +s $(which brightnessctl)
```
Enable all services
```
sudo ln -s
```
**Context**: [XOrg](https://wiki.archlinux.org/title/Xorg), [D-Bus](https://docs.voidlinux.org/config/session-management.html#d-bus), [base-devel](https://bbs.archlinux.org/viewtopic.php?pid=1720288#p1720288), [TLP](https://docs.voidlinux.org/config/power-management.html), [Dunst](https://github.com/dunst-project/dunst), [wlogout](https://github.com/ArtsyMacaw/wlogout)


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
hyprland xdg-desktop-portal-hyprland hyprland-protocols hyprpaper hyprlock hypridle
```

#### Audio, Screen sharing & Media Player
**TL;DR** `pavucontrol` with `pipewire` framework and `mpv` for media player.<br>
More detailed information can be read at this [Void Linux Documentation: PipeWire](https://docs.voidlinux.org/config/media/pipewire.html)
```
pavucontrol pipewire pipewire-devel alsa-pipewire wireplumber mpv
```

```bash
sudo mkdir -p 
sudo ln -s /usr/share/alsa/alsa.conf.d/50-pipewire.conf /etc/alsa/conf.d
sudo ln -s /usr/share/alsa/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d
```

</details>

<details>
<summary><b>Utilities</b></summary>

#### Image viewer and screenshoot
Screenshoting with `slurp` and `grim`. And image viewer using `swappy`.

```
grim slurp swappy jq
```
#### File Manager
Thunar with capital T
```
Thunar
```
</details>

<details>
<summary><b>Neovim</b></summary>

> I am new to neovim and lua language, if there is any suggestion, please make Issues.

Required to install for neovim. `fd` and `ripgrep` will be used for `telescope` plugin.
```
neovim fd ripgrep
```
---
#### ⚙️ Plugin used
- [lazy.nvim](https://github.com/folke/lazy.nvim) is a plugin manager for Neovim.
- [paletee.nvim](https://github.com/roobert/palette.nvim) Cool and customizable theme!
- [alpha-nvim](https://github.com/goolord/alpha-nvim) Cool dashboard 👍
- [telescope](https://github.com/nvim-telescope/telescope.nvim) is a highly extendable fuzzy finder over lists.
- [tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation) provide some basic functionality such as highlighting and indentation.
- [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) browse the file system and other tree like structures.
- [lualine](https://github.com/nvim-lualine/lualine.nvim) Cool statusline in the bottom!
- [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim), [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig), [telescope-ui-select](https://github.com/nvim-telescope/telescope-ui-select.nvim), [none-ls](https://github.com/nvimtools/none-ls.nvim) You can read about [LSP Here!](https://neovim.io/doc/user/lsp.html) LSP diagnostics, code actions.
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp), [LuaSnip](https://github.com/L3MON4D3/LuaSnip), [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp), [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) Autocompletion and Snippets.

Thanks to this repository https://github.com/cpow/neovim-for-newbs for my references.
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
