# CADLabs Jupyter Lab Environment
Environment for experimenting within Jupyter Lab.

See https://hub.docker.com/repository/docker/cadlabsorg/jupyter-lab-environment

## Installing Docker

Download and install Docker. The simplest option for Windows and macOS users is Docker Desktop: https://www.docker.com/products/docker-desktop

## Starting the Environment

```bash
# Pull the Docker image, and run from within the project workspace directory:
docker run -it --rm -p 8888:8888 -v "${PWD}":/home/jovyan/work cadlabsorg/jupyter-lab-environment
```

## Building the Environment from Scratch

```bash
docker build -t cadlabsorg/jupyter-lab-environment:latest .
```

See [Makefile](Makefile) for additional scripts.
