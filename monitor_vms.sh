zone_a="asia-east1-a"
zone_b="asia-east1-b"
zone_c="asia-east1-c"

n2s16="n2-standard-16"
n2hm32="n2-highmem-32"
n2hm64="n2-highmem-64"


zones=($zone_a $zone_b $zone_c)
vmtypes=($n2s16 $n2hm32 $n2hm64)


sep="  "

botoutput=""

echo " "
echo "New Monitoring Event"
echo `date`

for i in ${zones[@]}
do
    echo ""
    for j in ${vmtypes[@]}
    do 
        result="$(gcloud compute instances list | grep "$i$sep$j" | wc -l)"
        echo "$i$sep$j: $result"



    done

    total="$(gcloud compute instances list | grep "$i" | wc -l)"
    echo ">>> Total VMs in $i: $total"

done









# echo "${zone_a}${sep}${n2hm32}"

# a_n2s16=$(gcloud compute instances list | grep "asia-east1-a  n2-standard-16" | wc -l)
# a_n2hm32=$(gcloud compute instances list | grep "asia-east1-a  n2-highmem-32" | wc -l)
# a_n2hm64=$(gcloud compute instances list | grep "asia-east1-a  n2-highmem-64" | wc -l)


# b_n2s16=$(gcloud compute instances list | grep "asia-east1-b  n2-standard-16" | wc -l)
# b_n2hm32=$(gcloud compute instances list | grep "asia-east1-b  n2-highmem-32" | wc -l)
# b_n2hm64=$(gcloud compute instances list | grep "asia-east1-b  n2-highmem-64" | wc -l)



# c_n2s16=$(gcloud compute instances list | grep "asia-east1-c  n2-standard-16" | wc -l)
# c_n2hm32=$(gcloud compute instances list | grep "asia-east1-c  n2-highmem-32" | wc -l)
# c_n2hm64=$(gcloud compute instances list | grep "asia-east1-c  n2-highmem-64" | wc -l)

