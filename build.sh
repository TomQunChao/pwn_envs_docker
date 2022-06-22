cp ../sshd_config ./
cp ../peda ./ -r
cp ../.bashrc ./
cp ../init.toml ./
docker rm pwn_ENV_VERSION
docker build -t "pwn_ENV_VERSION" .
rm ./peda -r
rm ./sshd_config
rm ./.bashrc
rm ./init.toml
