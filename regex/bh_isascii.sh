bh_isascii()
{
    [ $# -ne 1 ] && return 1

    # for i in $(bh_str2hex -0 "$1"); do
    #     [ $((${i})) -ge 0 -a $((${i})) -le 127 ] || return 1
    # done
    #
    # return 0

    echo "$1" | grep -Pqw '^[\x00-\x7F]+$' 2> /dev/null
    # echo "$1" | grep -Eqw '^[[:cntrl:][:print:]]+$'
}
