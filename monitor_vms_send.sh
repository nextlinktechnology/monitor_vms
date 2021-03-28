
# output=$(./monitor_vms_test_output.sh 2>&1)
output=$(./monitor_vms.sh 2>&1)
echo "$output"



# outout="{text:"+${output//$'\n'/<br />}+"}"

# outout="{text:\"$(echo $output)\"}"
outout="{text:\"$(echo "$output")\"}"

# "$(echo "$VAR")"

echo $outout

sean_test_wh="https://chat.googleapis.com/v1/spaces/AAAAxEgm3po/messages?key=AIzaSyDdI0hCZtE6vySjMm-WEfRq3CPzqKqqsHI&token=7ZRPoNQwpaTe8XS6QNs-Sp7wggMYwYJyuW_jw0bD8nQ%3D"
mf_room_wh="https://chat.googleapis.com/v1/spaces/AAAAMjZbV1Y/messages?key=AIzaSyDdI0hCZtE6vySjMm-WEfRq3CPzqKqqsHI&token=nqpd02pJceHlnRxibRGJU0xfkACceY8MJtT0fUZr0Vk%3D"
curl -X POST -H "Content-Type: application/json" -d "$outout" $sean_test_wh
# $mf_room_wh



# curl -X POST -H "Content-Type: application/json" -d "{text: $output}" "https://chat.googleapis.com/v1/spaces/AAAAMjZbV1Y/messages?key=AIzaSyDdI0hCZtE6vySjMm-WEfRq3CPzqKqqsHI&token=nqpd02pJceHlnRxibRGJU0xfkACceY8MJtT0fUZr0Vk%3D"
