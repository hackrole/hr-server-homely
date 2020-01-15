from pathlib import Path
from homely.files import symlink, download, mkdir
from homely.system import execute


ZSH_DIR = Path("~/app/zsh").expanduser()


def install_zsh():
    url = "https://nchc.dl.sourceforge.net/project/zsh/zsh/5.7.1/zsh-5.7.1.tar.xz"
    fname = "zsh-5.7.1.tar.xz"
    download(url, fname)
    execute(f"tar xvaf {fname}")
    mkdir("app/")
    execute(f"cd zsh-5.7.1 && ./configure --prefix={ZSH_DIR} && make install")


install_zsh()
symlink("zshrc", "~/.zshrc")
symlink("oh-my-zsh", "~/.on-my-zsh")
symlink("bashrc", "~/.bashrc")
