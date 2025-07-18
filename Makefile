.PHONY: all build depends help push run shell test

DOCKER_IMAGE_NAME ?=
DOCKER_IMAGE_TAG ?= dev
DOCKER_IMAGE_PLATFORM ?= linux/amd64

RUN = docker run -it --rm "$(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_TAG)"
BUILD = docker build --platform "$(DOCKER_IMAGE_PLATFORM)" -t "$(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_TAG)"

all: help

depends:
ifeq ($(DOCKER_IMAGE_NAME),)
	@echo "DOCKER_IMAGE_NAME environment variable is required."
	@exit 1
endif

build: depends
	$(BUILD) .

push: depends
	$(BUILD) . --push

run: depends
	$(RUN)

shell: depends
	$(RUN) bash

test: depends
	@echo "No smoke tests provided."

help:
	@echo "Manage project"
	@echo ""
	@echo "Usage:"
	@echo "  $$ make [command] ["
	@echo "    [DOCKER_IMAGE_NAME=<image>]"
	@echo "    [DOCKER_IMAGE_TAG=<tag>]"
	@echo "    [DOCKER_IMAGE_PLATFORM=<platform>]"
	@echo "  ]"
	@echo ""
	@echo "Commands:"
	@echo ""
	@echo "  $$ make build"
	@echo "  Build Docker image"
	@echo ""
	@echo "  $$ make help"
	@echo "  Print this message"
	@echo ""
	@echo "  $$ make push"
	@echo "  Build and push Docker image"
	@echo ""
	@echo "  $$ make run"
	@echo "  Run the built Docker image"
	@echo ""
	@echo "  $$ make shell"
	@echo "  Log in to the container"
	@echo ""
	@echo "  $$ make test"
	@echo "  Run smoke test"
	@echo ""
