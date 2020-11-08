FROM python:rc-alpine

LABEL maintainer "tom@thomaslorentsen.co.uk"

RUN pip install --no-cache-dir todoist-python
