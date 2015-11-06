bh_hex2str()
{
    [ ${#} -ne 1 ] && return 1

    local hex

    hex=$(echo "${1}" | sed 's/\(0x\|\\x\| \|{\|}\|,\)//g')

    # insert \x each two chars
    hex=$(echo "${hex}" | sed 's/../\\x&/g')

    echo -e "${hex}"
}
