# Building and Usage

See svgdef.[svg|png|pdf] for a graphical view of the function calls.

Using go get:

```shell
go get github.com/ajstarks/svgo
```

You can use godoc to browse the documentation from the command line:

```shell
go doc github.com/ajstarks/svgo
```

A minimal program, to generate SVG to standard output:

```go
package main

import (
    "github.com/ajstarks/svgo"
    "os"
)

func main() {
    width := 500
    height := 500
    canvas := svg.New(os.Stdout)
    canvas.Start(width, height)
    canvas.Circle(width/2, height/2, 100)
    canvas.Text(width/2, height/2, "Hello, SVG", "text-anchor:middle;font-size:30px;fill:white")
    canvas.End()
}
```

when using float:

```go
package main

import (
    svg "github.com/ajstarks/svgo/float"
    "os"
)

func main() {
    width := 500.0
    height := 500.0
    canvas := svg.New(os.Stdout)
    canvas.Start(width, height)
    canvas.Circle(width/2, height/2, 100)
    canvas.Text(width/2, height/2, "Hello, SVG", "text-anchor:middle;font-size:30px;fill:white")
    canvas.End()
}
```

Drawing in a web server: (<http://localhost:2003/circle>)

```go
package main

import (
    "log"
    "github.com/ajstarks/svgo"
    "net/http"
)

func main() {
    http.Handle("/circle", http.HandlerFunc(circle))
    err := http.ListenAndServe(":2003", nil)
    if err != nil {
        log.Fatal("ListenAndServe:", err)
    }
}

func circle(w http.ResponseWriter, req *http.Request) {
    w.Header().Set("Content-Type", "image/svg+xml")
    s := svg.New(w)
    s.Start(500, 500)
    s.Circle(250, 250, 125, "fill:none;stroke:black")
    s.End()
}
```

when using float:

```go
package main

import (
    "log"
    svg "github.com/ajstarks/svgo/float"
    "net/http"
)

func main() {
    http.Handle("/circle", http.HandlerFunc(circle))
    err := http.ListenAndServe(":2003", nil)
    if err != nil {
        log.Fatal("ListenAndServe:", err)
    }
}

func circle(w http.ResponseWriter, req *http.Request) {
    w.Header().Set("Content-Type", "image/svg+xml")
    s := svg.New(w)
    s.Start(500.0, 500.0)
    s.Circle(250.0, 250.0, 125.0, "fill:none;stroke:black")
    s.End()
}
```

You may view the SVG output with a browser that supports SVG (tested on Chrome, Opera, Firefox and Safari), or any other SVG user-agent such as Batik Squiggle.

---
[Go to the main page][]

[Go to the main page]: ../README.md
