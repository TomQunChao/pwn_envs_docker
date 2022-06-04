docker rm pwn_u16
cp ~/.bashrc ./
cp ../pwndbg ./ -r
docker build -t "pwn_u16" .