run:
	@bin/example

build:
	@export DOCKER_BUILDKIT=1 && docker build -t go-builder:latest --target bin --output bin/ .