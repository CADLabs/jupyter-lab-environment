# CADLabs Jupyter Lab Environment
Environment for experimenting within Jupyter Lab.

See https://hub.docker.com/repository/docker/cadlabsorg/jupyter-lab-environment

## Installing Docker

Download and install Docker. The simplest option for Windows and macOS users is Docker Desktop: https://www.docker.com/products/docker-desktop

## Starting the Environment

Using Make, or copy and paste the commented scripts.

```bash
# Pull the Docker image, and run from project workspace directory:
# docker run -it --rm -p 8888:8888 -v "${PWD}":/home/jovyan/work cadlabsorg/jupyter-lab-environment:latest
make run
```

## Building the Environment from Scratch

```bash
# docker build -t cadlabsorg/jupyter-lab-environment:latest .
make build
```

See [Makefile](Makefile) for additional scripts.
