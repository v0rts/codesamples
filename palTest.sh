#!/bin/bash
#===============================================================================
#      File Name : test.sh
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
#  Last Modified : Fri Aug 28 15:13:00 2020
#===============================================================================

testString=$1

testFunction () {

reverseString=`echo "$testString" | rev`

if [[ $testString = $reverseString ]]; then
    echo "$testString is a palindrome: True"
else
    echo "$testString is not palindrome: False"
fi


}

testFunction

