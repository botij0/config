# Work Environment Config Guide
Configuration/Resources for my work environment in Linux

## Requirements
A Linux based system is required. If you have windows you can use WSL2.

### Optional: Install WSL2

Open a Windows PowerShell terminal and enter:
```shell
wsl --install
```

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

## ZSH + Oh my Zsh + Powerlevel10k

### ZSH

> [!IMPORTANT]
> To see the icons correctly in the terminal, you should have installed a Nerd Font [Nerd Fonts](https://www.nerdfonts.com/font-downloads)

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

   
