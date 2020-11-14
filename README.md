![Linux build](https://github.com/efreyu/tusur-asu-pascal/workflows/Linux%20build/badge.svg?branch=master)

##### The repository contains student work for my university course.

English | [Russian](https://github.com/efreyu/tusur-asu-pascal/blob/master/README_RU.md)

#### Requirements: 
`cmake` and `fpc`
#### Installation:
##### Linux
```bash
apt install cmake fpc
```
##### MacOS
```bash
brew install cmake fpc
```
#### Build:
```bash
mkdir build
cd build
cmake ..
make
```
#### Usage:
Just run binary in your build folder `./example_name`.
 
This repo contains CMake modules that identify and allow to use the freepascal compiler for CMake.

Credits for the CMake modules go to Vittorio Giovara
See also the [hedgewars](https://github.com/hedgewars/hw) project