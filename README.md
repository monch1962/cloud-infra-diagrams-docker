# cloud-infra-diagrams-docker
A Docker container to run Python's diagrams library

## To build

`$ docker build -t diagrams .`

## To run

Assuming:
- your Diagrams Python code is in `./diagram-code`

`$ docker run --rm -v $(pwd)/diagram-code:/app/diagram -w /app/diagram diagrams:latest python /app/diagram/aws-diagram.py`

## TO DO

This image is way too large (approx 260Mb) as it's built on top of the base Python slim image; try to reduce it in size by building on top of e.g. Google's distroless Python image instead