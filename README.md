# QuakeC GPL

Quake game code (progs.dat) with all known bug fixes released under the GPL.

Project Home:
[https://github.com/Jason2Brownlee/QuakeCGPL/](https://github.com/Jason2Brownlee/QuakeCGPL/)

## About

The Quake computer game Quake was released in 1996.

In 1999 the source code for the Quake engine (.exe), tools, and game code (progs.dat) was released under the GPL.

The version of the game code released under the GPL was v1.01, different from the latest release of the game code v1.06.

This project provides a version of the quake game code v1.01 released under the GPL updated with a "clean room" implementation of fixes in the v1.06 code, and other bug fixes.

## Download

The latest release can be downloaded from here:

[https://github.com/Jason2Brownlee/QuakeCGPL/releases](bin/https://github.com/Jason2Brownlee/QuakeCGPL/releases)

## Build

1. Checkout the code.
	1. `git clone https://github.com/Jason2Brownlee/QuakeCGPL.git`
	2. `cd QuakeCGPL`
2. Configure your QuakeC compiler (e.g. assumes you have qcc).
	1. Set `COMPILER` and `QCC` in `makefile`
3. Create a release.
	1. `make`

Retrieve the release from `dist/`

