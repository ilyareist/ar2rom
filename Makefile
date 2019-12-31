NUMBER := $(or ${NUM},${NUM},1)


.PHONY: test
help:
	@exec go run .


.PHONY: run
run:
	@exec go run main.go ${NUMBER}

