setup:
	python3 -m venv ~/.myrepo

install:
	python3 -m pip install --upgrade pip &&\
		pip3 install -r requirements.txt
		

test:
	# python -m pytest -vv --cov=myrepolib tests/*.py
	# python -m pytest --nbval notebook.ipynb
	

lint:
	pylint --disable=R,C hello.py

all: install lint test
