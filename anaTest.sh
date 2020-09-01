#!/bin/bash
#===============================================================================
#      File Name : test2.sh
#
#          USAGE :
#
#    DESCRIPTION :
#
#        OPTIONS : ---
#   REQUIREMENTS : ---
#          NOTES : ---
#         AUTHOR : Chad Sailer(chad@novaprospect.cc)
#   ORGANIZATION : ---
#  Creation Date : 20202808
#  Last Modified : Fri Aug 28 15:56:54 2020
#===============================================================================

testString1=$1
testString2=$2

testAnanagram () {

    if [[ $testString1 = $testString2 ]]; then
        echo "$testString1 and $testString2 are the same string"
        exit 0
    fi

    string1Sorted=`echo "$testString1" | grep -o . | sort |tr -d "\n"`
    string2Sorted=`echo "$testString2" | grep -o . | sort |tr -d "\n"`\

    if [[ $string1Sorted != $string2Sorted ]]; then
        echo "$testString1 and $testString2"
        echo "Are not ananagram: False"
        exit 1
    else
        echo "$testString1 and $testString2"
        echo "Are ananagram: True"
        exit 0
    fi

}

testAnanagram 
