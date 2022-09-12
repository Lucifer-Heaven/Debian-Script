# Debian-Script
11.4 bullseye

## ~~Todo~~

- [x] Preconf file

## Package list

> needs to be installed before clone:
>
> Change username!
>
> ```bash
> $ su
> # apt update && apt install sudo git -y && echo "username ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && exit
> $ git clone https://github.com/luc1fev/Debian-Script.git
> $ cd Debian-Script
> ```
>

### Auto_update_install:

#### Installed

> - vim
>
> editor instead of vi
>
> - oh my zsh
>
> better powerful command interpreter



#### Comments out

> - unzip & tar
>
> allow you unpack/pack zip,gz,tar file
>
> - tree
>
> list file as tree view
>
> - lrzsz
>
> easy tool to let you upload/download through terminal. **not good enough for large file**

### pip_django_install

Install pip thou apt, 



### myPerfer

alias vim to vi, clone a color, set vimrc

set zshrc and install 2 plugins 

## Some Helpful Resources

- [How to configure .zshrc for specfic os](https://unix.stackexchange.com/questions/252166/how-to-configure-zshrc-for-specfic-os)

```bash
case `uname` in
  Darwin)
    # commands for OS X go here
  ;;
  Linux)
    # commands for Linux go here
  ;;
  FreeBSD)
    # commands for FreeBSD go here
  ;;
esac
```
OR

```bash
# name zshrc like `.zshrc-Darwin`, `.zshrc-Linux`
source "${ZDOTDIR:-${HOME}}/.zshrc-`uname`"
```

- [how to sudo echo](https://askubuntu.com/questions/103643/cannot-echo-hello-x-txt-even-with-sudo)

```bash
sudo bash -c 'echo "hello" > f.txt'
echo "hello" | sudo tee f.txt  # add -a for append (>>)
```

- [enable clipboard on virtualbox](https://linuxhint.com/enable-copy-paste-virtualbox-host/)
```bash
$ sudo apt install build-essential dkms linux-headers-$(uname -r)
```

- [Preconfiguration File Example](https://www.debian.org/releases/sarge/i386/apcs01.html.en)

- [VM fusion starts headless](https://stackoverflow.com/questions/62023721/is-it-possible-to-power-on-a-vmware-fusion-virtual-machine-without-opening-the-v)

```bash
vmrun start full/path/of/your/virtual/machine/bundle nogui
```
- [installation cmd from GitHub  repo](https://github.com/ohmyzsh/ohmyzsh#basic-installation)
- [setup zsh without root](https://stackoverflow.com/questions/15293406/install-zsh-without-root-access)

# Problem

ln local -> git ok
ln git -> local wrong: no update after pull
