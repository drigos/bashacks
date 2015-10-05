bh_isprint()
{
	# nao ta rolando
	local i

	for i in $(bh_str2hex -0 "$1"); do
		[ $(($i)) -ge 32 -a $(($i)) -le 126 ] || return 1
	done
	return 0
}
