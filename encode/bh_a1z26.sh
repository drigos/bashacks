bh_a1z26en()
{
    [ $# -ne 1 ] && return 1

    local size=$((${#1}-1))
    local hyphen=""

    for i in $(seq 0 ${size}); do
        char=$(printf "%d\n" "'${1:$i:1}")

        if [ ${char} -ge 65 -a ${char} -le 90 ]
        then
            [ $hyphen ] && echo -n "-"
            echo -n $((${char} - 64))
            hyphen="1"
        elif [ ${char} -ge 97 -a ${char} -le 122 ]
        then
            [ $hyphen ] && echo -n "-"
            echo -n $((${char} - 96))
            hyphen="1"
        else
            echo -n "${1:$i:1}"
            hyphen=""
        fi
    done

    echo
}
