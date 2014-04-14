.PHONY: clean
clean:
	rm -fr _site/*

deploy: build
	cd _site && \
	git init . && \
	git add . && \
	git commit -m "`date`" && \
	git push git@github.com:supershabam/blog master:gh-pages --force && \
	rm -fr .git

build: clean
	jekyll build
