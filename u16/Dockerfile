FROM ubuntu:16.04

COPY ./assets/submodules/peda /opt/peda
COPY ./assets/configs/.bashrc /root/.bashrc
WORKDIR /root
COPY ./assets/scripts/start.sh /opt/start.sh
ENV TZ=Asia/Shanghai
RUN sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/mirror.sjtu.edu.cn/g' /etc/apt/sources.list && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    dpkg --add-architecture i386 && \
    apt update && \
    apt install gdb gdbserver ssh  man openssh-client build-essential lib32z1 libc6:i386 libncurses5:i386 libstdc++6:i386 proxychains git z3 openssh-server vim python3 python3-pip python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential radare2 python3-setuptools tmux curl python3-dev python3-setuptools wget git -y && \
    # apt install  locales locales-all && \
    echo 'root:123456' | chpasswd && \
    sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config && \
    mkdir /root/.pip && \
    mkdir /root/.ssh && \
    # wget https://aka.ms/install-vscode-server/setup.sh && chmod +x ./setup.sh && ./setup.sh \
    echo "[global] \
index-url = https://mirror.sjtu.edu.cn/pypi/web/simple \
format = columns" > /root/.pip/pip.conf && \
    curl -sSL https://bootstrap.pypa.io/pip/3.5/get-pip.py -o get-pip.py && \
    python3 get-pip.py -i https://mirror.sjtu.edu.cn/pypi/web/simple && \
# python3 -m pip install --upgrade pip -i https://mirror.sjtu.edu.cn/pypi/web/simple && \
    pip3 install pwntools zio ipython flake8 isort yapf libcsearcher ropgadget one_gadget -i https://mirror.sjtu.edu.cn/pypi/web/simple && \
    # curl -sLf https://spacevim.org/cn/install.sh | bash && \
    echo "source /opt/peda/peda.py" >> /root/.gdbinit
COPY ./assets/configs/sshd_config /etc/ssh/sshd_config
COPY ./assets/ssh_keys/id_rsa1.pub /root/.ssh/authorized_keys
EXPOSE 22
CMD ["/opt/start.sh"]
