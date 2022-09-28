import sugar
import strutils
import os
import strformat

type inputLine = object
  kind: string
  value: string

proc gen_header(title: string): string = &"""
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="description" content="Webpage for slam">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Slam Lang</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nova+Square">
    <link rel="stylesheet" href="/css/index.css">
  </head>
  <body> 
    <div class="nav">
      <div class="nav-container">
        <a class="nav-logo" href="/">
          <img class="nav-logo" src="/images/logo.png"></img>
        </a>
        <div class="nav-links">
          <a href="/">Home</a>
          <a href="/docs">Docs</a>
          <a href="http://github.com/slam-lang">Github</a>
        </div>
      </div>
    </div>
    
    <h1 class="title">
      {title}
    </h1>
    <div class="content">
      <div class="side">
"""

var classPos: int
var className: string

proc gen_sidebar(input: seq[inputLine]): string =
  result = """
        <h1>Contents</h1>
        <ul>
"""
  for l in input:
    var name = l.value.split(" ")[0]
    case l.kind
    of "class":
      className = name & "."
      result &= &"""
      <li><a href="#{name}">{name}</a></li>
"""
    of "proc":
      result &= &"""
      <li><a href="#{name}">{className}{name}</a></li>
"""
  result &= """
  </ul>
"""


proc gen_mid(): string = """
      </div>
      <div class="docs">
"""

proc gen_content(input: seq[inputLine]): string =
  for l in input:
    case l.kind
    of "desc":
      result &= &"""
        <p class="desc">
        {l.value}
        </p>"""

    of "class":
      var name = l.value.split(" ")[0]
      var size = l.value.split(" ")[1]
      classPos = 0
      className = name & "."

      result &= &"""
        <h1 id="{name}">
          class {name}
          <span class="small">
            SIZE: {size}b
          </span>
        </h1>
        """

    of "args":
      result &= &"<h3>\n"
      for arg in l.value.split(" "):
        if arg == ">":
          result &= " => "
          continue
        result &= " "
        result &= arg
      result &= &"</h3>\n"
   
    of "prop":
      var name = l.value.split(" ")[0]
      var size = l.value.split(" ")[1]
      var value = classPos
      classPos += parseInt(size)

      result &= &"""
        <h2 id="{name}">
          prop {className}{name}
          <span class="small">
            SIZE: {size}b
            POS: {value}b
          </span>
        </h2>
        """

    of "proc":
      var name = l.value.split(" ")[0]
      var input = l.value.split(" ")[1]
      var output = l.value.split(" ")[2]
     
      if className != "":
        result &= &"""
          <h2 id="{name}">
            proc {className}{name}
            <span class="small">
              START: {input} RET: {output}
            </span>
          </h2>
          """
      else:
        result &= &"""
          <h1 id="{name}">
            proc {className}{name}
            <span class="small">
              START: {input} RET: {output}
            </span>
          </h1>
          """
    else:
      quit l.value


proc gen_footer(): string = """
      </div>
    </div>
  </body>
</html>
"""

proc gen_file(input: string, output: string, title: string) =
  echo &"{input} -> {output}"
  var inputData: seq[inputLine]

  for line in readFile(input).split("\n"):
    if line != "":
      inputData &= inputLine(kind: line.split(" ")[0], value: line.split(" ")[1..^1].join(" "))

  var output = open(output, fmWrite)

  output.write(gen_header(title))
  
  output.write(gen_sidebar(inputData))
 
  output.write(gen_mid())
  
  output.write(gen_content(inputData))
  
  output.write(gen_footer())
  output.close()

proc main() =
  for k in walkDirRec("docs/src", relative = true):
    gen_file("docs/src" / k, "docs/ref" / k.replace(".sld", ".html"), k.replace(".sld", ".slm"))

when isMainModule:
  main()
