# Java in Docker

## Overview

This is a simple example to run **Java** via **Gradle** inside **Docker**.

## Dependencies

### Dependencies

The following libraries are used in the application.

*[Gradle](https://gradle.org/)*: Build tool

*[Docker](https://www.docker.com/): Docker is a software container platform.

## How to...

### Build and run

To build the Docker image go into the root folder of this project where the `Dockerfile` is located and run:

```
docker build -t <your username>/<name of app> .
```

With the `-t` flag you can set a tag to easily identify the image later.

The image will now be listed by Docker.

```
docker images
```

Running the image with `-d` runs the container in detached mode, leaving the container running in the background. The `-p` flag redirects a public port to a private port inside the container.

```
docker run <your username>/<name of app>
```

After running the above command the Java app should prompt `Hello World!` to the console.
