#! /bin/bash
tag=docker.io/juantascon/languagetool:5.0
podman build . -t $tag && podman push $tag
