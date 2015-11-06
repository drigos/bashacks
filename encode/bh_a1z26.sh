bh_a1z26()
{
    [ ${#} -ne 1 ] && return 1

    local hyphen=""

    for i in $(bh_str2hex -0 "${1}"); do
        if [ $((${i})) -ge 65 -a $((${i})) -le 90 ]
        then
            [ ${hyphen} ] && echo -n "-"
            echo -n $((${i} - 0x40))
            hyphen="1"
        elif [ $((${i})) -ge 97 -a $((${i})) -le 122 ]
        then
            [ ${hyphen} ] && echo -n "-"
            echo -n $((${i} - 0x60))
            hyphen="1"
        else
            echo -en ${i/0/\\}
            hyphen=""
        fi
    done

    echo
}
