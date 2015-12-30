# TeXLive Docker Image
[![Docker Repository on Quay](https://quay.io/repository/dtan4/texlive/status "Docker Repository on Quay")](https://quay.io/repository/dtan4/texlive)
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

Docker Image for [TeX Live](https://www.tug.org/texlive/).

## Image Repository
[__quay.io/dtan4/texlive__](https://quay.io/repository/dtan4/texlive)

## Supported Tags
### `latest`
- Ubuntu 14.04
- TeXLive 2013
  - texlive
  - texlive-lang-cjk

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
