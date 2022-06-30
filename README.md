# pwn environment based on docker

include ubuntu 16.04, 18.04, 20.04, 22.04

## compile

1. install [docker](https://docs.docker.com/engine/install/ubuntu/)
2. enter u16/18/20/22, run `./build.sh`

## run

enter u16/18/20/22, run `./run.sh`

to connect, run `ssh root@127.0.0.1 -p [port]`

to get port, run `docker ps` or view `run.sh`

It's recommanded to connect to docker via ssh and code remote using vscode

## detail

u16: python 3.5+pip 20+pwntools+tmux+peda

u18: python 3.6+last pip+pwntools+tmux+peda

u20: python 3.8+last pip+pwntools+tmux+peda

alternatives: pwndbg on u18/20/22, SpaceVim for coding on u18/20/22, gdb-multiarch

## debug

to debug, first run `tmux`, then replace code `io=process('filename')` with 

```pyton
io=gdb.debug('filename')
```

then run `python exp.py` in tmux

to copy, please view man page detail of tmux
