all:
	cd src && hugo
	touch tmp-file
	ls -1 | grep -v -e ".git.*" | grep -v "src" | grep -v "Makefile" | xargs rm -vr
	cp -r src/public/* ./
