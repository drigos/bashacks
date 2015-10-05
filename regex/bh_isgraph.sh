bh_isgraph()
{
    [ $# -ne 1 ] && return 1

    echo "$1" | grep -Pqw '^[\x21-\x7E]+$'
    # echo "$1" | grep -Eqw '^[[:graph:]]+$'
}
