#! env python3

import os
import sys
from os.path import splitext

input_file = sys.argv[1]
output_file_ps = f'/tmp/{splitext(input_file)[0]}.ps'
output_file_pdf = f'{splitext(input_file)[0]}.pdf'

os.system(f'enscript -p {output_file_ps} {input_file}')
os.system(f'ps2pdf {output_file_ps} {output_file_pdf}')
os.system(f'rm {output_file_ps}')

print(input_file, '→',  output_file_pdf)




