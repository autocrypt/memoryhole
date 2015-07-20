SRC_SCRIPTS=$(wildcard *.py)
DST_SCRIPTS=$(patsubst %.py,output/%.py,$(SRC_SCRIPTS))

default: $(DST_SCRIPTS)

output/%.py: %.py common/common.py
	@mkdir -p $(dir $@)
	@head -n `grep -ne '# ====== Do not change this line' $< \
		| awk -F : '{print $$1}'` \
			$<	>  $@
	@cat common/common.py >> $@
	@tail -n +`grep -ne '# ====== Do not change this line' $< \
		| awk -F : '{print $$1}'` \
			$<	>>  $@
	@chmod u+x $@
