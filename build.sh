#! /bin/bash
tag=docker.io/juantascon/languagetool:5.2
podman build . -t $tag && podman push $tag
