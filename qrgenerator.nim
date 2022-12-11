import QRgen
import QRgen/renderer
import std/parseopt
import pixie

var data: string
var outputPath = "output.png"
var shouldPrint = false
var helpRequested = false

proc displayHelp=
    echo "-s:\"string to qrify\""
    echo "-f:\"path to file to qrify\""
    echo "-o:\"output path.png\" (defaults to output.png)"
    echo "-p will output to the terminal"
    echo "-h displays help (will not output work if provided)"

for kind, key, val in getopt():
    if key == "s":
        data = val
    if key == "f":
        data = readFile(val)
    if key == "o" or key == "output":
        outputPath = val
    if key == "p":
        shouldPrint = true
    if key == "h":
        displayHelp()
        helpRequested = true


if helpRequested == false:
    var myQr = newQr(data)
    var renderedQr = myQr.renderImg()
    if shouldPrint:
        myQr.printTerminal
    writeFile(renderedQr, outputPath)
        