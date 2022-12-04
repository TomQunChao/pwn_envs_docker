envs=("u16" "u18" "u20" "u22")
for e in ${envs[*]}
do
  $("$e/run.sh")
done
