GENERATORS=$(wildcard ../generators/*.py)
EMAILS=$(patsubst ../generators/%.py,./%.eml,$(GENERATORS))

TARGETS=$(EMAILS)

default: $(TARGETS)

%.eml: ../generators/%.py
	@echo Generating $@
	@$<  >  $@

clean:
	rm $(TARGETS)
