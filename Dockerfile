FROM golang:alpine
ADD . /Users/carlca/code/go/src/github.com/carlca/wasm/first/wasmplay/markdownvecty/index.html
ADD . /Users/carlca/code/go/src/github.com/carlca/wasm/first/wasmplay/markdownvecty/example.wasm
ADD . /Users/carlca/code/go/src/github.com/carlca/server/server.go
RUN go build server.go
CMD ["server"]
EXPOSE 3000
