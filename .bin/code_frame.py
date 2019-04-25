#!/usr/bin/python3

# /* .--------------------------------------------------------------------------.
#  * |                                                                          |
#  * |                               Ala ma kota                                |
#  * |                                                                          |
#  * '--------------------------------------------------------------------------'
#  */

import sys

text = ' '.join(sys.argv[1:])

fil  = f" * |{text.center(74)}|"

top  = "/* ." + ("-" * 74) + "."
mid  = " * |" + (" " * 74) + "|"
btm  = " * '" + ("-" * 74) + "'\n */"

print('\n'.join([top, mid, fil, mid, btm]))
