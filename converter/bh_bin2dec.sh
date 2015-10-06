bh_bin2dec()
{
    [ ${#} -eq 0 ] && return 1

    for i in $*; do
        echo -n $((2#${i}))
        echo -n " "
    done

    echo
}
