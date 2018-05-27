package main

import (
	"fmt"
	"math"
)

func main() {
	var n float64 = 2
	for n <= 8*math.Log2(n) {
		n++
	}

	fmt.Printf("%f\n", n)
}
