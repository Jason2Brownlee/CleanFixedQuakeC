# makefile

# list of targets that should always run
.PHONY : clean build dist

# current version of the release
VERSION=1.1

# release filename
RELEASE=quake_progs_gpl_v${VERSION}.zip
# directory where the qc files are compiled
BUILD=$(CURDIR)/build
# directory where release artifacts are placed
DIST=$(CURDIR)/dist
# location of documentation
DOC=$(CURDIR)/doc
# filename of quakec compiler
COMPILER=qcc
# location of the quakec compiler (change as needed)
QCC=$(CURDIR)/qcc/${COMPILER}
# location of quakec source code
QC=$(CURDIR)/qc

# create a release
dist: clean build
	# put the documentation into position
	cp $(CURDIR)/*.txt ${BUILD}
	cp $(CURDIR)/*.md ${BUILD}
	# create the archive
	cd ${BUILD};zip -r ${RELEASE} qc progs.dat *.txt *.md
	# place the release for distribution
	cp ${BUILD}/${RELEASE} ${DIST}

# compile the quakec source code
build:
	# create the required directories
	mkdir -p ${BUILD}
	mkdir -p ${DIST}
	# compile quakec source
	cp -r ${QC} ${BUILD}/
	cp ${QCC} ${BUILD}/qc/
	cd ${BUILD}/qc/;./${COMPILER};true
	rm ${BUILD}/qc/${COMPILER}

# delete all build and release artifacts
clean:
	rm -rf ${BUILD}
	rm -rf ${DIST}
