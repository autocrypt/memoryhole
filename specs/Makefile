#!/usr/bin/make -f

# To build this on a debian system, you'll want to:
#
# # apt install ruby-kramdown-rfc2629 xml2rfc

DRAFTS = memoryhole
OUTPUTS = $(foreach draft,$(DRAFTS),draft-${draft}.html draft-${draft}.xml draft-${draft}.txt)
STAGING = staging.xml

all: $(OUTPUTS) index.html

clean:
	rm -f $(OUTPUTS) *.$(STAGING)

draft-%.html: draft-%.xml
	xml2rfc $< --html

draft-%.xml: draft-%.md
	kramdown-rfc2629 $< > $*.$(STAGING)
	mv $*.$(STAGING) $@

draft-%.txt: draft-%.xml
	xml2rfc $< --text

index.html: draft-$(DRAFTS).html
	@echo Copying draft to index
	@cp $< $@

.PHONY: all clean
