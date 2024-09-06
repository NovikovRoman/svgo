# Structure, Scripting, Metadata, Transformation and Links

- `New(w io.Writer) *SVG` Constructor, Specify the output destination.

- `Decimals(d int)` ([!]only for float/svgo) set the number of Decimals only float/svgo

- `Start`

    ```go
    // svgo
    Start(w, h int, attributes ...string)
    // float/svgo
    Start(w, h float64, attributes ...string)
    ```

    begin the SVG document with the width w and height h. Optionally add additional elements
    (such as additional namespaces or scripting events).
    <http://www.w3.org/TR/SVG11/struct.html#SVGElement>

- `Startview`

    ```go
    // svgo
    Startview(w, h, minx, miny, vw, vh int)
    // float/svgo
    Startview(w, h, minx, miny, vw, vh float64)
    ```

    begin the SVG document with the width w, height h, with a viewBox at minx, miny, vw, vh.
    <http://www.w3.org/TR/SVG11/struct.html#SVGElement>
  
- `Startunit`

    ```go
    // svgo
    Startunit(w, h int, unit string, ns ...string)
    // float/svgo
    Startunit(w, h float64, unit string, ns ...string)
    ```

    begin the SVG document, with width and height in the specified units. Optionally add additional elements
    (such as additional namespaces or scripting events).
    <http://www.w3.org/TR/SVG11/struct.html#SVGElement>

- `Startpercent`

    ```go
    // svgo
    Startpercent(w, h int, ns ...string)
    // float/svgo
    Startpercent(w, h float64, ns ...string)
    ```

    begin the SVG document, with width and height in percent. Optionally add additional elements
    (such as additional namespaces or scripting events).
    <http://www.w3.org/TR/SVG11/struct.html#SVGElement>

- `StartviewUnit`

    ```go
    // svgo
    StartviewUnit(w, h int, unit string, minx, miny, vw, vh int)
    // float/svgo
    StartviewUnit(w, h float64, unit string, minx, miny, vw, vh float64)
    ```

    begin the SVG document with the width w, height h, in the specified unit,
    with a viewBox at minx, miny, vw, vh.
    <http://www.w3.org/TR/SVG11/struct.html#SVGElement>

- `End()` end the SVG document
  
- `Script(scriptype string, data ...string)`
    Script defines a script with a specified type, (for example "application/javascript").
    if the first variadic argument is a link, use only the link reference.
    Otherwise, treat variadic arguments as the text of the script (marked up as CDATA).
    if no data is specified, simply close the script element.
    <http://www.w3.org/TR/SVG/script.html>
  
- `Style(scriptype string, data ...string)`
    Style defines a script with a specified type, (for example "text/css").
    if the first variadic argument is a link, use only the link reference.
    Otherwise, treat variadic arguments as the text of the script (marked up as CDATA).
    if no data is specified, simply close the style element.
    <https://www.w3.org/TR/SVG/styling.html#StyleElement>
  
- `Group(s ...string)` begin a group, with arbitrary attributes.
    <http://www.w3.org/TR/SVG11/struct.html#GElement>

- `Gstyle(s string)` begin a group, with the specified style.
    <http://www.w3.org/TR/SVG11/struct.html#GElement>

- `Gid(s string)` begin a group, with the specified id.

- `Gtransform(s string)` begin a group, with the specified transform, end with Gend().
    <http://www.w3.org/TR/SVG11/coords.html#TransformAttribute>

- `Translate`

    ```go
    // svgo
    Translate(x, y int)
    // float/svgo
    Translate(x, y float64)
    ```

    begins coordinate translation to (x,y), end with Gend().
    <http://www.w3.org/TR/SVG11/coords.html#TransformAttribute>

- Scale(n float64)
    scales the coordinate system by n, end with Gend().
    <http://www.w3.org/TR/SVG11/coords.html#TransformAttribute>
  
- `ScaleXY(x, y float64)` scales the coordinate system by x, y. End with Gend().
    <http://www.w3.org/TR/SVG11/coords.html#TransformAttribute>

- `SkewX(a float64)` SkewX skews the x coordinate system by angle a, end with Gend().
    <http://www.w3.org/TR/SVG11/coords.html#TransformAttribute>

- `SkewY(a float64)` SkewY skews the y coordinate system by angle a, end with Gend().
    <http://www.w3.org/TR/SVG11/coords.html#TransformAttribute>

- `SkewXY(ax, ay float64)` SkewXY skews x and y coordinate systems by ax, ay respectively, end with Gend().
    <http://www.w3.org/TR/SVG11/coords.html#TransformAttribute>

- `Rotate(r float64)` rotates the coordinate system by r degrees, end with Gend().
    <http://www.w3.org/TR/SVG11/coords.html#TransformAttribute>

- `TranslateRotate`

    ```go
    // svgo
    TranslateRotate(x, y int, r float64)
    // float/svgo
    TranslateRotate(x, y, r float64)
    ```

    translates the coordinate system to (x,y), then rotates to r degrees, end with Gend().

- `RotateTranslate`

    ```go
    // svgo
    RotateTranslate(x, y int, r float64)
    // float/svgo
    RotateTranslate(x, y, r float64)
    ```

    rotates the coordinate system r degrees, then translates to (x,y), end with Gend().

- `Gend()` end the group (must be paired with Gstyle, Gtransform, Gid).

- `ClipPath(s ...string)` Begin a ClipPath.
    <http://www.w3.org/TR/SVG/masking.html#ClippingPaths>

- `ClipEnd()` End a ClipPath.
    <http://www.w3.org/TR/SVG/masking.html#ClippingPaths>

- `Def()` begin a definition block.
    <http://www.w3.org/TR/SVG11/struct.html#DefsElement>

- `DefEnd()` end a definition block.

- `Marker`

    ```go
    // svgo
    Marker(id string, x, y, w, h int, s ...string)
    // float/svgo
    Marker(id string, x, y, w, h float64, s ...string)
    ```

    define a marker.
    <http://www.w3.org/TR/SVG11/painting.html#MarkerElement>

- `MarkerEnd()` end a marker
  
- `Mask(id string, x int, y int, w int, h int, s ...string)`
    creates a mask with a specified id, dimension, and optional style.
    <http://www.w3.org/TR/SVG/masking.html>
  
- `MaskEnd()` ends the Mask element.

- `Pattern`

    ```go
    // svgo
    Pattern(id string, x, y, width, height int, putype string, s ...string)
    // float/svgo
    Pattern(id string, x, y, width, height float64, putype string, s ...string)
    ```

    define a Pattern with the specified dimensions, the putype can be either "user" or "obj",
    which sets the patternUnits attribute to be either userSpaceOnUse or objectBoundingBox.
    <http://www.w3.org/TR/SVG11/pservers.html#Patterns>

- `Desc(s string)` specify the text of the description.
    <http://www.w3.org/TR/SVG11/struct.html#DescElement>

- `Title(s string)` specify the text of the title.
    <http://www.w3.org/TR/SVG11/struct.html#TitleElement>

- `Link(href string, title string)` begin a link named "href", with the specified title.
    <http://www.w3.org/TR/SVG11/linking.html#Links>

- `LinkEnd()` end the link.

- `Use`

    ```go
    // svgo
    Use(x, y int, link string, s ...string)
    // float/svgo
    Use(x, y float64, link string, s ...string)
    ```

    place the object referenced at link at the location x, y.
    <http://www.w3.org/TR/SVG11/struct.html#UseElement>

---
[Go to the main page][]

[Go to the main page]: ../README.md
