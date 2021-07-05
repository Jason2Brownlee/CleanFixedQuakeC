# QuakeC GPL

Quake game code (progs.dat) with bug fixes released under the GPL.

## About

The Quake computer game Quake was released in 1996.

In 1999 the source code for the Quake engine (.exe), tools (qcc), and game code (progs.dat) was released under the GPL.

The version of the Quake game code released under the GPL was v1.01, different from the latest release of the game code v1.06.

This project provides a version of the quake game code v1.01 released under the GPL updated with a "clean room" implementation of fixes in the v1.06 code, and other bug fixes.

## Download

The latest release can be downloaded from here:

https://github.com/Jason2Brownlee/QuakeCGPL/releases

## Use

### Play Quake

You can use the game code (progs.dat) to play Quake, such as singleplayer or multiplayer.

1. Download the .zip file for the latest release.
2. Unzip and locate the `progs.dat` file.
3. Create a mod subdirectory under your quake directory, e.g. `quakegpl/`
4. Place the `progs.dat` into your mod subdirectory, e.g. `quakegpl/progs.dat`
5. Start quake and load the mod, e.g. `quake -game quakegpl`

### Mod Development

You can use the .qc files as the basis for mod development.

## Build

1. Checkout the code.
	1. `git clone https://github.com/Jason2Brownlee/QuakeCGPL.git`
	2. `cd QuakeCGPL`
2. Configure your QuakeC compiler (e.g. assumes you have qcc).
	1. Set `COMPILER` and `QCC` in `makefile`
3. Create a release.
	1. `make`
4. Retrieve the release from `dist/`


