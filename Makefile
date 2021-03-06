# Compatible with GNU make and BSD make.

include config.mk

install:
	@echo Installing to to ${PREFIX}/bin ...
	@mkdir -p ${PREFIX}/bin
	@cp -f bin/git-ci-mtime.sh ${PREFIX}/bin/git-ci-mtime
	@chmod 755 ${PREFIX}/bin/git-ci-mtime

uninstall:
	@echo Uninstalling from ${PREFIX}/bin ...
	@rm -f ${PREFIX}/bin/git-ci-mtime
