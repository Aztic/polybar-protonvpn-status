t=0

toggle() {
    t=$(((t + 1) % 2))
}


trap "toggle" USR1

while true; do
<<<<<<< HEAD

    local_addr=$(hostname -I | sed 's/^[ \t]*//;s/[ \t]*$//' | cut -d' ' -f1);
=======
    local_addr=$(hostname -I | sed 's/^[ \t]*//;s/[ \t]*$//');
>>>>>>> 7ad20c7053cf9dd60269795dfcc42244eab9fc2d
    proton_status=$(protonvpn status);
    current_server=$(grep -oEi '[a-zA-Z]*#\w+' <<< "$proton_status");
    current_status=$(grep -oEi '(Connected|Disconnected)' <<< "$proton_status");
    current_proton_ip=$(grep -oEi '[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*' <<< "$proton_status");

    if [ $t -eq 0 ]; then
        echo "$current_status ($local_addr) $current_server";
    else
        echo "$current_status ($current_proton_ip) $current_server";
    fi
    sleep 1 &
    wait
done

