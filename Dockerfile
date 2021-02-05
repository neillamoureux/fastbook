FROM python:3.9

RUN apt-get update

# Install pipenv to take advantage of its dependency management via Pipfile / Pipfile.locl
RUN pip install pipenv

# Development dir inside the container
ENV PROJECT_DIR /fastbook
WORKDIR ${PROJECT_DIR}

# Set up environment
COPY ./Pipfile ${PROJECT_DIR}/
RUN pipenv install --dev --deploy

# Connect to local directory so you can edit there
VOLUME ${PROJECT_DIR}

# Set the shell for pipenv (like bash for command line shortcuts)
ENV PIPENV_SHELL /bin/bash

# Execute pipenv shell
ENTRYPOINT ["pipenv", "shell"]
