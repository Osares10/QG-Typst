#import "@preview/suiji:0.3.0": *
#let seed = 0

#let students = 8
#let answers = false

#let questions = (
  "questions/q1.typ",
  "questions/q2.typ",
  "questions/q3.typ",
  "questions/q1.typ",
  "questions/q2.typ",
  "questions/q3.typ",
  "questions/q1.typ",
  "questions/q2.typ",
  "questions/q3.typ",
)

#let i = 1
#while i <= students {
  "Student #" + str(i)
  parbreak()
  let j = 0
  while j < questions.len() {
    import questions.at(j): question, answer
    "Question #" + str(j + 1)
    parbreak()
    question(seed + i)
    parbreak()
    if answers {
      answer(seed + i)
    }
    parbreak()
    j = j + 1
  }
  i = i + 1
  pagebreak()
}