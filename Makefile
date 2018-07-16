SCRIPTS_SRC:=$(shell find scripts -name '*.rb' -print0 | sed 's/ /\\ /g;s/\x0/ /g')
TARGETS:=$(patsubst Data.editor/%.rxdata,Data/%.rxdata,$(wildcard Data.editor/*.rxdata))

all: $(TARGETS)

clean:
	$(RM) $(TARGETS)

Data/Scripts.rxdata: $(SCRIPTS_SRC) scripts.txt | Data
#~ 	echo "$(RUBY_SRC)" | xargs -n1 ruby -c
	tools/build_scripts scripts.txt $@

Data/CommonEvents.rxdata: Data.editor/CommonEvents.rxdata events/CommonEvents.script | Data
	tools/smod -c $(word 1,$^) $(word 2,$^) > $@

Data/Map%.rxdata: Data.editor/Map%.rxdata events/Map%.script | Data
	tools/smod -c $(word 1,$^) $(word 2,$^) > $@

Data/%.rxdata: Data.editor/%.rxdata | Data
	cp $^ $@

Data:
	mkdir $@
