package main

import (
	"fmt"
	"hidevops.io/pkg-demo/hello"
)

func main() {
	fmt.Printf("Say: %v\n", hello.NewGreeter().Name)
}