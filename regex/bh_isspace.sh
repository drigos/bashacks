bh_isspace()
{
    [ ${#} -ne 1 ] && return 1

    echo "${1}" | grep -Pqw '^[\x09\x0A\x0B\x0C\x0D\x20]+$'
    # echo "${1}" | grep -Eqw '^[[:space:]]+$'
}
