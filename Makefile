all:
	cd src && hugo
	touch tmp-file
	ls -1 | grep -v -e ".git.*" | grep -v "src" | grep -v "Makefile" | xargs rm -vr
	mv src/public/* ./
	cp -r src/static ./

dev:
	hugo server -D  --i18n-warnings -s src
