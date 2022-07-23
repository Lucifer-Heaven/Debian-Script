# Debian-Script
11.4 bullseye
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

[how to sudo echo](https://askubuntu.com/questions/103643/cannot-echo-hello-x-txt-even-with-sudo)
```bash
sudo bash -c 'echo "hello" > f.txt'
echo "hello" | sudo tee f.txt  # add -a for append (>>)

```