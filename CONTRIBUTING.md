Contributing
=====

License
-----

See [LICENSE](./LICENSE).

Versioning
-----

[Semantic Versioning](https://semver.org/).

Local development environment
-----

### Requirements

The local environment required:

* Docker
* GNU Make

### Available commands

To list available commands, run:

```shell
$ make help
```

Building
-----

The image is built and published automatically by CI. The CI builds automatically all git tags that follow
Semantic Versioning naming convention, and branches `main`, `master`, and those that match `release/*`. The image tag
is named after the tag's name, or the branch's last path component. For instance for branch `release/1.0`, the
image tag would be named as `1.0`.

### Building locally

To manually build the Docker image on your local system, run:

```shell
$ make build DOCKER_IMAGE_NAME=ghcr.io/gocom/docker-image-template DOCKER_IMAGE_TAG=dev DOCKER_IMAGE_PLATFORM=linux/amd64
```

Substitute the image and tag names, and the target platforms.
