# django-drf-template
A project template for Django Rest Framework APIs


## Prerequisites

Before you begin, ensure you have met the following requirements:

- **Docker**: Make sure you have Docker installed on your machine. You can download it from [Docker's official website](https://www.docker.com/get-started).



## Getting Started

To get started with this project, follow these steps:

1. Clone this repository to your local machine:
git clone https://github.com/furkanekici/django-drf-template.git

2. Navigate to the project directory:

    cd django-drf-template

3. **Environment Configuration**

   Before you build and run your Docker container, follow these steps to create and configure the `.env` file:

   - **Create the `.env` File**: If the `.env` file doesn't already exist in the root directory of your project, create it.

   - **Add Environment Variables**: Add the necessary environment variables to the `.env` file. For example:

     ```plaintext
     # Your .env contents
     SECRET_KEY=t-z76!d$$nl^7^r43ez54r5c+l2ge@if&k&n@&e4zzi@xbcv&h
     DEBUG=True
     ALLOWED_HOSTS=*
     DB_NAME=postgres
     DB_USER=postgres
     DB_PASSWORD=postgre123
     DB_HOST=db
     DB_PORT=5432
     CORS_ORIGIN_WHITELIST=http://localhost:3000,http://localhost:8000
     ```

4. Build the Docker image for the application:

    docker build --tag django-drf-template .

5. Start the application using Docker Compose:

    docker compose up -d --build

6. Access the Django application in a web browser by going to http://localhost:8000.
