DST=dst
SRC=src

ASSETS=$(wildcard $(SRC)/assets/*)

.PHONY: all clean

all: $(DST)/index.html $(DST)/maintenance.css $(ASSETS:$(SRC)/%=$(DST)/%)

clean:
	$(RM) -r "$(DST)"

$(DST)/index.html: $(SRC)/index.html
	install -m0755 -d "$(DST)"
	install -m0644 "$^" "$@"

$(DST)/maintenance.css: $(SRC)/maintenance.scss
	sassc -Ivendor "$^" "$@"

$(DST)/assets/%: $(SRC)/assets/%
	install -m0755 -d "$(DST)/assets"
	install -m0644 "$^" "$@"
