cp ../assets ./ -r
docker rm pwn_u22
docker build -t "pwn_u22" .
rm assets -r
