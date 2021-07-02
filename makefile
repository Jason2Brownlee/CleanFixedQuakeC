# makefile

# list of targets that should always run
.PHONY : clean build dist

# current version of the release
VERSION=1.0

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
	cp ${DOC}/*.txt ${BUILD}
	cp $(CURDIR)/LICENSE.txt ${BUILD}
	# create the archive
	cd ${BUILD};tar czvf quake_progs_gpl_v${VERSION}.tgz qc progs.dat *.txt
	# place the release for distribution
	cp ${BUILD}/quake_progs_gpl_v${VERSION}.tgz ${DIST}

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
