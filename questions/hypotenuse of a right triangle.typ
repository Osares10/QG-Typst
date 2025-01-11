#import "@preview/suiji:0.3.0": *

#let question(seed) = {
  let rng = gen-rng(seed)
  let a = 0
  let b = 0

  (rng, a) = integers(rng, low: 1, high: 100)
  (rng, b) = integers(rng, low: 1, high: 100)

  [Solve for $c$, with $a = #a$ and $b = #b$.]

  align(center)[#image("../images/Rtriangle.svg", width: 20%)]
}

#let questionPoints = 20
#let answerSize = 10

#let answer(seed) = {
  let rng = gen-rng(seed)
  let a = 0
  let b = 0
  let ab = 0
  let c = 0

  (rng, a) = integers(rng, low: 1, high: 100)
  (rng, b) = integers(rng, low: 1, high: 100)
  c = calc.sqrt(a * a + b * b)

  $
    c &= sqrt(a^2 + b^2) \
      &= sqrt(#a^2 + #b^2) \
      &= sqrt(#calc.pow(a, 2) + #calc.pow(b, 2)) \
      &= sqrt(#str(calc.pow(a, 2) + calc.pow(b, 2))) \
      &approx #calc.round(c, digits: 4)
  $
}