# SVGo: A Go library for SVG generation

> The library generates SVG as defined by the Scalable Vector Graphics 1.1 Specification
(<http://www.w3.org/TR/SVG11/>). Output goes to the specified io.Writer.

## Supported SVG elements and functions

- [Shapes and Lines][]
- [Image and Text][]
- [Color and Gradients][]
- [Paths][]
- [Animation][]
- [Filter Effects][]
- [Filter convenience functions (modeled on CSS filter effects)][]
- [Structure, Scripting, Metadata, Transformation and Links][]
- [Utility][]

## Overview

- [Building and Usage][]
- [Graphics Sketching with SVGo and svgplay][]
- [Functions and types][]

## SVGo Papers and presentations

- SVGo paper from SVGOpen 2011 <http://www.svgopen.org/2011/papers/34-SVGo_a_Go_Library_for_SVG_generation>

- Programming Pictures with SVGo <https://speakerdeck.com/u/ajstarks/p/programming-pictures-with-svgo>

- SVGo Workshop <https://speakerdeck.com/u/ajstarks/p/svgo-workshop>

## Tutorial Video

A video describing how to use the package can be seen on YouTube at <http://www.youtube.com/watch?v=ze6O2Dj5gQ4>

## Demos

- `am`: Animate motion
- `amt`: Animate transformation
- `android`: The Android logo
- `animate`: Animation
- `barchart`: Bar chart
- `bubtrail`: Bubble trails
- `bulletgraph`: Bullet Graphs (via Stephen Few)
- `colortab`: Display SVG named colors with RGB values
- `compx`: Component diagrams
- `cube`: cube isometry
- `f50`: Get 50 photos from Flickr based on a query
- `fe`: Filter effects
- `flower`: Random "flowers"
- `fontcompare`: Compare two fonts
- `funnel`: Funnel from transparent circles
- `gradient`: Linear and radial gradients
- `html5logo`: HTML5 logo with draggable elements
- `imfade`: Show image fading
- `lewitt`: Version of Sol Lewitt's Wall Drawing 91
- `marker`: Test markers
- `paths`: Demonstrate SVG paths
- `pattern`: Test patterns
- `picserv`: Picture server
- `planets`: Show the scale of the Solar system
- `randcomp`: Compare random number generators
- `richter`: Gerhard Richter's 256 colors
- `rl`: Random lines (port of a Processing demo)
- `skewabc`: Skew ABC
- `span`: Text span
- `stockproduct`: Visualize product and stock prices
- `svgdef`: Creates a SVG representation of the API
- `svgopher`: SVGo Mascot
- `svgplot`
  - `svgplot`: Plot data
  - `svgrid`: Compose SVG files in a grid
- `turbulence`: Turbulence filter effect
- `vismem`: Visualize data from files
- `webfonts`: "Hello, World" with Google Web Fonts
- `websvg`: Generate SVG as a web server

---
[Shapes and Lines]: ./docs/ShapesLines.md
[Animation]: ./docs/Animation.md
[Filter Effects]: ./docs/FilterEffects.md
[Image and Text]: ./docs/ImageText.md
[Color and Gradients]: ./docs/ColorGradients.md
[Paths]: ./docs/Paths.md
[Utility]: ./docs/Utility.md
[Functions and types]: ./docs/FunctionsTypes.md
[Filter convenience functions (modeled on CSS filter effects)]: ./docs/FilterFunctions.md
[Structure, Scripting, Metadata, Transformation and Links]: ./docs/StructureScriptingMetadataTransLinks.md

[Building and Usage]: ./docs/BuildingUsage.md
[Graphics Sketching with SVGo and svgplay]: ./svgplay/GraphicsSketching.md
