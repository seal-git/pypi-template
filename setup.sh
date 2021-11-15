#!/bin/bash
source .env
cat .pypirc_template | while read line
do
  echo ${line/xxxxxx/$pypipassword}
done > .pypirc

rm -rf *.egg-info/* dist/*
python setup.py sdist bdist_wheel
twine upload -r pypitest dist/*
cat .pypirc | while read line
do
  echo $line
done

rm .pypirc