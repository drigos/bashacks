bh_dec2bin()
{
    [ ${#} -eq 0 ] && return 1

    local bin

	for i in ${*}; do
        bin=$(echo "obase=2;${i}" | bc)
		echo -n "${bin} "
    done

	echo
}
