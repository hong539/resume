# resume

My resume generated from *.tex file to request a job.

## Guides/Tips..etc

* LaTex «Lah-tech» or «Lay-tech»
* [LaTex project/About](https://www.latex-project.org/about/)
* [pdf2htmlEX/wiki/Quick-Start](https://github.com/pdf2htmlEX/pdf2htmlEX/wiki/Quick-Start)
* [pdf2htmlEX/wiki/Command-Line-Options](https://github.com/pdf2htmlEX/pdf2htmlEX/wiki/Command-Line-Options)
* [kmpg: a book could be generated from soruce with TeXLive toolchain](https://github.com/sysprog21/lkmpg)

## to do list

* CI/CD pipelines for building docker images from generating *.html, deploy to any docker engine host.
* How to show projects date?
~~* pdf2htmlEX (generate *.html from *.pdf)~~
* parse pdf with Python
~~* pipe text to html with some generator or render to outout html and related files~~
* automation for generating *.html, add html tags, cp to github pages

## quick start

* Install the CLI prerequisites
* generate *.pdf from *.tex
* generate *.html from *.pdf
* deploy docker with new images

```shell
bash scripts/pipelines.sh
```

```shell
# Debian / Ubuntu
sudo apt install make texlive-full

# Arch / Manjaro
sudo pacman -Syy
sudo pacman -S make texlive-most texlive-bin

# macOS
brew install mactex
sudo tlmgr update --self
```

* [Python: Usage with pyenv+poetry](https://github.com/hong539/setup_dev_environment/tree/main/programing_languages/python#usage-with-pyenvpoetry)
* [how-to-extract-text-from-a-pdf-file](https://stackoverflow.com/questions/34837707/how-to-extract-text-from-a-pdf-file)
* [pypdf](https://github.com/py-pdf/pypdf)

* parser with Python

```shell
poetry add pypdf
```

* build *.tex to output pdf with latexmk

```shell
#check latexmk installed or not
which latexmk
latexmk --version

cd src/resume/
latexmk yh_resume.tex
```

* build *.tex to output html with htlatex

```shell
htlatex file.tex "xhtml,html5,mathml,charset=utf-8" " -cunihtf -utf8"
```

* build *.tex to output pdf with make

```shell
#build pdf from tex source codes
make all
#rm extra files when bulding tex project
make clean
```

* Or building with vscode extensions
    * LaTeX Workshop

* generate *.html from *.pdf
* [How to use this docker container to convert pdf file to html](https://github.com/pdf2htmlEX/pdf2htmlEX/wiki/Download-Docker-Image#how-to-use-this-docker-container-to-convert-pdf-file-to-html)

```shell
#with docker
docker run -ti --rm -v ./src:/pdf -w /pdf pdf2htmlex/pdf2htmlex:0.18.8.rc2-master-20200820-alpine-3.12.0-x86_64 --zoom 1.3 yh_resume.pdf

#with podman
podman run -ti --rm -v ./src:/pdf -w /pdf docker.io/pdf2htmlex/pdf2htmlex:0.18.8.rc2-master-20200820-alpine-3.12.0-x86_64 --zoom 1.3 yh_resume.pdf

# Internal Error: Your version of iconv does not support the "Mac Roman" encoding.
# If this causes problems, reconfigure --without-iconv.
# Preprocessing: 2/2
# Working: 2/2

#add this for My github pages icon
<link rel="icon" type="image/x-icon" href="./favicon.ico">
<link rel="icon" type="image/x-icon" href="../images/ico/favicon.ico">

#edit *.tex with vscode and extension:LaTeX Workshop
vscode yh_resume.tex
vscode yh_resume.pdf

#build with bash shell scripts
bash ./scripts/build.sh

#run with bash shell scripts
bash ./scripts/start.sh
```