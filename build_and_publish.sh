#! /usr/bin/bash
# Run script with sudo
docker build -t pelican .
docker run --rm -it -v $(pwd)/content:/website/content:ro -v $(pwd)/output:/website/output pelican make github
