changequote(`«', `»')
define(«tag»,<a href="blogurl«/«tag»/»$1">$1«</a>»)
define(«apply»,«ifelse(«$#», «2», «indir(«$1», «$2»)», «indir(«$1», «$2»)«, »apply(«$1», shift(shift($@)))»)»)
