#import "@preview/suiji:0.3.0": *

#let question(seed) = {
  let rng = gen-rng(seed)
  let a = 0
  let b = 0
  let c = 0

  (rng, a) = integers(rng, low: 1, high: 100)
  (rng, b) = integers(rng, low: 1, high: 100)
  (rng, c) = integers(rng, low: 1, high: 100)

  [ What is (#a + #b) x #c? ]
}

#let questionPoints = 50
#let answerSize = 1

#let answer(seed) = {
  let rng = gen-rng(seed)
  let a = 0
  let b = 0
  let c = 0
  let result = 0

  (rng, a) = integers(rng, low: 1, high: 100)
  (rng, b) = integers(rng, low: 1, high: 100)
  (rng, c) = integers(rng, low: 1, high: 100)
  result = (a + b) * c

  [#result]
}