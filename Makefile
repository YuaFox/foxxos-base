clean:
	rm -r dist
dist:
	mkdir dist
	dpkg-deb --build foxxos-base dist
	dpkg-deb --build foxxos-desktop dist
	dpkg-deb --build calamares-settings-foxxos dist
	equivs-build foxxos-system/ns-control
	mv foxxos-system_* dist/