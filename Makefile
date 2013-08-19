all: cv_cn.pdf cv.pdf

cn: cv_cn.pdf
cn2: cv2_cn.pdf

en: cv.pdf

cv_cn.pdf: cv_cn.tex
	-xelatex -output-format=pdf cv_cn.tex

cv2_cn.pdf: cv2_cn.tex
	-xelatex -output-format=pdf cv2_cn.tex
cv.pdf: cv.tex
	-latex -output-format=pdf cv.tex

clean:
	rm -f *.pdf
	rm -f *.dvi
	rm -f *.log
	rm -f *.aux
	rm -f *.out
