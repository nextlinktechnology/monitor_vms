zone_a="asia-east1-a"
zone_b="asia-east1-b"
zone_c="asia-east1-c"

n2s16="n2-standard-16"
n2hm32="n2-highmem-32"
n2hm64="n2-highmem-64"


zones=($zone_a $zone_b $zone_c)
vmtypes=($n2s16 $n2hm32 $n2hm64)

# echo $(zones)
# echo $(vmtypes)

sep="  "

botoutput=""
echo `date`

for i in ${zones[@]}
do
    echo ""
    for j in ${vmtypes[@]}
    do 
        result="XD"
        echo "$i$sep$j: $result"
    done

    total="X)"
    echo ">>> Total VMs in $i: $total"

done