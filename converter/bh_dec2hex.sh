bh_dec2hex()
{
    [ ${#} -eq 0 ] && return 1

	for i in ${*}; do
        printf "%X " "${i}"
    done

	echo
}
