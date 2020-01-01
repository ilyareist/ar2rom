FROM golang:latest as builder

# Add Maintainer Info
LABEL maintainer="Ilia Feoktistov <ilia.a.feoktistov@gmail.com>"

# Set the Current Working Directory inside the container
WORKDIR /app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o ar2rom .

FROM alpine:latest

RUN apk add --update bash make
WORKDIR /user/service

# Copy the Pre-built binary file from the previous stage
COPY --from=builder /app/ar2rom /app/docker-entrypoint.sh /user/service/

ENTRYPOINT ["/user/service/docker-entrypoint.sh"]
CMD ["help"]
