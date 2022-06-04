docker rm pwn_u18
cp ~/.bashrc ./
cp ../pwndbg ./ -r
docker build -t "pwn_u18" .