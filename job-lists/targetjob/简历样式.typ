// 三份定制简历共用排版；个人资料、项目内容与指标保留在各自正文中。
#let ink = rgb("173650")
#let accent = rgb("287486")
#let muted = rgb("667481")
#let hairline = rgb("CCD9DF")
#let panel = rgb("F3F7F8")

#let resume-style(body, leading: 0.96em, list-spacing: 0.60em, section-gap: 0.46cm) = {
  set page(paper: "a4", margin: (x: 1.5cm, top: 1.0cm, bottom: 0.7cm))
  set text(font: ("Noto Sans SC", "Noto Sans", "Microsoft YaHei"), size: 11pt, fill: rgb("253441"), lang: "zh")
  set par(leading: leading, spacing: 0.30em, justify: false)
  set list(marker: [•], indent: 0pt, body-indent: 0.95em, tight: false, spacing: list-spacing)
  set heading(numbering: none)

  show heading.where(level: 1): it => block(above: section-gap, below: 0.16cm, breakable: false)[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 0.26cm,
      align: horizon,
      text(size: 12.5pt, weight: "bold", fill: ink, it.body),
      line(length: 100%, stroke: (paint: hairline, thickness: 0.6pt)),
    )
  ]
  body
}

#let school(name, degree, date) = block(above: 0.11cm, below: 0.17cm, breakable: false)[
  #grid(
    columns: (1fr, auto), column-gutter: 0.4cm,
    text(size: 11pt, weight: "bold", fill: ink, name),
    text(size: 9.6pt, fill: muted, date),
  )
  #text(size: 9.8pt, fill: muted, degree)
]

#let skills(rows) = block(fill: panel, radius: 3pt, inset: (x: 0.26cm, y: 0.27cm), breakable: false)[
  #set text(size: 10.2pt)
  #grid(
    columns: (auto, 1fr), column-gutter: 0.22cm, row-gutter: 0.16cm,
    ..rows.map(row => (
      text(weight: "bold", fill: ink, row.at(0)), row.at(1),
    )).flatten(),
  )
]

#let project(name, date, stack, url) = block(above: 0.34cm, below: 0.10cm, breakable: false)[
  #grid(
    columns: (1fr, auto), column-gutter: 0.4cm,
    [#text(weight: "bold", size: 11pt, fill: ink, name) #h(0.18cm) #text(size: 8.8pt, fill: accent)[#link(url)[项目仓库 ↗]]],
    text(size: 9.5pt, fill: muted, date),
  )
  #text(size: 9.5pt, fill: muted, stack)
  #v(0.08cm)
]

#let publication(author, title, journal, date, url, description: none) = block(below: 0.45cm, breakable: false)[
  #text(size: 10pt)[*#author* · #link(url)[#title]]
  #linebreak()
  #text(size: 9.1pt, fill: muted)[#emph(journal)，#date]
  #if description != none [
    #linebreak()
    #text(size: 9.6pt, description)
  ]
]
