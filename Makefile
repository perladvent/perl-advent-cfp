# Perl Advent CFP site
#
# JEKYLL_PORT  local port Jekyll binds to (127.0.0.1 only)
# TS_PORT      HTTPS port exposed on the tailnet via `tailscale serve`
JEKYLL_PORT ?= 4000
TS_PORT     ?= 8443

.PHONY: build serve serve-tailnet stop-tailnet clean

## build: generate the static site into _site/
build:
	bundle exec jekyll build

## serve: run Jekyll locally with live reload at http://127.0.0.1:$(JEKYLL_PORT)
serve:
	bundle exec jekyll serve --host 127.0.0.1 --port $(JEKYLL_PORT) --livereload

## serve-tailnet: serve the site over HTTPS to your tailnet only
serve-tailnet:
	bundle exec jekyll serve --host 127.0.0.1 --port $(JEKYLL_PORT) --detach
	tailscale serve --bg --https $(TS_PORT) http://127.0.0.1:$(JEKYLL_PORT)
	@echo
	@echo "Serving on your tailnet at: https://$$(tailscale status --json | \
		grep -m1 '\"DNSName\"' | cut -d'\"' -f4 | sed 's/\.$$//'):$(TS_PORT)/"

## stop-tailnet: tear down the tailnet proxy and the detached Jekyll server
stop-tailnet:
	tailscale serve --https=$(TS_PORT) off || true
	pkill -f "jekyll serve.*--port $(JEKYLL_PORT)" || true

## clean: remove the generated site
clean:
	bundle exec jekyll clean
