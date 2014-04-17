all: index.html static

index.html: pandas_pywaw.ipynb
	# serve reveal.js from CDN (defaults to local file)
	ipython nbconvert --to slides pandas_pywaw.ipynb --template custom \
		--reveal-prefix https://cdn.jsdelivr.net/reveal.js/2.5.0 --stdout > index.html

out:
	mkdir out

# make static html file (replace // by http://)
static: index.html out
	@cp index.html out/index.html
	@cp custom.css out
	@cp img out -r
	@rm -rf ../out
	@mv out .. 
	@echo -e "\nDone!\n----\nOpen up out/index.html to see the slides.\n----"

serve: index.html
	-./serve_and_watch.sh

clean:
	rm -rf *html
	rm -rf out

.PHONY: serve

