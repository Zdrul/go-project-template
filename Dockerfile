FROM golang:1.15.3-alpine AS build
WORKDIR /src
COPY /src .
RUN GOOS=linux go build -a -o /out/example .
FROM scratch AS bin
COPY --from=build /out/example /

