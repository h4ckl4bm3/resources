.PHONY: run

all: run

run:
	echo "Access at http://127.0.0.1:8080"
	python -m SimpleHTTPServer 8080

