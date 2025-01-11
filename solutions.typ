#import "@preview/suiji:0.3.0": *
#import "template.typ": *

#set document(
    author: "Oswaldo Arias Estrada",
    title: "1st Partial Exam",
  )
#set page(
  paper: "us-letter",
  margin: 0.5in,
)
#set text(
  font: "Atkinson Hyperlegible",
  size: 12pt,
  hyphenate: false,
  lang: "en",
)

#let seed = 129302183

#let students = 12
#let examVersions = 12
#let answers = true

#let questions = (
  "questions/hypotenuse of a right triangle.typ",
  "questions/balls.typ",
  "questions/derivative.typ",
  "questions/cars speeds.typ",
  "questions/polygons.typ"
)

#let k = 0
#let totalPoints = 0
#while k < questions.len() {
  import questions.at(k): questionPoints
  totalPoints = totalPoints + questionPoints
  k = k + 1
}

#let i = 0
#while i < students {

  let id = str(seed) + "-" + str(calc.rem(i, examVersions)) + "-" + str(i)

  
  set page(
    header: (
      align(right)[#id]
    ),
    footer: (
      align(center)[#counter(page).display()]
    )
  )

  counter(page).update(1)

  let examVersion = seed + calc.rem(i, examVersions)

  show: questionarie.with(
    teacher: "Oswaldo Arias Estrada",
    title: "1st Partial Exam",
    subject: "Vectorial Calculus",
    school: "Instituto Politénico Nacional",
    faculty: "Unidad Profesional Interdisciplinaria \n de Ingeniería Campus Guanajuato",
    academy: "Mathematics",
    class: "1AV1",
    date: "06/01/25",
    paper: "us-letter",
    textFont: "Atkinson Hyperlegible",
    codeFont: "Roboto Mono",
    schoolLogo: "images/IPN.png",
    schoolLogoWidth: 30%,
    facultyLogo: "images/UPIIG.png",
    facultyLogoWidth: 40%,
    instructions: [
      - Answer the following questions.

      - You have 1 hour to complete the exam.

      - Write your answers on the exam paper.
    ],

    examID: id,
    points: totalPoints,
  )

  v(1em)
  let j = 0
  while j < questions.len() {

    import questions.at(j): question, questionPoints, answerSize, answer
    align(center)[#line(length: 100%, stroke: (paint: gray, thickness: 1pt, dash: "dashed"))]
    [*Question \#*] + [*#str(j + 1)*] + [*. *] + [(#questionPoints points). ]
    question(examVersion)
    v(1em)
    if answers {
      [*Answer.* \ #answer(examVersion)]
    } else {
      v(answerSize * 1em)
    }
    
    v(1em)
    j = j + 1
  }
  i = i + 1
}