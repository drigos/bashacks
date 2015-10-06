bh_hex2dec()
{
    [ ${#} -eq 0 ] && return 1

	for i in ${*}; do
        echo -n "$((0x${i#0x})) "
    done

	echo
}
