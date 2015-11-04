INFILES = $(shell find '.' -type f -name '*.sh')
OUTFILE = bashacks.sh
EXECDIR = /opt

MANFILE = $(basename $(OUTFILE)).1
MANDIR = $(shell echo $(echo $MANPATH | cut -d \: -f1)/man1)

STLANGUAGE = $(shell echo $LANG | cut -d \. -f1) 
BAHSRCFILE = /etc/bash.bashrc

.DELETE_ON_ERROR:
.PHONY: all
all: clean
	@cat $(INFILES) >> $(OUTFILE)

.PHONY: install
install:

ifeq ("$(wildcard $(OUTFILE))","")
	$(error $(OUTFILE) not found. Try: make)
endif	

ifeq ($(STLANGUAGE), pt_BR)
	@install man/pt_BR/$(MANFILE) $(MANDIR)
else
	@install man/en/$(MANFILE) $(MANDIR)
endif

	@cp $(OUTFILE) $(EXECDIR)
	@sed -i "/source $(shell echo $(EXECDIR) | sed 's@\/@\\/@g')\/$(OUTFILE)/d" $(BAHSRCFILE)
	@echo -e 'source $(EXECDIR)/$(OUTFILE)' >> $(BAHSRCFILE)
	
.PHONY: clean
clean:
	@rm -f $(OUTFILE)

.PHONY: uninstall
uninstall:
	@rm -f $(MANDIR)/$(MANFILE)
	@rm -f $(EXECDIR)/$(OUTFILE)
	@sed -i "/source $(shell echo $(EXECDIR) | sed 's@\/@\\/@g')\/$(OUTFILE)/d" $(BAHSRCFILE)
