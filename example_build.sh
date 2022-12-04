cp ../assets ./ -r
docker rm pwn_ENV_VERSION
docker build -t "pwn_ENV_VERSION" .
rm assets -rf
