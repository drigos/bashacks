bh_base64()
{
    [ ${#} -ne 1 ] && return 1

    echo ${1} | base64
}
