package main

import (
	"math/rand/v2"
	"os"

	svg "github.com/ajstarks/svgo"
)

var canvas = svg.New(os.Stdout)

var width = 700
var height = 400

func main() {
	canvas.Start(width, height)
	canvas.Title("Richter")
	canvas.Rect(0, 0, width, height, "fill:white")
	rw := 32
	rh := 18
	margin := 5
	for i, x := 0, 20; i < 16; i++ {
		x += (rw + margin)
		for j, y := 0, 20; j < 16; j++ {
			canvas.Rect(x, y, rw, rh, canvas.RGB(rand.IntN(255), rand.IntN(255), rand.IntN(255)))
			y += (rh + margin)
		}
	}
	canvas.End()
}
