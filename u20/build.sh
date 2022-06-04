docker rm pwn_u20
cp ~/.bashrc ./
cp ../pwndbg ./ -r
docker build -t "pwn_u20" .