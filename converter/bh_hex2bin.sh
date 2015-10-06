bh_hex2bin()
{
    [ ${#} -eq 0 ] && return 1

	local bin

	for i in ${*}; do
		bin=$(echo "obase=2;ibase=16;$(echo ${i#0x} | tr a-f A-F)" | bc)
		echo -n "$bin "
    done

	echo
}
