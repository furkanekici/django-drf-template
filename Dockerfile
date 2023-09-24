# Use an official Python runtime as the base image
FROM python:3.10

# Set environment variables (optional)
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Copy the Pipfile and Pipfile.lock to the container
COPY Pipfile Pipfile.lock /app/

# Install dependencies using pipenv
RUN pip install pipenv && pipenv install --deploy --ignore-pipfile

# Copy the rest of your application files to the container
COPY . /app/

# Expose the port the application runs on
EXPOSE 8000