install:
	python -m pip install --upgrade pip
		pip install -r requirements.txt

format:	
	black *.py 

lint:
	ruff check *.py

#  container-lint:
#  	docker run --rm -i hadolint/hadolint < Dockerfile

test:
	python -m pytest test_main.py

run:
	python main.py
		
all: install lint test format run