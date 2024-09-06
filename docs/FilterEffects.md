# Filter Effects

- `Filter(id string, s ...string)` Filter begins a filter set.
    <http://www.w3.org/TR/SVG11/filters.html#FilterElement>

- `Fend()` Fend ends a filter set.
    <http://www.w3.org/TR/SVG11/filters.html#FilterElement>

- `FeBlend(fs Filterspec, mode string, s ...string)`
    FeBlend specifies a Blend filter primitive.
    <http://www.w3.org/TR/SVG11/filters.html#feBlendElement>

- `FeColorMatrix(fs Filterspec, values [20]float64, s ...string)`
    FeColorMatrix specifies a color matrix filter primitive, with matrix values.
    <http://www.w3.org/TR/SVG11/filters.html#feColorMatrixElement>

- `FeColorMatrixHue(fs Filterspec, value float64, s ...string)`
    FeColorMatrix specifies a color matrix filter primitive, with hue values.
    <http://www.w3.org/TR/SVG11/filters.html#feColorMatrixElement>

- `FeColorMatrixSaturate(fs Filterspec, value float64, s ...string)`
    FeColorMatrix specifies a color matrix filter primitive, with saturation values.
    <http://www.w3.org/TR/SVG11/filters.html#feColorMatrixElement>

- `FeColorMatrixLuminence(fs Filterspec, s ...string)`
    FeColorMatrix specifies a color matrix filter primitive, with luminence values.
    <http://www.w3.org/TR/SVG11/filters.html#feColorMatrixElement>  
  
- `FeComponentTransfer()` FeComponentTransfer begins a feComponent filter Element.
    <http://www.w3.org/TR/SVG11/filters.html#feComponentTransferElement>

- `FeCompEnd()` FeCompEnd ends a feComponent filter Element.

- `FeComposite(fs Filterspec, operator string, k1, k2, k3, k4 int, s ...string)`
    FeComposite specifies a feComposite filter primitive.
    <http://www.w3.org/TR/SVG11/filters.html#feCompositeElement>

- `FeConvolveMatrix(fs Filterspec, matrix [9]int, s ...string)`
    FeConvolveMatrix specifies a feConvolveMatrix filter primitive.
    <http://www.w3.org/TR/SVG11/filters.html#feConvolveMatrixElement>

- `FeDiffuseLighting(fs Filterspec, scale, constant float64, s ...string)`
    FeDiffuseLighting specifies a diffuse lighting filter primitive,
    a container for light source Element>s, end with DiffuseEnd().

- `FeDiffEnd()` FeDiffuseEnd ends a diffuse lighting filter primitive container.
    <http://www.w3.org/TR/SVG11/filters.html#feDiffuseLightingElement>

- `FeDisplacementMap(fs Filterspec, scale float64, xchannel, ychannel string, s ...string)`
    FeDisplacementMap specifies a feDisplacementMap filter primitive.
    <http://www.w3.org/TR/SVG11/filters.html#feDisplacementMapElement>

- `FeDistantLight(fs Filterspec, azimuth, elevation float64, s ...string)`
    FeDistantLight specifies a feDistantLight filter primitive.
    <http://www.w3.org/TR/SVG11/filters.html#feDistantLightElement>

- `FeFlood(fs Filterspec, color string, opacity float64, s ...string)`
    FeFlood specifies a flood filter primitive.
    <http://www.w3.org/TR/SVG11/filters.html#feFloodElement>

- `FeFuncLinear(channel string, slope, intercept float64)`
    FeFuncLinear is the linear form of feFunc.
    <http://www.w3.org/TR/SVG11/filters.html#feComponentTransferElement>

- `FeFuncGamma(channel, amplitude, exponent, offset float64)`
    FeFuncGamma is the gamma curve form of feFunc.
    <http://www.w3.org/TR/SVG11/filters.html#feComponentTransferElement>

- `FeFuncTable(channel string, tv []float64)`
    FeFuncGamma is the form of feFunc using a table of values.
    <http://www.w3.org/TR/SVG11/filters.html#feComponentTransferElement>

- `FeFuncDiscrete(channel string, tv []float64)`
    FeFuncGamma is the form of feFunc using discrete values.
    <http://www.w3.org/TR/SVG11/filters.html#feComponentTransferElement>

- `FeGaussianBlur(fs Filterspec, stdx, stdy float64, s ...string)`
    FeGaussianBlur specifies a Gaussian Blur filter primitive.
    <http://www.w3.org/TR/SVG11/filters.html#feGaussianBlurElement>

- `FeImage(href string, result string, s ...string)`
    FeImage specifies a feImage filter primitive.
    <http://www.w3.org/TR/SVG11/filters.html#feImageElement>

- `FeMerge(nodes []string, s ...string)`
    FeMerge specifies a feMerge filter primitive, containing feMerge Element s.
    <http://www.w3.org/TR/SVG11/filters.html#feMergeElement>

- `FeMorphology(fs Filterspec, operator string, xradius, yradius float64, s ...string)`
    FeMorphologyLight specifies a feMorphologyLight filter primitive.
    <http://www.w3.org/TR/SVG11/filters.html#feMorphologyElement>

- `FeOffset(fs Filterspec, dx, dy int, s ...string)`
    FeOffset specifies the feOffset filter primitive.
    <http://www.w3.org/TR/SVG11/filters.html#feOffsetElement>

- `FePointLight(x, y, z float64, s ...string)`
    FePointLight specifies a fePpointLight filter primitive.
    <http://www.w3.org/TR/SVG11/filters.html#fePointLightElement>

- `FeSpecularLighting(fs Filterspec, scale, constant float64, exponent int, color string, s ...string)`
    FeSpecularLighting specifies a specular lighting filter primitive,
    a container for light source elements, end with SpecularEnd().

- `FeSpecEnd()` FeSpecularEnd ends a specular lighting filter primitive container.
    <http://www.w3.org/TR/SVG11/filters.html#feSpecularLightingElement>

- `FeSpotLight(fs Filterspec, x, y, z, px, py, pz float64, s ...string)`
    FeSpotLight specifies a feSpotLight filter primitive.
    <http://www.w3.org/TR/SVG11/filters.html#feSpotLightElement>

- `FeTile(fs Filterspec, in string, s ...string)`
    FeTile specifies the tile utility filter primitive.
    <http://www.w3.org/TR/SVG11/filters.html#feTileElement>

- `FeTurbulence(fs Filterspec, ftype string, bfx, bfy float64, octaves int, seed int64, stitch bool, s ...string)`
    FeTurbulence specifies a turbulence filter primitive.
    <http://www.w3.org/TR/SVG11/filters.html#feTurbulenceElement>

---
[Go to the main page][]

[Go to the main page]: ../README.md
