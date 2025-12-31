# ============================================
# Stage 1
# Start from their Dockerfile as base
FROM node:20-alpine AS webbuilder
WORKDIR /src
RUN apk add --no-cache git
RUN git clone https://github.com/harness/gitness.git .
WORKDIR /src/web
RUN yarn install --frozen-lockfile 
RUN yarn build

# ============================================
# Stage 2: Build backend (Go server)
FROM golang:1.24-alpine AS builder
RUN apk add --no-cache git ca-certificates gcc musl-dev sqlite-dev
WORKDIR /src
RUN git clone https://github.com/harness/gitness.git .
COPY --from=webbuilder /src/web/dist /src/web/dist
ENV GOPROXY=https://proxy.golang.org,direct
ENV CGO_ENABLED=1 GOOS=linux
RUN go mod tidy && go mod download
RUN go build -o /gitness ./app/server

# ============================================
# Stage 3
FROM alpine:3.20
COPY --from=builder /gitness /usr/local/bin/gitness
USER nobody
EXPOSE 3000
ENTRYPOINT ["gitness"]

