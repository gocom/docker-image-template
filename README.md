Image Template
=====

Image: `ghcr.io/gocom/docker-image-template` | [Container Registry](https://github.com/gocom/docker-image-template/pkgs/container/docker-image-template)

> [!NOTE]
> This is a personal Docker image template. It publishes images to GitHub Container Registry via GitHub Actions, when
> a tag is added to the repository.

<!-- Add description here -->

🎺 Getting started
-----

To set up the image repository using the template:

* [ ] Update `DOCKER_IMAGE_NAME` variable's default value to [Makefile](./Makefile). You can also add smoke tests, or custom targets for automation.
* [ ] Update your build steps and meta-data to [Dockerfile](./Dockerfile). You could keep the default binaries, default command and entrypoint to use the same user mapping functionality.
* [ ] Add your default start up command, such as service start up, to the [src/bin/docker-run](./src/bin/docker-run).
* [ ] Test building using the instructions found in [CONTRIBUTING.md](./CONTRIBUTING.md#building-locally).
* [ ] Add your license and copyrights to [LICENSE](./LICENSE).
* [ ] Update [CONTRIBUTING.md](./CONTRIBUTING.md).
* [ ] Update title, links, image name, usage instructions to [README.md](./README.md), and remove these **Getting started** instructions.
* [ ] Commit and push changes. Feel free to amend the first commit and overwrite the history, if you initialized the repository directly from the template. 🎉

⚡ Usage
-----

The image can be used like so:

```shell
$ docker run --rm ghcr.io/gocom/docker-image-template:1.0.0 --help
```

Substitute the `1.0.0` with the version tag you want to use. It is recommended that you reference
specific version or hash. The image follows [Semantic Versioning](https://semver.org/).

📝 Example usage
-----

### Basic Docker CLI usage

The following would take screenshot of the given URL and save results to the screenshots directory:

```shell
$ docker run --rm ghcr.io/gocom/docker-image-template:0.1.0 --help
```

In the above, substitute the version number tag with the version you want.

### With Docker Compose

Docker Compose is a common way to orchestrate containers in local development environments. For example:

```yml
services:
  image-template:
    image: ghcr.io/gocom/docker-image-template:0.1.0
    networks:
      - proxy
    cap_add:
      - SYS_ADMIN

networks:
  proxy:
```

🫧 Configuration
-----

The container and its tooling can be configured with environment variables.

### Environment variables

The following environment variables can be used to customize the generated certificates.

| Variable   | Default Value | Description                                                                                                                                             |
|------------|---------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|
| `HOST_UID` | `1000`        | If the container is started as root, maps the default start up command's user to the specified UID. Default command will be run as the specified user.  |
| `HOST_GID` | `1000`        | If the container is started as root, maps the default start up command's group as the specified GID. Default command will be run as the specified user. |

🛠️ Development
-----

See [CONTRIBUTING.md](./CONTRIBUTING.md).
