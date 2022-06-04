docker rm pwn_u22
cp ~/.bashrc ./
cp ../pwndbg ./ -r
docker build -t "pwn_u22" .