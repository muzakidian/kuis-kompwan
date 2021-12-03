FROM golang:1.17-alpine

WORKDIR /app

COPY go.mod ./
COPY *.go ./
COPY static ./static

RUN go build -o /kuis-kompwan

EXPOSE 3000

CMD ["/kuis-kompwan"]