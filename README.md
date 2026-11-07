# dotfiles

个人环境配置：vi 设置、dev 容器函数。

## 安装

    git clone https://github.com/LuTianming-Timmy-1111/dotfiles.git ~/dotfiles
    ~/dotfiles/install.sh
    source ~/.bashrc

必须克隆到 `~/dotfiles`，脚本里的路径写死了这个位置。`install.sh` 可以重复运行。

## 内容

- `vimrc`：缩进用 4 个空格，链接到 `~/.vimrc`
- `bash/dev.sh`：`dev` 函数，把当前目录挂进 python:3.12-slim 容器；在家目录下拒绝运行；有 `.env` 时自动加载
