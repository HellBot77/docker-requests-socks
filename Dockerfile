FROM python:alpine

ARG TAG=latest
RUN pip install --no-cache-dir requests\[socks\]$([[ ${TAG} != "latest" ]] && echo "==${TAG}" || echo "")
