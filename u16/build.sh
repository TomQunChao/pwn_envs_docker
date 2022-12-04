cp ../assets ./ -r
docker rm pwn_u16
docker build -t "pwn_u16" .
rm assets -r
