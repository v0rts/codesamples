#!/bin/bash
#===============================================================================
#      File Name : revSort.sh
#
#          USAGE : ./revSort.sh -heH  <string>
#
#    DESCRIPTION : sort given string in reverse order
#
#        OPTIONS :
#                   -h help
#                   -e sort using the easy method
#                   -H sort using a harder method
#   REQUIREMENTS : Must run with either a -e -H and <string> 
#          NOTES : ---
#         AUTHOR : Chad Sailer(chad@novaprospect.cc)
#   ORGANIZATION : NovaProspect
#  Creation Date : 20202708
#===============================================================================
easyWay () {

    echo "${SortString}" | rev

}

hardWay () {

    echo ${SortString} | awk '{ for(i=length;i!=0;i--)x=x substr($0,i,1);}END{print x}'

}


usage="$(basename $0) [-heH] <string> ---- sort provided string in reverse order

where:
 -h  show this help text
You must use one of the following parameters:
 -e  sort using the easy method ( rev command )
 -H  sort using the harder method ( awk command )
Parameter must be followed by <string>
 <string> random ascii string

Example:
./revSort.sh -H ReverseMe
"

while getopts ':he:H:' option; do
    case "$option" in
        h) echo "$usage"
            exit
            ;;
        e) Method=easyWay
            SortString=$OPTARG
            ;;
        H) Method=hardWay
            SortString=$OPTARG
            ;;
        \?) printf "illegal option: -%s\n" "$OPTARG" >&2
            echo "$usage" >&2
            exit 1
    esac
done

# Reserved for future use
NumOfChar=`echo "${SortString}" | wc -m`

# Display string in reverse order
echo "Your string in reverse order is:"
${Method} ${SortString}
