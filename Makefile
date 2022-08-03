verslag.pdf: test.tex
	mkdir -p build
	latexmk -lualatex -output-directory=build $<

clean:
	rm -rf build
	rm -rf verslag.pdf
