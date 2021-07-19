# QuakeC GPL

Quake game code (progs.dat) with bug fixes released under the GPL.

## About

The Quake computer game Quake was released in 1996.

In 1999 the source code for the Quake engine (.exe), tools (qcc), and game code (progs.dat) was released under the GPL.

The version of the Quake game code released under the GPL was v1.01, different from the latest release of the game code v1.06.

This project provides a version of the Quake game code v1.01 released under the GPL updated with a "clean room" implementation of fixes in the v1.06 code.

This project also includes a host of other bug fixes such as compiler warnings, removal of unused code, and reported bugs.

## Features

This project provides a **clean** and **bug fixed** version of the Quake game code released under a permissive license.

Changes fall under three main categories, they are:

* **Official Fixes**: Fixes available in v1.06, v1.07, and v1.08 of the game code that were not released under the GPL.
* **Bug Fixes**: Fixes for community reported bugs that were never officially fixed.
* **Technical Fixes**: Fixes reported by QuakeC compilers, good practices, and consistency.

All changes are made with the intent of **not adding functionality** (this is not a mod) and **making minimal changes** (to make diff's with other code bases easy).

See the change log for a full list of fixes:

* [Changelog](CHANGELOG.txt)


## How to Download

The latest release can be downloaded from here:

* [Releases](https://github.com/Jason2Brownlee/QuakeCGPL/releases)

## How to Use

You can use this game code to **play quake** with bugs fixed, or as the basis for **mod development**.

### Play Quake

You can use the game code (`progs.dat`) to play Quake, such as singleplayer or multiplayer.

1. Download the .zip file for the latest release.
2. Unzip and locate the `progs.dat` file.
3. Create a mod subdirectory under your quake directory, e.g. `quakegpl/`
4. Place the `progs.dat` into your mod subdirectory, e.g. `quakegpl/progs.dat`
5. Start quake and load the mod, e.g. `quake -game quakegpl`

### Mod Development

You can use the .qc files as the basis for mod development.

1. Download the .zip file for the latest release.
2. Unzip and locate the `progs.dat` file.
3. Access the source code in the `qc/` subdirectory.

## How to Build

Instructions on how to download and build this project.

1. Checkout the code.
	1. `git clone https://github.com/Jason2Brownlee/QuakeCGPL.git`
	2. `cd QuakeCGPL`
2. Configure your QuakeC compiler (e.g. assumes you have qcc).
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
* [Interesting QC Bugs](https://quakeone.com/forum/quake-help/servers-and-coding/277010-interesting-qc-bugs)
* [GMQCC (QuakeC compiler)](https://graphitemaster.github.io/gmqcc/)
* [FTEQW including FTEQCC (QuakeC compiler)](https://triptohell.info/)

## License

* [License](LICENSE.txt)
