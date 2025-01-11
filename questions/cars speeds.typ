#import "@preview/suiji:0.3.0": *

#let question(seed) = {
  let rng = gen-rng(seed)
  let redMiles = 0
  let blueMiles = 0
  let yellowMiles = 0
  let greenMiles = 0
  let redTime = 0
  let blueTime = 0
  let yellowTime = 0
  let greenTime = 0

  (rng, redMiles) = integers(rng, low: 15, high: 300)
  (rng, blueMiles) = integers(rng, low: 15, high: 300)
  (rng, yellowMiles) = integers(rng, low: 15, high: 300)
  (rng, greenMiles) = integers(rng, low: 15, high: 300)
  (rng, redTime) = integers(rng, low: 15, high: 100)
  (rng, blueTime) = integers(rng, low: 15, high: 100)
  (rng, yellowTime) = integers(rng, low: 15, high: 100)
  (rng, greenTime) = integers(rng, low: 15, high: 100)

  [
    Four cars travel at different speeds: \ \
    - The red car travels #redMiles miles in #redTime minutes. \
    - The blue car travels #blueMiles miles in #blueTime minutes. \
    - The yellow car travels #yellowMiles miles in #yellowTime minutes. \
    - The green car travels #greenMiles miles in #greenTime minutes. \ \
    Which car travels the fastest?
  ]
}

#let questionPoints = 20
#let answerSize = 10

#let answer(seed) = {
  let rng = gen-rng(seed)
  let redMiles = 0
  let blueMiles = 0
  let yellowMiles = 0
  let greenMiles = 0
  let redTime = 0
  let blueTime = 0
  let yellowTime = 0
  let greenTime = 0
  let fastest = ""

  (rng, redMiles) = integers(rng, low: 15, high: 300)
  (rng, blueMiles) = integers(rng, low: 15, high: 300)
  (rng, yellowMiles) = integers(rng, low: 15, high: 300)
  (rng, greenMiles) = integers(rng, low: 15, high: 300)
  (rng, redTime) = integers(rng, low: 15, high: 100)
  (rng, blueTime) = integers(rng, low: 15, high: 100)
  (rng, yellowTime) = integers(rng, low: 15, high: 100)
  (rng, greenTime) = integers(rng, low: 15, high: 100)

  let speeds = (
    red: redMiles / redTime,
    blue: blueMiles / blueTime,
    yellow: yellowMiles / yellowTime,
    green: greenMiles / greenTime,
  )

  if speeds.red > speeds.blue and speeds.red > speeds.yellow and speeds.red > speeds.green {
    fastest = "red"
  }
  if speeds.blue > speeds.red and speeds.blue > speeds.yellow and speeds.blue > speeds.green {
    fastest = "blue"
  }
  if speeds.yellow > speeds.red and speeds.yellow > speeds.blue and speeds.yellow > speeds.green {
    fastest = "yellow"
  }
  if speeds.green > speeds.red and speeds.green > speeds.blue and speeds.green > speeds.yellow {
    fastest = "green"
  }

  [
    The fastest car is the #fastest car.
  ]
}