#import "@preview/suiji:0.3.0": *

#let question(seed) = {
  let rng = gen-rng(seed)
  let a = 0
  let b = 0

  (rng, a) = integers(rng, low: 1, high: 100)
  (rng, b) = integers(rng, low: 1, high: 100)

  [ What is #a + #b? ]
}

#let answer(seed) = {
  let rng = gen-rng(seed)
  let a = 0
  let b = 0
  let c = 0

  (rng, a) = integers(rng, low: 1, high: 100)
  (rng, b) = integers(rng, low: 1, high: 100)
  c = a + b

  [ Answer: #c ]
}