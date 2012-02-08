include(«pagebegin.htfrag»)dnl
define(«title»,«pushdef(«title»,«$1»)»)dnl
dnl # save post macro, cos we're going to play with it
define(«post»,«ifelse(«$#», «0», ««post»», «dnl
<div class="«post»">
<h3>title</h3>
text()
<p class="attribution">datecreate() author()</p>
tags()
</div>popdef(«title»)»)»)
include(page«.m»)
include(«pageend.htfrag»)dnl
