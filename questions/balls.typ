#import "@preview/suiji:0.3.0": *

#let question(seed) = {
  let rng = gen-rng(seed)
  let blue = 0
  let yellow = 0
  let red = 0
  let color = 0
  let colorName = ""
  let numberOfBalls = 0

  (rng, blue) = integers(rng, low: 20, high: 100)
  (rng, yellow) = integers(rng, low: 30, high: 100)
  (rng, red) = integers(rng, low: 1, high: 50)

  let balls = (
    blue: blue,
    yellow: yellow,
    red: red,
  )

  (rng, color) = integers(rng, low: 1, high: 3, endpoint: true)

  if color == 1 {
    colorName = "blue"
    numberOfBalls = yellow + red + 1
  } else if color == 2 {
    colorName = "yellow"
    numberOfBalls = blue + red + 1
  } else {
    colorName = "red"
    numberOfBalls = blue + yellow + 1
  }

  [A bag has #balls.blue blue balls, #balls.yellow yellow balls, and #balls.red red balls. How many random balls must be drawn from the bag to ensure that at least one #colorName ball is drawn?]
}

#let questionPoints = 15
#let answerSize = 8

#let answer(seed) = {
  let rng = gen-rng(seed)
  let blue = 0
  let yellow = 0
  let red = 0
  let color = 0
  let colorName = ""
  let numberOfBalls = 0

  (rng, blue) = integers(rng, low: 20, high: 100)
  (rng, yellow) = integers(rng, low: 30, high: 100)
  (rng, red) = integers(rng, low: 1, high: 50)

  let balls = (
    blue: blue,
    yellow: yellow,
    red: red,
  )

  (rng, color) = integers(rng, low: 1, high: 3, endpoint: true)

  if color == 1 {
    colorName = "blue"
    numberOfBalls = yellow + red + 1
  } else if color == 2 {
    colorName = "yellow"
    numberOfBalls = blue + red + 1
  } else {
    colorName = "red"
    numberOfBalls = blue + yellow + 1
  }

  [To ensure that at least one #colorName ball is drawn, we must draw at least #numberOfBalls balls.]
}