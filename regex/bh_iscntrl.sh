bh_iscntrl()
{
    [ ${#} -ne 1 ] && return 1

    echo "${1}" | grep -Pqw '^[\x00-\x1F\x7F]+$'
    # echo "${1}" | grep -Eqw '^[[:cntrl:]]+$'
}
