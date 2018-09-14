# LaTeX template for research diary #

This is the LaTeX template for writing up you research diary along one's PhD path. Couple of features include:

* Files can be sorted into chronological years, which helps with management.
* Bibliography is specific to each TeX file.

## Acknowledgement ##

The header files come from the [Mikhail Klassen's original project](https://github.com/mikhailklassen/research-diary-project). The build script is copyright from [Krishna Kumar's project for CUED PhD thesis template](https://github.com/kks32/phd-thesis-template).

## Usage ##

Each TeX file will need to be added inside the main document of `research-diary.tex`, i.e.:

```
% Include source files from each folder
\include{2018/2018-05-31}
\include{2018/2018-08-31}
```

Notice the file extensions are not included. After having done so, run the script using:

```
./compile-diary.sh compile research-diary
```

To clean all the output files, simply do:

```
./compile-diary.sh clean
```

A sample output, `research-diary.pdf`, was included.
