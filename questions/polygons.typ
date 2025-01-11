#import "@preview/suiji:0.3.0": *

#let question(seed) = {
  let rng = gen-rng(seed)
  let missingPolygon = 0

  (rng, missingPolygon) = integers(rng, low: 0, high: 4)

  let polygons = (
    "../images/triangle.png",
    "../images/square.png",
    "../images/pentagon.png",
    "../images/hexagon.png",
  )

  polygons.at(missingPolygon) = "../images/questionMark.png"

  [In the following table of polygons, one is missing. Which is it?]

  table(
    columns: 4,
    align: center,

    image(polygons.at(0), width: 25%),
    image(polygons.at(1), width: 25%),
    image(polygons.at(2), width: 25%),
    image(polygons.at(3), width: 25%),
  )
}

#let questionPoints = 10
#let answerSize = 4

#let answer(seed) = {
  let rng = gen-rng(seed)
  let missingPolygon = 0

  (rng, missingPolygon) = integers(rng, low: 0, high: 4)

  let polygons = (
    "../images/triangle.png",
    "../images/square.png",
    "../images/pentagon.png",
    "../images/hexagon.png",
  )

  align(center)[#image(polygons.at(missingPolygon), width: 15%)]
  
}