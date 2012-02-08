dnl #
dnl # You are not required to understand any of this.  m4 is, as far
dnl # as I can tell, a way for nerds to do puzzle games while they
dnl # appear to be getting actual work done.
dnl #
dnl # I'm using these, in this direction, specifically to confuse Germans.
changequote(`«', `»')dnl
dnl #
dnl # Constant, always
define(«blogurl», «/blog»)dnl
dnl #
dnl # tag management
define(«tag»,<a href="blogurl«/«tag»/»$1">$1«</a>»)dnl
define(«tagsr»,«ifelse(«$#», «0», , «$#», «1», «tag(«$1»)», «tag($1)«, »tagsr(shift($@))»)»)dnl
define(«tags»,«pushdef(«tags»,«ifelse(«$#», «0», , «$#», «1», «<p class="«tags»">Tag: tag(«$1»)</p>», «<p>Tags: tagsr($@)</p>»)»)popdef(tags)»)dnl
define(«apply»,«ifelse(«$#», «2», «indir($1, $2)», «indir($1, $2)»«, »apply($1, shift(shift($@)))»)»)dnl
dnl #
dnl # dates
define(«date»,«pushdef(«date»,«$1»)»)dnl
define(«datecreate»,«<span class="«date»">Written on date()</span>popdef(«date»)»)dnl
dnl #
dnl # author
define(«author»,«pushdef(«author»,«<span class="«author»">by $1</span>popdef(«author»)»)»)dnl
dnl #
dnl # post content itself
define(«text»,«pushdef(«text»,«$1«»popdef(«text»)»)»)dnl
dnl #
dnl # post wrapper, redefine as desired
define(«post»,«ifelse(«$#», «0», ««post»», «dnl
<div class="«post»">dnl
text()
<p class="attribution">datecreate() author()</p>
tags()
</div>»)»)dnl
