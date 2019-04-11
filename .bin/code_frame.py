#!/usr/bin/python3

# /* .--------------------------------------------------------------------------.
#  * |                                                                          |
#  * |                               Ala ma kota                                |
#  * |                                                                          |
#  * '--------------------------------------------------------------------------'
#  */

import sys

def framed(text, width):
    top = '.' + '-' * (width - 2) + '.'
    mid = '|' + ' ' * (width - 2) + '|'
    btm = "'" + '-' * (width - 2) + "'"

    rows = text.split(chr(0x0d))  # list of rows
    max_length = max(len(row) for row in rows)
    rows = [row.ljust(max_length) for row in rows]

    result = []
    result.append(top)
    result.append(mid)
    for row in rows:
        result.append( '|' + row.center(width - 2) + '|')
    result.append(mid)
    result.append(btm)

    return result

def cpp_comment(rows):
    result = []
    result.append('')
    result.append('/* ' + rows[0])
    for row in rows[1:]:
        result.append(' * ' + row)
    result.append(' */')
    return result

def python_comment(rows):
    result = []
    result.append('')
    for row in rows:
        result.append('# ' + row)
    return result

CPP_WIDTH = 76
PYTHON_WIDTH = 77

text = ' '.join(sys.argv[1:]).strip()

print('\n'.join(cpp_comment(framed(text, CPP_WIDTH))))

# TODO argparse python
#  print('\n'.join(python_comment(framed(text, PYTHON_WIDTH))))
