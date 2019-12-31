NUMBER := $(or ${NUM},${NUM},1)

.PHONY: test
test:
	@exec go run .

.PHONY: run-docker
run-docker:
	@exec ./ar2rom ${NUMBER}

.PHONY: build-docker
build-docker:
	@exec docker build -t ar2rom:1.0 .

