echo Skript jede
echo zadej cislo
read cislo
echo zadej mocninu
read mocnina

#echo skript se zapnul XD
i=2
pcislo=$cislo
while [ $i -le $mocnina ]
do
    i=$((i+1))
    cislo=$((cislo*pcislo))
done



echo vysledek je $cislo