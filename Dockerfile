FROM golang:1.19.0-alpine AS builder

WORKDIR /app/

COPY . /app/

RUN go build .

FROM scratch

WORKDIR /appd/

COPY --from=builder /app/docker-golang /appd/

ENTRYPOINT [ "./docker-golang" ]
