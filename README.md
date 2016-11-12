# Padrino Heroku skeleton

## Setup

1. Create `.env` file and set the following environment variables:

    ```
    POSTGRES_DB=padrinodb
    POSTGRES_USER=padrino
    POSTGRES_PASSWORD=password

    RACK_ENV=development
    ```
2. Install local Ruby version with *rbenv*:

    ```
    $ rbenv install
    ```

### Development

1. Install requirements:

    ```
    $ bundle install
    ```
2. Start PostgreSQL in a Docker container:

    ```
    $ docker-compose create
    $ docker-compose start
    ```
3. Run the *alembic* migrations:

    ```
    $ rake ar:create
    $ rake ar:migrate
    ```

## Run

1. Start the application:

    ```
    $ foreman start
    ```
