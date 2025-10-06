.PHONY: all build clean serve help

all: help

build:
	bundle exec jekyll build

clean:
	rm -rf _site .jekyll-cache

serve:
	bundle exec jekyll serve --livereload

install:
	bundle install

help:
	@echo "Available commands:"
	@echo "  make build    - Build the site"
	@echo "  make clean    - Remove build files"
	@echo "  make serve    - Serve the site locally"
	@echo "  make install  - Install dependencies"
	@echo "  make help     - Show this help message"