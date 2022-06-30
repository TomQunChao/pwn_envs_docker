FROM ubuntu:22.04

COPY ./peda /opt/peda
COPY ./.bashrc /root/.bashrc
WORKDIR /root
COPY ./.bashrc /root
COPY ./start.sh /opt/start.sh
ENV TZ=Asia/Shanghai
RUN sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/mirror.sjtu.edu.cn/g' /etc/apt/sources.list && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    dpkg --add-architecture i386 && \
    apt update && \
    apt install python3 python3-pip python3-dev git lib32z1 libc6:i386 libncurses5:i386 libstdc++6:i386 libssl-dev libffi-dev build-essential gdb gdbserver ssh  man openssh-client build-essential proxychains git z3 openssh-server vim python3 python3-pip python3-setuptools tmux curl python3-dev python3-setuptools wget git -y && \
    # apt install  locales locales-all && \
    echo 'root:123456' | chpasswd && \
    sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config && \
    mkdir /root/.pip && \
    echo "[global] \
index-url = https://mirror.sjtu.edu.cn/pypi/web/simple \
format = columns" > /root/.pip/pip.conf && \
    # curl https://bootstrap.pypa.io/pip/3.5/get-pip.py | python3 && \
    python3 -m pip install --upgrade pip -i https://mirror.sjtu.edu.cn/pypi/web/simple && \
    pip3 install pwntools zio ipython flake8 isort yapf -i https://mirror.sjtu.edu.cn/pypi/web/simple && \
    curl -sLf https://spacevim.org/cn/install.sh | bash && \
    echo "source /opt/peda/peda.py" >> /root/.gdbinit
COPY ./sshd_config /etc/ssh/sshd_config
COPY ./init.toml /root/.SpaceVim.d/init.toml
EXPOSE 22
CMD ["/opt/start.sh"]
