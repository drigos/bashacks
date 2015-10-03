bashacks()
{
    echo "use -> man bashacks"

    [ $# -eq 0 ] && return 0

    case "$1" in
        "-c")
            local category
            [ $# -ge 2 ] && category=$(echo $2 | tr '[:upper:]' '[:lower:]')

            case "${category}" in
                "1" | "converter")
                    echo -en "
CONVERTER\n\
bh_asc2dec\n\
bh_dec2asc\n\
bh_bin2dec\n\
bh_hex2dec\n\
bh_bin2hex\n\
bh_dec2hex\n\
bh_dec2bin\n\
bh_hex2bin\n\
bh_str2hex\n\
bh_str2hexr\n\
bh_hex2str\n"
                    ;;
                "2" | "regex")
                    echo -en "
REGEX\n\
bh_isalnum\n\
bh_isalpha\n\
bh_isascii\n\
bh_isdigit\n\
bh_isxdigit\n\
bh_isgraph\n\
bh_isprint\n\
bh_ispunct\n\
bh_islower\n\
bh_isupper\n\
bh_isspace\n\
bh_iscntrl\n"
                    ;;
                "3" | "encode")
                    echo -en "
ENCODE\n\
bh_asciitable\n\
bh_utf8table\n\
bh_bcdtable\n\
bh_xs3table\n\
bh_unbase64\n\
bh_urlencode\n\
bh_urldecode\n"
                    ;;
                "4" | "crypto")
                    echo -en "
CRYPTO\n\
bh_rotall\n\
bh_rot\n\
bh_strxor\n"
                    ;;
                "5" | "hash")
                    echo -en "
HASH\n\
bh_hashes\n\
bh_md5\n\
bh_unmd5\n"
                    ;;
                "6" | "reverse")
                    echo -en "
REVERSE ENGINEERING\n\
bh_intel\n\
bh_asm2sc\n\
bh_sc2asm\n\
bh_bin2sc\n\
bh_asmgrep\n\
bh_asminfo\n"
                    ;;
                "7" | "programming")
                    echo -en "
PROGRAMMING\n\
bh_skel_c\n\
bh_skel_python\n\
bh_isperlm\n"
                    ;;
                "8" | "math")
                    echo -en "
MATH\n\
bh_charcalc\n\
bh_hexcalc\n\
bh_pow\n\
bh_shl\n\
bh_shr\n\
bh_xor\n"
                    ;;
                "9" | "networking")
                    echo -en "
NETWORKING\n\
bh_bin2ip\n\
bh_ip2bin\n\
bh_hostcalc\n\
bh_ip2geo\n\
bh_myip\n\
bh_wscan\n"
                    ;;
                "10" | "www")
                    echo -en "
WWW\n\
bh_dlsite\n\
bh_wgetr\n\
bh_get\n"
                    ;;
                "11" | "social")
                    echo -en "
SOCIAL\n\
bh_websearch\n"
                    ;;
                "12" | "forensics")
                    echo -en "
FORENSICS\n\
bh_dumpmem\n\
bh_dumpheap\n\
bh_dumpstack\n\
bh_findmime\n"
                    ;;
                "13" | "filesystem")
                    echo -en "
FILESYSTEM\n\
bh_bkp\n\
bh_zipmal\n\
bh_md5rename\n"
                    ;;
                "14" | "misc")
                    echo -en "
MISC\n\
bh_matrix\n\
bh_raffle\n"
                    ;;
                *)
                    echo -en "
 1) Converter\n\
 2) Regex\n\
 3) Encode\n\
 4) Crypto\n\
 5) Hash\n\
 6) Reverse Engineering\n\
 7) Programming\n\
 8) Math\n\
 9) Networking\n\
10) WWW\n\
11) Social Engineering\n\
12) Forensics\n\
13) Filesystem\n\
14) Misc\n"
                    ;;
            esac
            ;;
    esac
}
