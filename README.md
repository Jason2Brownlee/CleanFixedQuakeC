# Clean Fixed QuakeC

Clean and bug-fixed version of the Quake game code (progs.dat) released under the GPL.

## About

The computer game Quake was released in 1996.

In 1999 the source code for the Quake engine (.exe), tools (QuakeC complier), and game code (progs.dat) was released under the GPL.

The version of the Quake game code released under the GPL was v1.01, different from the latest release of the game code v1.06.

This project provides a version of the Quake game code v1.01 released under the GPL updated with a "clean room" implementation of fixes in the v1.06 code.

This project also includes a host of other improvements such as fixed compiler warnings, removal of unused code, and fixes for community reported bugs.

A compiled version of the game code (progs.dat) is provided so you can play a fixed version of Quake, and the source code (.qc files) provide the basis for Quake mod development.

## Features

This project provides a **clean** and **bug-fixed** version of the Quake game code released under a permissive license.

Changes fall under three main categories, they are:

* **Official Fixes**: Re-implementation of fixes available in non-GPL official releases, e.g.:
    * Fixes in final official game code release v1.06.
    * Fixes in Quake Mission Pack 1: Scourge of Armagon v1.07.
    * Fixes in Quake Mission Pack 2: Dissolution of Eternity v1.08.
* **Bug Fixes**: Fixes for bugs reported by the community that were never officially fixed, e.g.:
    * Double counting fish monsters (rotfish) at end of level.
    * Fish not support gib death.
    * Never switch to lightning gun with backpack pickup when underwater.
* **Technical Fixes**: Fixes reported by QuakeC compilers, good practices, and consistency, e.g.:
    * Removal of unused .qc files, unused global variables, and unused local variables.
    * Fixed compiler warnings like bad function definitions and missing return values.
    * Rationalized code formatting for consistency like indenting and comment placement.

All changes were made with the intent of **not adding functionality** (this is not a mod) and **making minimal changes** (to make diff's with other code bases easy).

See the change log for a full list of fixes:

* [Changelog](CHANGELOG.txt)


## How to Download

The latest release can be downloaded from here:

* [Releases](https://github.com/Jason2Brownlee/CleanFixedQuakeC/releases)

## How to Use

You can use this game code to **play quake** with bugs fixed, or as the basis for **mod development**.

### Play Quake

You can use the game code (`progs.dat`) to play Quake, such as singleplayer or multiplayer.

1. Download the .zip file for the latest release.
2. Unzip and locate the `progs.dat` file.
3. Create a mod subdirectory under your quake directory, e.g. `fixedquake/`
4. Place the `progs.dat` into your mod subdirectory, e.g. `fixedquake/progs.dat`
5. Start quake and load the mod, e.g. `quake -game fixedquake`

### Mod Development

You can use the .qc files as the basis for mod development.

1. Download the .zip file for the latest release.
2. Unzip and locate the `progs.dat` file.
3. Access the source code in the `qc/` subdirectory.

## How to Build

Instructions on how to build this project.

1. Checkout the code.
	1. `git clone https://github.com/Jason2Brownlee/CleanFixedQuakeC.git`
	2. `cd CleanFixedQuakeC`
2. Configure your QuakeC compiler (e.g. assumes you have access to a compiler).
	1. Set `QCCNAME`, `QCCCOMPILER`, and `QCFLAGS` in `makefile`
3. Create a release.
	1. `make dist`
4. Retrieve the release from `dist/`

## Resources

Useful resources for fixing bugs in Quake game code.

* [Quake Engine Source (GPL)](https://github.com/id-Software/Quake)
* [Quake Tools and Utilities (GPL)](https://github.com/id-Software/Quake-Tools)
* [Quake Info Pool (QIP)](https://www.quake-info-pool.net/home.htm)
* [QuakeWiki: Quake Bugs](https://quakewiki.org/wiki/Quake_bugs)
* [GMQCC (QuakeC compiler)](https://graphitemaster.github.io/gmqcc/)
* [FTEQW including FTEQCC (QuakeC compiler)](https://triptohell.info/)

## License

* [License](LICENSE.txt)
