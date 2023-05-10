# Very Simple Domain Placeholder

This is a very simple domain placeholder. It is intended to be used as a
placeholder for a domain that is not yet ready to be deployed.

## Requirements

* `envsubst` (from `gettext`)
* `rsync` (optional)

## Usage

1. Clone this repository

2. Copy `.env.example` to `.env` and edit the values to match your environment.

3. Run `envsubst < index.template.html > index.html` to substitute the environment variables.
   Alternatively, you can use `docker-compose run --rm envsubst`, or with plain Docker: `docker run --rm -v $(pwd):/app -w /app alpine:3.16 sh -c "apk add --no-cache gettext && envsubst < index.template.html > /app/dist/index.html"`

4. Copy `dist/index.html` to your web server. You can use `rsync` to
   copy the file to your web server, e.g. `rsync -avz dist/index.html user@host:/path/to/web/root/`.