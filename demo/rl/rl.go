package main

import (
	"fmt"
	"math/rand/v2"
	"os"

	svg "github.com/NovikovRoman/svgo"
)

var canvas = svg.New(os.Stdout)

func main() {
	width := 200
	height := 200
	canvas.Start(width, height)
	canvas.Title("Random Lines")
	canvas.Rect(0, 0, width, height, "fill:black")
	canvas.Gstyle("stroke-width:10")
	r := 0
	for i := 0; i < width; i++ {
		r = rand.IntN(255)
		canvas.Line(i, 0, rand.IntN(width), height, fmt.Sprintf("stroke:rgb(%d,%d,%d); opacity:0.39", r, r, r))
	}
	canvas.Gend()

	canvas.Text(width/2, height/2, "Random Lines", "fill:white; font-size:20; font-family:Calibri; text-anchor:middle")
	canvas.End()
}
