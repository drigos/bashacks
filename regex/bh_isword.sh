bh_isword()
{
    [ $# -ne 1 ] && return 1

    echo "$1" | grep -Eqw '^[0-9A-Za-z_]+$'
    # echo "$1" | grep -Eqw '^[[:alnum:]_]+$'
}
