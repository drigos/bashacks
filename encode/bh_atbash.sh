bh_atbash()
{
	[ ${#} -ne 1 ] && return 1;

	za=$(echo {z..a} | tr -d ' ')

	echo -ne "${1}" | tr a-z ${za} | tr A-Z ${za^^}
	echo
}
