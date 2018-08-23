all:
	cd src && hugo
	ls -1 | grep -v -e ".git.*" | grep -v "src" | xargs rm -vr
