verslag.pdf: test.tex
	mkdir -p build
	lualatex --output-directory=build $<
	#bibtex build/verslag
	lualatex --output-directory=build $<
	#pkill -HUP mupdf

clean:
	rm -rf build
	rm -rf verslag.pdf
