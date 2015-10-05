bh_isblank()
{
    [ $# -ne 1 ] && return 1

    echo "$1" | grep -Pqw '^[\x09\x20]+$'
    # echo "$1" | grep -Eqw '^[[:blank:]]+$'
}
