define(«title»,«define(«pagetitle»,«$1»)»)dnl
dnl #
pushdef(«post»,«ifelse(«$#», «0», ««post»», «dnl
<div class="post">
popdef(«post»)post($@)dnl
</div>
dnl»)»)dnl
