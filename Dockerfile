FROM python:2.7-alpine3.6

LABEL maintainer "tom@thomaslorentsen.co.uk"

RUN pip install --no-cache-dir todoist-python
