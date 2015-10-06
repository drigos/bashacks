bh_ispunct()
{
	[ ${#} -ne 1 ] && return 1

	echo "${1}" | grep -Eqw "^[][!\"#$%&'()*+,./:;<=>?@\^_\`{|}~-]+$"
	# echo "${1}" | grep -Eqw '^[[:punct:]]+$'
}
