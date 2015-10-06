bh_str2hexr()
{
    [ ${#} -lt 1 -o ${#} -gt 2 ] && return 1

    case "${1}" in
	    "-x" | "-0" | "-c" | "-s")
	        bh_str2hex ${1} "$(echo "${2}" | rev)"
		;;
        *)
		    bh_str2hex "$(echo "${1}" | rev)"
	    ;;
	esac
}
