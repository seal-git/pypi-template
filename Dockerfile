FROM python:3.9

RUN apt-get update &&\
 apt install -y virtualenv&&\
 pip install --upgrade pip &&\
 pip install pipenv &&\
 pip install --upgrade setuptools &&\

RUN ln -s /workspace/.pypirc ~/.pypirc

WORKDIR /workspace
CMD pipenv install && pipenv install --system