# makefile

# list of targets that should always run
.PHONY : clean build dist
# current version of the release
VERSION=1.3
# release filename
RELEASE=quake_progs_gpl_v${VERSION}.zip
# directory where the qc files are compiled
BUILD=$(CURDIR)/build
# directory where release artifacts are placed
DIST=$(CURDIR)/dist
# location of quakec source code
QC=$(CURDIR)/qc
# location of compilers
COMPILERS=$(CURDIR)/compilers

# qcc (idsoftware)
# ----------------
# # filename of quakec compiler
# QCCNAME=qcc
# # location of the quakec compiler
# QCCCOMPILER=$(COMPILERS)/qcc/${QCCNAME}
# # quakec compiler flags
# QCFLAGS=""

# gmqcc
# ----------------
# # filename of quakec compiler
# QCCNAME=gmqcc
# # location of the quakec compiler
# QCCCOMPILER=$(COMPILERS)/gmqcc/${QCCNAME}
# # quakec compiler flags
# QCFLAGS=-std=qcc -Wall

# fteqcc
# ----------------
# filename of quakec compiler
QCCNAME=fteqcc
# location of the quakec compiler
QCCCOMPILER=$(COMPILERS)/fteqcc/${QCCNAME}
# quakec compiler flags
QCFLAGS=-Wall

# frikqcc
# ----------------
# # filename of quakec compiler
# QCCNAME=frikqcc
# # location of the quakec compiler
# QCCCOMPILER=$(COMPILERS)/frikqcc/${QCCNAME}
# # quakec compiler flags
# QCFLAGS=-warn 9

# meqcc
# ----------------
# # filename of quakec compiler
# QCCNAME=qcc
# # location of the quakec compiler
# QCCCOMPILER=$(COMPILERS)/meqcc/${QCCNAME}
# # quakec compiler flags
# QCFLAGS=""


# compile the quakec source code
build:
	# create the required directories
	mkdir -p ${BUILD}
	mkdir -p ${DIST}
	# compile quakec source
	cp -r ${QC} ${BUILD}/
	cp ${QCCCOMPILER} ${BUILD}/qc/
	cd ${BUILD}/qc/;./${QCCNAME} ${QCFLAGS};true
	rm ${BUILD}/qc/${QCCNAME}

# create a release
dist: clean build
	# put the documentation into position
	cp $(CURDIR)/*.txt ${BUILD}
	cp $(CURDIR)/*.md ${BUILD}
	# create the archive
	cd ${BUILD};zip -r ${RELEASE} qc progs.dat *.txt *.md
	# place the release for distribution
	cp ${BUILD}/${RELEASE} ${DIST}

# delete all build and release artifacts
clean:
	rm -rf ${BUILD}
	rm -rf ${DIST}
