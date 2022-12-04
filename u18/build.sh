cp ../assets ./ -r
docker rm pwn_u18
docker build -t "pwn_u18" .
rm assets -r
