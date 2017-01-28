# Padrino Heroku skeleton

## Setup

### Development

1. Install local Ruby version with *rbenv*:

    ```
    $ rbenv install
    ```
2. Install requirements:

    ```
    $ bundle install
    ```
3. Start PostgreSQL in a Docker container:

    ```
    $ docker-compose create
    $ docker-compose start
    ```
4. Run the migrations:

    ```
    $ rake ar:create
    $ rake ar:migrate
    ```

### Production

1. Create [reCAPTCHA](https://www.google.com/recaptcha/admin#list)

2. Setup environment variables:

    ```
    POSTGRES_DB=padrinodb
    POSTGRES_USER=padrino
    POSTGRES_PASSWORD=password
    POSTGRES_HOST=host

    RACK_ENV=production

    RECAPTCHA_SITEKEY=""
    RECAPTCHA_SECRET=""
    ```

## Run

1. Start the application:

    ```
    $ foreman start
    ```
