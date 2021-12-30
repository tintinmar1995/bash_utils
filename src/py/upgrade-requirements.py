import subprocess
import sys

if len(sys.argv) != 2:
    raise Exception('Usage : update-requirements.py path/../requirements.txt')

with open(sys.argv[1], 'r') as f:
    requirements = [
        name_version.split('==')[0]
        for name_version in f.read().split('\n')
        if len(name_version.split('==')[0])
    ]
    
result = subprocess.check_output(f"pip install {' '.join(requirements)}", shell=True)
for r in result.decode('utf-8').split('\n'):
    print(r)
