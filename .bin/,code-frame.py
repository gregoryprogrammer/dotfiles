#!/usr/bin/python3

# /* .--------------------------------------------------------------------------.
#  * |                                                                          |
#  * |                               Ala ma kota                                |
#  * |                                                                          |
#  * '--------------------------------------------------------------------------'
#  */

import argparse
import sys

parser = argparse.ArgumentParser()
parser.add_argument("--lang", help="language", default="bash")
parser.add_argument("--text", nargs="*")
args = parser.parse_args()


COMMENTING = {
    "cpp": {"signs": ("\n/* ", " * ", " */"), "width": 76},
    "bash": {"signs": ("# ", "# ", ""), "width": 77},
}


def make_framed(text, commenting):
    width = commenting["width"]
    top = "." + "-" * (width - 2) + "."
    mid = "|" + " " * (width - 2) + "|"
    btm = "'" + "-" * (width - 2) + "'"

    rows = text.split(chr(0x0D))  # list of rows
    max_length = max(len(row) for row in rows)
    rows = [row.ljust(max_length) for row in rows]

    result = []
    result.append(top)
    result.append(mid)
    for row in rows:
        result.append("|" + row.center(width - 2) + "|")
    result.append(mid)
    result.append(btm)

    return result


def comment(rows, commenting):
    signs = commenting["signs"]
    result = []
    result.append(signs[0] + rows[0])
    for row in rows[1:]:
        result.append(signs[1] + row)

    if signs[2] != "":
        result.append(signs[2])
    return result


commenting = COMMENTING.get(args.lang, "bash")
text = " ".join(args.text).strip()
framed = make_framed(text, commenting)
output = "\n".join(comment(framed, commenting))
print(output)
