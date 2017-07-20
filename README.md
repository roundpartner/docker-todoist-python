[![Build Status](https://travis-ci.org/thomaslorentsen/docker-todoist-python.svg?branch=master)](https://travis-ci.org/thomaslorentsen/docker-todoist-python)
[![Docker Build](https://img.shields.io/docker/automated/imacatlol/todoist-python.svg)](https://hub.docker.com/r/imacatlol/todoist-python/)
[![Docker pulls](https://img.shields.io/docker/pulls/imacatlol/todoist-python.svg)](https://hub.docker.com/r/imacatlol/todoist-python/)
# Todoist Python
A Docker Container for [Todoist Python Module]([https://developer.todoist.com])
## Creating A Docker Container
In your project create an ```app.py``` script
```python
import todoist

api = todoist.TodoistAPI('secret_api_key')
response = api.sync()
for project in response['projects']:
     print(project['name'])
```

Then add your python application to your ```Dockerfile```
```docker
FROM imacatlol/todoist-python
WORKDIR /usr/src/app
COPY . .
CMD [ "python", "./app.py" ]
```

Build the Docker Container
```bash
docker build -t todoist .
```

Then run the Container
```bash
docker run -it --rm --name todoist-app todoist
```
