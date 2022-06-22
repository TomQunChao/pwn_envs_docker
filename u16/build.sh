cp ../sshd_config ./
cp ../peda ./ -r
cp ../.bashrc ./
cp ../init.toml ./
docker rm pwn_u16
docker build -t "pwn_u16" .
rm ./peda -r
rm ./sshd_config
rm ./.bashrc
rm ./init.toml
