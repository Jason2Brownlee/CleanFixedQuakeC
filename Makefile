# makefile

# list of targets that should always run
.PHONY : clean build dist
# current version of the release
VERSION=1.6
# release filename
RELEASE=quake_progs_gpl_v${VERSION}.zip
# directory where the qc files are compiled
DIR_BUILD=$(CURDIR)/build
# directory where release artifacts are placed
DIR_DIST=$(CURDIR)/dist
# location of quakec source code
DIR_QC=$(CURDIR)/qc
# location of compilers
DIR_COMPILERS=$(CURDIR)/compilers
# specify preferred quakec compiler
QUAKEC=fteqcc


# qcc (idsoftware)
ifeq ($(QUAKEC),qcc)
	# filename of quakec compiler
	QCCNAME=qcc
	# location of the quakec compiler
	QCCCOMPILER=$(DIR_COMPILERS)/qcc/${QCCNAME}
	# quakec compiler flags
	QCFLAGS=
endif
# gmqcc
ifeq ($(QUAKEC),gmqcc)
	QCCNAME=gmqcc
	# location of the quakec compiler
	QCCCOMPILER=$(DIR_COMPILERS)/gmqcc/${QCCNAME}
	# quakec compiler flags
	QCFLAGS=-std=qcc -Wall
endif
# fteqcc
ifeq ($(QUAKEC),fteqcc)
	# filename of quakec compiler
	QCCNAME=fteqcc
	# location of the quakec compiler
	QCCCOMPILER=$(DIR_COMPILERS)/fteqcc/${QCCNAME}
	# quakec compiler flags
	QCFLAGS=-Wall
endif
# frikqcc
ifeq ($(QUAKEC),frikqcc)
	# filename of quakec compiler
	QCCNAME=frikqcc
	# location of the quakec compiler
	QCCCOMPILER=$(DIR_COMPILERS)/frikqcc/${QCCNAME}
	# quakec compiler flags
	QCFLAGS=-warn 9
endif
# meqcc
ifeq ($(QUAKEC),meqcc)
	# filename of quakec compiler
	QCCNAME=qcc
	# location of the quakec compiler
	QCCCOMPILER=$(DIR_COMPILERS)/meqcc/${QCCNAME}
	# quakec compiler flags
	QCFLAGS=
endif

# compile the quakec source code
build:
	# create the required directories
	mkdir -p ${DIR_BUILD}
	mkdir -p ${DIR_DIST}
	# compile quakec source
	cp -r ${DIR_QC} ${DIR_BUILD}/
	cp ${QCCCOMPILER} ${DIR_BUILD}/qc/
	cd ${DIR_BUILD}/qc/;./${QCCNAME} ${QCFLAGS};true
	rm ${DIR_BUILD}/qc/${QCCNAME}

# create a release
dist: clean build
	# put the documentation into position
	cp $(CURDIR)/*.txt ${DIR_BUILD}
	cp $(CURDIR)/*.md ${DIR_BUILD}
	# create the archive
	cd ${DIR_BUILD};zip -r ${RELEASE} qc progs.dat *.txt *.md
	# place the release for distribution
	cp ${DIR_BUILD}/${RELEASE} ${DIR_DIST}

# delete all build and release artifacts
clean:
	rm -rf ${DIR_BUILD}
	rm -rf ${DIR_DIST}

