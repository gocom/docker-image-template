Image Template
=====

Image: `ghcr.io/gocom/docker-image-template` | [Container Registry](https://github.com/gocom/docker-image-template/pkgs/container/docker-image-template)

> [!NOTE]
> This is a personal Docker image template. It publishes images to GitHub Container Registry via GitHub Actions, when
> a tag is added to the repository.

🎺 Getting started
-----

To set up the image repository using the template:

* [ ] Update your license to [LICENSE](./LICENSE).
* [ ] Update [CONTRIBUTING.md](./CONTRIBUTING.md).
* [ ] Update your image build instructions and meta-data to [Dockerfile](./Dockerfile).
* [ ] Update [Makefile](./Makefile). You can update `DOCKER_IMAGE_NAME` variable default value and add smoke tests, or custom targets for automation.
* [ ] Update image name, title, usage instructions, and remove these set up instructions from [README.md](./README.md).
* [ ] Commit and push changes. Feel free to amend the first commit and overwrite the history. 🎉

⚡ Usage
-----

The image can be used like so:

```shell
$ docker run --rm ghcr.io/gocom/docker-image-template:0.1.0 --help
```

In the above, substitute the `0.1.0` with the version tag you want to use. It is recommended that you reference
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

| Variable   | Default Value | Description                                                                                                                                                |
|------------|---------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `HOST_UID` | `1000`        | If the container is started as root, maps the default start up command's user to the specified UID. Generated files will be owned by the specified user.   |
| `HOST_GID` | `1000`        | If the container is started as root, maps the default start up command's group as the specified GID. Generated files will be owned by the specified group. |

🛠️ Development
-----

See [CONTRIBUTING.md](./CONTRIBUTING.md).
