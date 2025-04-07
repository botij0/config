# Work Environment Config Guide
Configuration/Resources for my work environment in Linux

## Table of Contents
- [Requirements](#requirements)
    - [Optional: Install WSL2](#optional-install-wsl2)
- [Font](#font)
- [Terminals](#terminals)
    - [WezTerm](#wezterm)
    - [Windows Terminal](#windows-terminal)
- [HomeBrew](#homebrew)
- [ZSH + Oh My Zsh + Powerlevel10k](#zsh--oh-my-zsh--powerlevel10k)
    - [ZSH](#zsh)
    - [Oh My ZSH](#oh-my-zsh)
    - [PowerLevel10k](#powerlevel10k)
- [ZSH Plugins](#zsh-plugins)
    - [Auto-Suggestions](#auto-suggestions)
    - [Syntax Higlighting](#syntax-higlighting)
- [Main Utilities](#main-utilities)
    - [Bat](#bat)
    - [EZA](#eza)
    - [Atuin](#atuin)
    - [FZF](#fzf)
    - [Zoxide](#zoxide)
- [Other Utilities](#other-utilities)
    - [zip/unzip](#zipunzip)
    - [Kubectl/k9s](#kubectlk9s)
    - [NVM (Node Version Manager)](#nvm-node-version-manager)


## Requirements
A Linux based system is required. If you have windows you can use WSL2.

### Optional: Install WSL2

Open a Windows PowerShell terminal and enter:
```shell
wsl --install
```

## Font

The font used is [Cascadia Code](https://github.com/microsoft/cascadia-code)

> [!IMPORTANT]
> To see the icons correctly in the terminal, you should have installed a Nerd Font [Nerd Fonts](https://www.nerdfonts.com/font-downloads) or similars

## Terminals
There are many terminals. My current recomendation is `WezTerm`

### WezTerm
WezTerm is a powerful cross-platform terminal emulator and multiplexer implemented in Rust.

>[!NOTE]
> The following steps are to install and configure it for Windows. You can see different steps in the oficial documentation [WezTerm Docs](https://wezterm.org/installation.html) 

You can download the `.exe` in this link:  [Windows WezTerm](https://wezterm.org/install/windows.html)

Once installed, copy the `.wexterm.lua` file into `C:\Users\your-username` to have the same configuration. You can personalize it as your wills.

### Windows Terminal
Install the ***Windows Terminal*** app available in Microsoft Store.

<img src="https://4sysops.com/wp-content/uploads/2019/07/The-Windows-Terminal-preview-is-downloadable-from-the-Microsoft-Store.png" width="300"/>

You can custimize it with the graphical interface.

## HomeBrew
Homebrew is a package manager for macOS or Linux. Hombrew is easy and don't need `sudo`.

To install it:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
And Follow the instructions on screen.

## ZSH + Oh my Zsh + Powerlevel10k

### ZSH

1. Install zsh:
```bash
sudo apt install zsh
```
2. Check version:
```bash
zsh --version
```
3. Set zsh as default shell:
```bash
chsh -s /usr/bin/zsh
```
4. Log out and then login again to your terminal and see the default shell with the command:
```bash
echo $SHELL
```

### Oh My ZSH

1. Install it:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### PowerLevel10k
1. Clone the repository:
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
```
2. Open `~/.zshrc` and change the `ZSH_THEME`:
```bash
ZSH_THEME="powerlevel10k/powerlevel10k"
```
3. Open a new terminal. If p10k configuration wizard does not start automatically, you can run the command:
```bash
p10k configure
```

## ZSH Plugins

### Auto-Suggestions

1. Download it:
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
```
2. Add it to `plugins` insisde `~/.zshrc`:
```bash
plugins=(git zsh-autosuggestions)
```

### Syntax Higlighting

1. Download it:
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```
2. Add it to `plugins` insisde `~/.zshrc`:
```bash
plugins=(git zsh-syntax-highlighting)
```

> [!NOTE]
> After the instalattion of the plugins, the `plugins` var shlould be:
> `plugins=(git zsh-autosuggestions zsh-syntax-highlighting)`

## Main Utilities
> [!IMPORTANT]
> If you install all the dependencies in this section, you can copy the lines inside `.zshrc` into your `~/.zshrc` for the specific configuration.
> If not, you should check special tutorial for each dependency.

### Bat
A cat(1) clone with syntax highlighting and Git integration. [Bat](https://github.com/sharkdp/bat)
```
brew install bat
```

### EZA
A modern replacement for ls. [EZA](https://github.com/eza-community/eza)
```bash
brew install eza
```

### Atuin
Sync, search and backup shell history with [Atuin](https://atuin.sh/)
```bash
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
```

### FZF
[FZF](https://github.com/junegunn/fzf) is a general-purpose command-line fuzzy finder. Used for Zoxide (Just below). 
```bash
brew install fzf
```

### Zoxide
[Zoxide](https://github.com/ajeetdsouza/zoxide) is a smarter cd command. It remembers which directories you use most frequently, so you can "jump" to them in just a few keystrokes. 

```bash
brew install zoxide
```



## Other Utilities

This section contains some dependencies/utilities that can be usefull depends on the project you are working on.

All of this are optional.

### zip/unzip
```bash
brew install unzip
```
```bash
brew install zip
```

### Kubectl/k9s
For kubernetes managment:
```bash
brew install kubectl
```
```bash
brew install derailed/k9s/k9s
```

### NVM (Node Version Manager)
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash
```
Once installed, you can install a specific version of Node:
```bash
nvm install node-version
```
You can specify the version of node to use:
```bash
node use 14
```


   
