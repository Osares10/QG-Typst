#import "@preview/suiji:0.3.0": *

#let question(seed) = {
  let rng = gen-rng(seed)
  let power = 0
  let number = 0

  (rng, power) = integers(rng, low: 2, high: 7)
  (rng, number) = integers(rng, low: 15, high: 100)

  [For the function:] 
  align(center)[$f(x) = x^#power + sin(x^2) - ln(x)e^x + #number$]
  [find the derivative.]
}

#let questionPoints = 35
#let answerSize = 12

#let answer(seed) = {
  let rng = gen-rng(seed)
  let power = 0
  let number = 0

  (rng, power) = integers(rng, low: 2, high: 7)
  (rng, number) = integers(rng, low: 15, high: 100)

  align(center)[$f'(x) = #power x^#str(power - 1) + 2 x cos(x^2) - frac(1, x)e^x - ln(x)e^x$]
}