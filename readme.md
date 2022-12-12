# qrutil

A very simple command line program to quickly translate a string or a file to a qr code.

## Dependencies

[QRgen](https://github.com/aruZeta/QRgen)

[pixie](https://github.com/treeform/pixie)

## Compilation

`nim c qrgenerator.nim`

## Usage

- -s:"string to qrify"
- -f:"path to file to qrify"
- -o:"output path.png" (defaults to output.png)
- -p will output to the terminal
- -h displays help (will not output work if provided)

## Future work

export as a 3d model litophane style

## License

Distributed under the MIT License. See LICENSE for more information.
