
BASE=$(PWD)
TGT=njm_app_bin

export DBNAME=njm_demo_db
export FJS_GL_DBGLEV=3
export CUSTOM_DB=../custom.json
export FGLIMAGEPATH=$(BASE)/pics:$(FGLDIR)/lib/image2font.txt
export FGLRESOURCEPATH=$(BASE)/njm_menu/etc
export FGLLDPATH=$(TRG):$(GREDIR)/lib

components = \
	g2_lib \
	njm_demo_db \
	fontAwesome \
	matDesTest \
	njm_menu \
	wc_d3Charts \
	wc_kite \
	widgets \
	wizard \
	gbc_app 

all: $(components)
	@for component in $^ ; do  \
		$(MAKE) -C $$component $@ ; \
	done

run:
	cd $(TGT) && fglrun njm_menu.42r	

clean:
	cd njm_app_bin && rm *.42?

update:
	git submodule foreach git pull origin master
