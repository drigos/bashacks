bh_bin2hex()
{
    [ $# -eq 0 ] && return 1

	local hex
	local i

	for i in $*; do
		hex=$(echo "obase=16;ibase=2;$(echo $i)" | bc)
		echo -n "$hex "
    done
	echo
}
