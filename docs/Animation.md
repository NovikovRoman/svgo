# Animation

- `Animate`

    ```go
    // svgo
    Animate(link, attr string, from, to int, duration float64, repeat int, s ...string)
    // float/svgo
    Animate(link, attr string, from, to, duration float64, repeat float64, s ...string)
    ```

    Animate animates the item referenced by the link, using the specified attribute
    The animation starts at coordinate from, terminates at to, and repeats as specified.
    Addtional attributes may be added as needed.
    <https://www.w3.org/TR/SVG11/animate.html#AnimateElement>

- `AnimateMotion`

    ```go
    // svgo
    AnimateMotion(link, path string, duration float64, repeat int, s ...string)
    // float/svgo
    AnimateMotion(link, path string, duration float64, repeat float64, s ...string)
    ```

    AnimateMotion animates the referenced object ```link``` along the specified ```path```
    <https://www.w3.org/TR/SVG11/animate.html#AnimateMotionElement>

- `AnimateTranslate`

    ```go
    // svgo
    AnimateTranslate(link string, fx, fy, tx, ty int, duration float64, repeat int, s ...string)
    // float/svgo
    AnimateTranslate(link string, fx, fy, tx, ty int, duration float64, repeat float64, s ...string)
    ```

    AnimateTranslate animates the translation transformation
    (link refers to the object to animate, fx, fy are from coordinates, tx, ty are the to coordinates)
    <https://www.w3.org/TR/SVG11/animate.html#AnimateTransformElement>

- `AnimateRotate`

    ```go
    // svgo
    AnimateRotate(link string, fs, fc, fe, ts, tc, te int, duration float64, repeat int, s ...string)
    // float/svgo
    AnimateRotate(link string, fs, fc, fe, ts, tc, te int, duration float64, repeat float64, s ...string)
    ```

    AnimateRotate animates the rotation transformation (link refers to the object to animate, f[s,c,e] are the from start, center, and end angles, t[s,c,e] are the start, center, and end angles)
    <https://www.w3.org/TR/SVG11/animate.html#AnimateTransformElement>

- `AnimateScale`

    ```go
    // svgo
    AnimateScale(link string, from, to, duration float64, repeat int, s ...string)
    // float/svgo
    AnimateScale(link string, from, to, duration float64, repeat float64, s ...string)
    ```

    AnimateScale animates the scale transformation (link refers to the object to animate, from and to specify the scaling factor)
    <https://www.w3.org/TR/SVG11/animate.html#AnimateTransformElement>

- `AnimateSkewX`

    ```go
    // svgo
    AnimateSkewX(link string, from, to, duration float64, repeat int, s ...string)
    // float/svgo
    AnimateSkewX(link string, from, to, duration float64, repeat float64, s ...string)
    ```

    AnimateSkewX animates the skewX transformation (link refers to the object to animate, from and to specify the skew angle)
    <https://www.w3.org/TR/SVG11/animate.html#AnimateTransformElement>

- `AnimateSkewY`

    ```go
    // svgo
    AnimateSkewY(link string, from, to, duration float64, repeat int, s ...string)
    // float/svgo
    AnimateSkewY(link string, from, to, duration float64, repeat float64, s ...string)
    ```

    AnimateSkewY animates the skewY transformation (link refers to the object to animate, and from and to specify the skew angle)
    <https://www.w3.org/TR/SVG11/animate.html#AnimateTransformElement>

---
[Go to the main page][]

[Go to the main page]: ../README.md
