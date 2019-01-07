echo skript se zapnul XD
for i in *
do
    echo $i
    if [ $i = 549893.txt ]
    then
        rm $i
    fi
  echo "Looping ... i is set to $i"
done