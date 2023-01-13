[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit)](https://github.com/pre-commit/pre-commit)

# cloud-infra-diagrams-docker
A Docker container to run Python's fantastic Diagrams library

For info on how to use Diagrams, go to https://diagrams.mingrammer.com

## Incentive

Because I'm using it so often, I wanted a portable, self-contained environment to generate Diagrams that I could spin up quickly and with minimal fuss.

## To build

`$ docker build -t diagrams .`

Alternately you can `$ docker pull monch1962/diagrams` to retrieve the latest version from Docker Hub

## To run

Assuming:
- your Diagrams Python code is in `./diagram-code`
- you want to create the diagram described in `./diagram-code/aws-diagram.py`

`$ docker run --rm -v $(pwd)/diagram-code:/app/diagram -w /app/diagram diagrams:latest python /app/diagram/aws-diagram.py`

## TO DO

- this image is too large (approx ~~600Mb~~ 195Mb) as it's built on top of the base Python slim image; try to reduce it in size by building on top of e.g. Google's distroless Python image instead. Use https://github.com/wagoodman/dive to work out how to shrink the size as much as possible without breaking anything
