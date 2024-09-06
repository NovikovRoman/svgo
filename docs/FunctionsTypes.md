# Functions and types

Many functions use x, y to specify an object's location, and w, h to specify the object's width and height.
Where applicable, a final optional argument specifies the style to be applied to the object.
The style strings follow the SVG standard; name:value pairs delimited by semicolons, or a
series of name="value" pairs. For example: `"fill:none; opacity:0.3"` or  `fill="none" opacity="0.3"` (see: <http://www.w3.org/TR/SVG11/styling.html>)

The SVG type:

```go
// svgo
type SVG struct {
    Writer   io.Writer
}
```

```go
// float/svgo
type SVG struct {
    Writer   io.Writer
    decimals int
}
```

Most operations are methods on this type, specifying the destination io.Writer.

The Offcolor type:

```go
type Offcolor struct {
    Offset  uint8
    Color   string
    Opacity float64
}
```

is used to specify the offset, color, and opacity of stop colors in linear and radial gradients

The Filterspec type:

```go
type Filterspec struct {
    In string
    In2 string
    Result string
}
```

is used to specify inputs and results for filter effects.

---
[Go to the main page][]

[Go to the main page]: ../README.md
