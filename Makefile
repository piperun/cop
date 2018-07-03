SCRIPTS_SRC:=$(shell find scripts -name '*.rb' -print0 | sed 's/ /\\ /g;s/\x0/ /g')
TARGETS=Scripts.rxdata CommonEvents.rxdata Map024.rxdata

all: $(TARGETS)

clean:
	$(RM) $(TARGETS)

Scripts.rxdata: $(SCRIPTS_SRC) scripts.txt
#~ 	echo "$(RUBY_SRC)" | xargs -n1 ruby -c
	tools/build_scripts scripts.txt $@

CommonEvents.rxdata: events/CommonEvents.script
	tools/smod -c rxdata/CommonEvents.rxdata events/CommonEvents.script > $@

Map024.rxdata: events/Map024.script
	tools/smod -c rxdata/Map024.rxdata events/Map024.script > $@

events: $(wildcard rxdata/*.rxdata)
	mkdir events
	$(foreach f,$^,tools/smod -e $f > events/$(patsubst %.rxdata,%.script,$(notdir $f));)
