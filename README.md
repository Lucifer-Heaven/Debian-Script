# Debian-Script
# Who are as lazy as me need this one step setup script to leave computer install alone.

# Auto_update_install.sh

you can take a rest while it setting up by itself for 5-10 mins

## package list

### Auto_update_install:

- vim

editor

- unzip & tar

allow you unpack/pack zip,gz,tar file

- mercurial

 free private personal version control

- oh my zsh

better powerful command interpreter

- tree

list file as tree view

- lrzsz

easy tool to let you upload/download through terminal. **not good enough for large file**

## some helpful resources

[How to configure .zshrc for specfic os](https://unix.stackexchange.com/questions/252166/how-to-configure-zshrc-for-specfic-os)
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
