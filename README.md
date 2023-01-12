# cloud-infra-diagrams-docker
A Docker container to run Python's diagrams library (https://diagrams.mingrammer.com/)

## To build

`$ docker build -t diagrams .`

Alternately you can `$ docker pull monch1962/diagrams` to retrieve it from the Docker registry

## To run

Assuming:
- your Diagrams Python code is in `./diagram-code`
- you want to create the diagram described in `./diagram-code/aws-diagram.py`

`$ docker run --rm -v $(pwd)/diagram-code:/app/diagram -w /app/diagram diagrams:latest python /app/diagram/aws-diagram.py`

## TO DO

This image is way too large (approx ~~600Mb~~ 195Mb) as it's built on top of the base Python slim image; try to reduce it in size by building on top of e.g. Google's distroless Python image instead