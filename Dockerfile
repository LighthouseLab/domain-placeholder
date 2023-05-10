FROM alpine:3.16
RUN apk add --no-cache gettext
WORKDIR /app
COPY . .
CMD ["sh", "-c", "envsubst < index.template.html > /app/dist/index.html"]