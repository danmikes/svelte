from alpine:latest

run apk add --no-cache ca-certificates && update-ca-certificates
workdir /app

add https://github.com/pocketbase/pocketbase/releases/download/v0.22.17/pocketbase_0.22.17_linux_amd64.zip /app/pocketbase.zip
run unzip pocketbase.zip && chmod +x /app/pocketbase && rm pocketbase.zip

run mkdir -p /pb_data
expose 8090

cmd ["/app/pocketbase", "serve", "--http=0.0.0.0:8090", "--dir=/pb_data"]
