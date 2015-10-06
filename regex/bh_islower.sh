bh_islower()
{
    [ ${#} -ne 1 ] && return 1

    echo "${1}" | grep -Eqw '^[a-z]+$'
    # echo "${1}" | grep -Eqw '^[[:lower:]]+$'
}
