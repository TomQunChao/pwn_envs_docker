# pwn environment based on docker

include ubuntu 16.04, 18.04, 20.04, 22.04

## compile

1. install [docker](https://docs.docker.com/engine/install/ubuntu/)
2. enter u16/18/20/22, run `./build.sh` or
3. pull it on [dockerhub](https://hub.docker.com/u/tong5hu4i)

## run

enter u16/18/20/22, run `./run.sh`

to connect, run `ssh root@127.0.0.1 -p [port]`

to get port, run `docker ps` or view `run.sh`

It's recommanded to connect to docker via ssh and code remote using vscode

ssh-key login: add following config to your ~/.ssh_config, ssh-key is in `assets/ssh_keys` folder

```sh
# Your host with docker
Host 127.0.0.1
  HostName 192.168.56.105
  User root
  Port [port]
  IdentityFile ~/.ssh/id_rsa1
# ssh-key path
```

**Warning**: don't use this public key for other uses, or your projects will be exposed to danger!

## detail

- u16: python 3.5+pip 20+pwntools+tmux+peda
- u18: python 3.6+lastest pip+pwntools+tmux+peda
- u20: python 3.8+lastest pip+pwntools+tmux+peda
- This mirror use sjtu mirror, you can change it in docker file
- alternatives: pwndbg on u18/20/22, SpaceVim for coding on u18/20/22, gdb-multiarch

## debug

to debug, first run `tmux`, then replace code `io=process('filename')` with 

```pyton
io=gdb.debug('filename')
```

then run `python exp.py` in tmux

to copy, please view man page detail of tmux

## ChangeLog

### 20221204

- add ssh rsa-key login
- optimize directory structure

## TODO

- install pwndbg/gef by default
- install SpaceVim by Default
- set tmux to split screen vertically
- proxychains
- push image to ghcr.io by Github Actions
- install vscode-server by default

## Recommend Reading

- [how2heap](https://github.com/shellphish/how2heap)
- [CyberAngle's pwn turtoal(Chinese)](https://www.yuque.com/cyberangel/rg9gdm/rimvzk)
- [glibc all in one](https://github.com/fr0ster/glibc-all-in-one/tree/b3131109b8846751466b6e5a05d62c27ebffd45f)
- [Buuoj's glibc](https://buuoj.cn/resources)

Hope your issues and stars >_-