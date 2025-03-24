# resume

My resume generated from *.tex file to request a job.

## quick start

*  Nginx + pdf2htmlex bundled page output(html/css/javascript all in one)

```shell
git clone git@github.com:hong539/resume.git

cd resume

vim src/yh_resume.tex

bash scripts/pipelines.sh
```

## Project workflows/ CI/CD pipelines

* Nginx + pdf2htmlex bundled page output(html/css/javascript all in one)
  * Install the CLI prerequisites on your localhost
  * Git clone this repo on your localhost
  * manual edit src/*.tex
  * generate *.pdf from *.tex
  * generate *.html from *.pdf
  * deploy with docker images

* node.js + react.js single-page-cv app with pdf output
  * Install the CLI prerequisites on your localhost
  * Git clone this repo on your localhost
  * manual edit src/*.tex
  * generate *.pdf from *.tex
  * mv *.pdf to single-page-cv/public
  * devops under single-page-cv with next dev server
  * deploy with docker images

## to do list

* Compare Nginx + pdf2htmlex bundled page output(html/css/javascript all in one) VS node.js + react.js single-page-cv app with pdf output
* integration with CI/CD pipelines with GitHub Actions/Jenkins/ArgoCD...etc
~~* pdf2htmlEX (generate *.html from *.pdf)~~
~~* refactoring output from pdf2htmlEX with React+Next.js Web framework~~

## Guides/Tips/misc..etc

* LaTex «Lah-tech» or «Lay-tech»
* [LaTex project/About](https://www.latex-project.org/about/)
* [pdf2htmlEX/wiki/Quick-Start](https://github.com/pdf2htmlEX/pdf2htmlEX/wiki/Quick-Start)
* [pdf2htmlEX/wiki/Command-Line-Options](https://github.com/pdf2htmlEX/pdf2htmlEX/wiki/Command-Line-Options)
* [kmpg: a book could be generated from soruce with TeXLive toolchain](https://github.com/sysprog21/lkmpg)

## development notes

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

* [Python: Usage with uv](https://docs.astral.sh/uv/)
* [how-to-extract-text-from-a-pdf-file](https://stackoverflow.com/questions/34837707/how-to-extract-text-from-a-pdf-file)
* [pypdf](https://github.com/py-pdf/pypdf)

* parser with Python

```shell
uv add pypdf
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