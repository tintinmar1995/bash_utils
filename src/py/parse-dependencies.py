import os, sys

if len(sys.argv) != 2:
    raise Exception('Usage : update-requirements.py path/../module')

dependencies = []
for root, subdir, files in os.walk(sys.argv[1]):
    for filename in [f for f in files if f.endswith('.py')]:
        with open(os.path.join(root, filename), 'r') as f:
            script = f.readlines()
        for row in script:
            if row.startswith('from '):
                dependencies.append(row.replace('from ', '').split(' import ')[0])
            elif row.startswith('import '):
                dependencies.extend(row.replace('import ', '').split(' as ')[0].split(' '))
dependencies = set([d.replace('\n', '').replace(' ', '').split('.')[0] for d in dependencies])
dependencies = [d for d in dependencies if len(d)]
dependencies.sort()
for d in dependencies:
    print(d)