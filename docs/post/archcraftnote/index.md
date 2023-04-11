# Archcraftnote

## Archcraft-note

关于本人 Archcraft 的装机记录，以及一些常用软件的安装记录。用以以后滚挂重装时的参考。

### 0. 为什么选择 Archcraft

Arch 安装过程繁琐，如果以后想快速构建开发环境，还是选择 Archcraft 比较好。

而且 Archcraft 的桌面环境已经设置完好，不需要再进行配置，只需要安装一些常用软件即可。

### 1. 安装

从 Archcraft 官网下载 iso 文件，使用 Rufus 制作启动盘（选择 MBR 引导和 DD 镜像安装），然后启动，选择安装即可。

### 2. 换源

使用命令

```bash
sudo reflector -c China -a 10 --sort score --save /etc/pacman.d/mirrorlist # 换源及排序
cat /etc/pacman.d/mirrorlist # 查看源是否正确
```

### 3. 桌面

由于 Archcraft 的桌面环境已经十分完美，所以不需要进行修改，首次登陆再退出登陆选择 bspwm 为会话窗口即可。

### 4. 常用软件

首先更新软件包

```bash
sudo pacman -Syyu
```

#### 4.1. 中文输入法和字体

```bash
sudo pacman -S fcitx5-im fcitx5-chinese-addons fcitx5-pinyin-zhwiki fcitx5-material-color
sudo pacman -S noto-fonts-cjk nerd-fonts-fira-code noto-fonts-emoji adobe-source-han-serif-cn-fonts wqy-zenhei
```

```bash
# 修改 /etc/environment 文件
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
```

```bash
# 开机启动 fcitx5
echo "fcitx5 &" >> ~/.config/bspwm/bspwmrc
```

#### 4.2. 终端设置

很棒的事情是：Archcraft 默认终端是 Alacritty，而且已经配置好了，只需要调整一下透明度即可。

```bash
# 修改 ~/.config/alacritty/alacritty.yml 文件
# 将 background_opacity: 1.0 改为 background_opacity: 0.7
vim ~/.config/alacritty/alacritty.yml
```

##### 4.2.1. zsh

zsh 中需要多安装两个插件，一个是 zsh-autosuggestions，一个是 zsh-syntax-highlighting。

```bash
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions
vim ~/.zshrc
# 在 plugins=() 中添加 zsh-syntax-highlighting 和 zsh-autosuggestions
```

#### 4.3. 代码编辑器

vs-code 和 intellij idea 还有 goland

```bash
yay -S visual-studio-code-bin goland-jre intellij-idea-ultimate-edition goland go
```

##### 4.3.1. vscode登陆问题

安装 gnome-keyring

```bash
yay -S gnome-keyring
```

#### 4.4. 办公软件

```bash
# wps
yay -S wps-office-cn wps-office-mui-zh-cn ttf-wps-fonts
# nutstore
yay -S nutstore
```

#### 4.5. 社交软件

```bash
# wechat
yay -S wechat-uos
# qq
yay -S linuxqq
```

#### 4.6 其他软件

```bash
# 网易云音乐
yay -S netease-cloud-music
# 科学上网
yay -S clash-for-windows
# 终端文件管理器
yay -S ranger

