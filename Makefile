#!/usr/bin/make -f

fontpath=/usr/share/fonts/truetype/malayalam
font=Suruma
outdir=build

default: ttf
all: webfonts

clean:
	@rm -f ./tests/*.pdf;
	@rm -rf build;

ttf:
	@echo "Generating ${font}.ttf"
	@fontforge -lang=ff -c "Open('${font}.sfd'); Generate('${font}.ttf')";
	@mkdir -p ${outdir};
	@mv *.ttf ${outdir}/;

webfonts:ttf
	@echo "Generating webfonts";
	@fonttools ttLib.woff2 compress ./${outdir}/${font}.ttf;

install: ttf
	@install -D -m 0644 ./${outdir}/${font}.ttf ${DESTDIR}${fontpath}/${font}.ttf;

uninstall:
	@rm ${DESTDIR}${fontpath}/${font}.ttf;

test: 
# Test the fonts
	@echo "Testing font ${font}";
	@hb-view ./${outdir}/${font}.ttf --text-file tests/tests.txt --output-file tests/${font}-ttf.pdf;
