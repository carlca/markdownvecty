deps:
	~/code/gowasm/bin/go get ./...

wasm: deps
	GOROOT=~/code/gowasm GOARCH=wasm GOOS=js ~/code/gowasm/bin/go build -o example.wasm markdown.go

build-server:
	go build -o server-app ../server/server.go

run: build-server wasm
	./server-app