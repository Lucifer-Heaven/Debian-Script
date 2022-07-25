# Debian-Script
11.4 bullseye

## Todo

- [ ] Preconf file

- [ ] vim theme

  - [ ] colne & setup

- [ ] zsh

  - [ ] Setup

  - [ ] oh my zsh

    - [ ] clone & setup

       [installation cmd from GitHub  repo](https://github.com/ohmyzsh/ohmyzsh#basic-installation)

    - [ ] [setup zsh without root](https://stackoverflow.com/questions/15293406/install-zsh-without-root-access)

      better to use bash instead zsh as default

- [ ] personal zsh && vim config file

  - [ ] Based on diff system
    - [ ] macOS
    - [ ] Debian

## Package list

> needs to be installed before clone:
>
> ```bash
> $ su
>
> # apt update && apt install sudo git -y && echo “username ALL=(ALL) NOPASSWD:ALL” >> /etc/sudoers && exit
> $ git clone https://github.com/luc1fev/Debian-Script.git
> # username:Lucifer-Heaven
> # token:*********
> ```
>

### Auto_update_install:

- vim

editor instead of vi

- [ ] Alias vim with vi/ uninstall vi??

- unzip & tar

allow you unpack/pack zip,gz,tar file

- oh my zsh

better powerful command interpreter

- tree

list file as tree view

- lrzsz

easy tool to let you upload/download through terminal. **not good enough for large file**

## some helpful resources

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

[enable clipboard on virtualbox](https://linuxhint.com/enable-copy-paste-virtualbox-host/)
```bash
$ sudo apt install build-essential dkms linux-headers-$(uname -r)
```

- [Preconfiguration File Example](https://www.debian.org/releases/sarge/i386/apcs01.html.en)

- [VM fusion starts headless](https://stackoverflow.com/questions/62023721/is-it-possible-to-power-on-a-vmware-fusion-virtual-machine-without-opening-the-v)

```bash
vmrun start full/path/of/your/virtual/machine/bundle nogui
```
# draft

## oh my zsh

after installed oh my zsh
cp .zshrc ~/.zshrc
add plugins for debian 11
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```