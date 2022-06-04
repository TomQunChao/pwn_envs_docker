FROM ubuntu:20.04

COPY ./pwndbg /opt/pwndbg
WORKDIR /opt/pwndbg
COPY ./.bashrc /root
COPY ./start.sh /opt/start.sh
ENV TZ=Asia/Shanghai
RUN sed -i 's/http:\/\/cn.archive.ubuntu.com/http:\/\/mirror.sjtu.edu.cn/g' /etc/apt/sources.list && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    apt update && \
    apt install gdb gdbserver ssh  man openssh-client build-essential proxychains git z3 openssh-server vim python3 python3-pip python3-setuptools tmux curl python3-dev python3-setuptools wget git -y && \
    # apt install  locales locales-all && \
    echo 'root:123456' | chpasswd && \
    sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config && \
    mkdir /root/.pip && \
    echo "[global]\
index-url = https://mirror.sjtu.edu.cn/pypi/web/simple\
format = columns" > /root/.pip/pip.conf && \
    # curl https://bootstrap.pypa.io/pip/3.5/get-pip.py | python3 && \
    python3 -m pip install pip && \
    pip3 install pwntools zio ipython && \
    ./setup.sh

EXPOSE 22
CMD ["/opt/start.sh"]
