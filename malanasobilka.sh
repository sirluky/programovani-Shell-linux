echo Skript jede

max=10

#echo skript se zapnul XD
i=1
o=1
output=""


pcislo=$cislo
while [ $o -le $max ]
do

    while [ $i -le $max ]
    do
    v=$((i*o))
    output="$output $v"
    i=$((i+1))

    done
i=0
o=$((o+1))
#echo $o
echo $output
output=""
    
  #echo "Looping ... i is set to $i"
  #echo $cislo
done


