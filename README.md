# pwn environment based on docker

include ubuntu 16.04, 18.04, 20.04, 22.04

## compile

1. install [docker](https://docs.docker.com/engine/install/ubuntu/)
2. enter u16/18/20/22, run `./build.sh`

## run

enter u16/18/20/22, run `./run.sh`

to connect, run `ssh root@127.0.0.1 -p [port]`

to get port, run `docker ps` or view `run.sh`

## detail

u16: python2.7+pip 20+pwntools+tmux

u18: python 3.6+last pip+pwntools+tmux

u20: python 3.8+last pip+pwntools+tmux

## debug

to debug, first run `tmux`, then replace code `io=process('filename')` with 

```pyton
io=gdb.debug('filename')
```

then runexp.py

to copy, please view man page detail of tmux
