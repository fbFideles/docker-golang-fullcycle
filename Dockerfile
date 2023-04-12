FROM golang:1.19.0-alpine

WORKDIR /app/

COPY . /app/

RUN go build .

ENTRYPOINT [ "./docker-golang" ]
