# TeXLive Docker Image

## Usage

Prepare `build.sh` in your thesis repository. Make sure this script has executable permission.

``` bash
#!/bin/bash

#
# build.sh
#

platex main.tex
dvipdfmx main
```

Run this command at your thesis repository:

``` bash
$ docker run --rm -v $PWD:/tex quay.io/dtan4/texlive:latest /tex/build.sh
```

Then thesis PDF will be generated.

## License

[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)
