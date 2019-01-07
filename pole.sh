#!/bin/bash


pole[0]=""
sx=8
sy=8
t=0
poleL=20
smer=1
delkaocasu=0
mdelkaocasu=5000
px[0]=sx
py[0]=sy
lx=0
ly=0

while [[ $c -le 1000000 ]]
do
#cistic
    for (( i=0; i<=$poleL; i++))
    do
        for (( o=0; o<=$poleL; o++))

        do
        pole[$((i*poleL+o))]=_
        done
    done
#pohyb
    lx=$sy
    ly=$sx
    

    read smer
    case $smer in
        w)
            sy=$((sy-1))
            #break
            ;;
        s)
            sy=$((sy+1))
            #break
            ;;
        a)
            sx=$((sx-1))
            #break
            ;;
        d)
            sx=$((sx+1))
            ;;
    esac


#ocas
#px[${#px[@]}]=sx
#py[${#py[@]}]=sy
 #   for (( i=0; i<=$((py[${#py[@]}])); i++))
  ## echo $i
    #pole[$((py[i]*poleL+px[i]))]=

#    done
#ocasreducer
    
    #while [ $delkaocasu -le ${#px[@]} ]
    #do
    #$delkaocasu=$((delkaocasu+1))
    #done


    
#kratic ocasu

    px[$delkaocasu]=$lx
    py[$delkaocasu]=$ly
    delkaocasu=$((delkaocasu+1))

while [ $mdelkaocasu -le $delkaocasu ]
do
    for(( i=0; i<$((delkaocasu)); i++))
    do
        px[$i]=px[$((i+1))]
        py[$i]=py[$((i+1))]

        

    done
        echo hi

    delkaocasu=$((delkaocasu-1))
done

#zapis
    pole[$((sy*poleL+sx))]=O


    for (( i=0; i<=$delkaocasu; i++))
    do

        pomx=px[$i]
        pomy=py[$i]
        pole[$((pomx*poleL+pomy))]=1
    done




#zobrazovac
    pom=""
    clear

    for (( i=0; i<=$poleL; i++))
    do
        for (( o=0; o<=$poleL; o++))
        do
    pom="$pom ${pole[$((i*poleL+o))]}"
    done
    echo $pom
    pom=""
    done
    c=$((c+1))
done