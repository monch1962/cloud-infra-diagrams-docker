FROM python:3.10-slim
RUN pip install diagrams
RUN apt-get update && apt-get install -y \
    graphviz \
    && rm -rf /var/lib/apt/lists/*