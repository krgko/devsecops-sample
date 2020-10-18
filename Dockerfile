# Builder stage
FROM golang:1.15-alpine AS builder
WORKDIR /home
COPY echo-server.go .
COPY go.mod .
COPY go.sum .
RUN CGO_ENABLED=0 GOOS=linux go build -o echo-server

# Finalize stage
FROM alpine:3.12
RUN apk --no-cache add ca-certificates
WORKDIR /home
COPY --from=builder /home/echo-server .
CMD ["./echo-server"]
