all:

install:
	mkdir -p $(DESTDIR)/opt/hashstack/programs/
	mkdir -p $(DESTDIR)/opt/hashstack/agent/plugins/
	cp cudaHashcat.json $(DESTDIR)/opt/hashstack/agent/plugins/
	7z x -o$(DESTDIR)/opt/hashstack/programs/ cudaHashcat-2.01.7z
	mv $(DESTDIR)/opt/hashstack/programs/cudaHashcat-2.01 $(DESTDIR)/opt/hashstack/programs/cudaHashcat
	cd $(DESTDIR)/opt/hashstack/programs/cudaHashcat && \
		rm -rfv charsets/ docs/ extra/ masks/ rules/ example* *.exe *.cmd *.sh *32.bin && \
		rm -fv kernels/4318/*sm_[23]* kernels/4318/*sm_50* kernels/4318/*32.cubin

