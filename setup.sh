#!/bin/bash
source .env

file=$(<.pypirc_template)
echo ${file//xxxxxx/$pypipassword} > .pypirc

rm -rf *.egg-info/* dist/*
python setup.py sdist bdist_wheel
twine upload -r pypitest dist/* --config-file=.pypirc

#file=$(<.pypirc)
#echo $file
rm .pypirc