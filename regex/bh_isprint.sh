bh_isprint()
{
	[ ${#} -ne 1 ] && return 1

	echo "${1}" | grep -Pqw '^[\x20-\x7E]+$'
	# echo "${1}" | grep -Eqw '^[[:print:]]+$'
}
