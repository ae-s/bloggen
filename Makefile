#!/usr/bin/make -f

M4=m4 rules.m4

tags.m: *.html.m
	grep -H '^tags(' *.html.m | sed -e 's/^/pdef(/' -e 's/:/, /' -e "s/$$/\)/" > tags.m

tags.html: tags.m4 tags.m
	$(M4) -D'page=«tags»' tags.m4 rules-compilation.m4 > $@

tag-%.m: tags.m
	grep $(subst .m, , $(subst tag-, , $@)) tags.m > $@

tag-%.html: tags.m4 tag-%.m
	$(M4) -D"page=«$(subst .html,,$@)»" tags.m4 rules-compilation.m4 > $@

%.html: %.html.m
	$(M4) $< > $@


