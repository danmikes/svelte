FROM alpine:latest

RUN apk add --no-cache ca-certificates unzip

ARG PB_VERSION=0.22.17
ADD https://github.com/pocketbase/pocketbase/releases/download/v${PB_VERSION}/pocketbase_${PB_VERSION}_linux_amd64.zip /tmp/pocketbase.zip

RUN unzip /tmp/pocketbase.zip -d /app/ && \
  chmod +x /app/pocketbase && \
  rm /tmp/pocketbase.zip && \
  mkdir -p /pb_data

EXPOSE 8090

CMD ["/app/pocketbase", "serve", "--http=0.0.0.0:8090", "--dir=/pb_data"]
