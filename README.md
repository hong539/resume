# resume
My resume to request a job.


## quick start

* [kmpg: a book could be generated from soruce with TeXLive toolchain](https://github.com/sysprog21/lkmpg)

* Install the CLI prerequisites

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