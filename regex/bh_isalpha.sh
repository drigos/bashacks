bh_isalpha()
{
    [ $# -ne 1 ] && return 1

    echo "$1" | grep -Eqw '^[A-Za-z]+$'
    # echo "$1" | grep -Eqw '^[[:alpha:]]+$'
}
