FROM python:3.10-slim
RUN pip install --no-cache-dir diagrams
RUN apt-get update && apt-get install -y --no-install-recommends \
    graphviz xdg-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*