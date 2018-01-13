manuscript.pdf: manuscript.dvi
	dvipdfmx manuscript.dvi

manuscript.dvi: manuscript.tex description.tex
	platex manuscript.tex

description.tex: description.md
	@cat $^ \
	| pandoc -t latex \
	| sed 's/includegraphics/includegraphics[width=1.0\\columnwidth]/g' \
	| sed 's/\[htbp\]/\[t\]/g' \
	> description.tex 

#test.xbb: test.png
#	extractbb test.png

clean:
	@rm -rf description.{dvi,log,tex} manuscript.{pdf,aux,dvi,log,out} *.xbb
	