bh_bin2hex()
{
    [ ${#} -eq 0 ] && return 1

    local hex

	for i in ${*}; do
		hex=$(echo "obase=16;ibase=2;${i}" | bc)
		echo -n "${hex} "
    done

	echo
}
