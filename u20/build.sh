cp ../assets ./ -r
docker rm pwn_u20
docker build -t "pwn_u20" .
rm assets -r
