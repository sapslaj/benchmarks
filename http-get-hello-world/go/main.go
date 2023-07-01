package main

import (
	"fmt"
	"log"
	"net/http"
	"sync/atomic"
)

func main() {
	var requests uint64
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		atomic.AddUint64(&requests, 1)
		log.Printf("[%d] %s \"%s\"", requests, r.RemoteAddr, r.Header.Get("User-Agent"))
		fmt.Fprintf(w, "hello world\n")
	})
	fmt.Println("Starting listening on :8080")
	http.ListenAndServe(":8080", nil)
}
