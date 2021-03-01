# OpenFX-BRAW

Blackmagic RAW is a modern, high performance, professional RAW codec that is open, cross platform and free. Now available for Natron.

## Supported cameras:

 * Blackmagic Design Pocket Cinema Camera 4K
 * Blackmagic Design URSA Mini Pro G2
 * Blackmagic Design Pocket Cinema Camera 6K
 * Blackmagic URSA Broadcast
 * Canon EOS C300 Mark II captured by Blackmagic Video Assist 12G HDR
 * Panasonic EVA1 captured by Blackmagic Video Assist 12G HDR
 * Sigma fp captured by Blackmagic Video Assist 12G HDR

## Build

```
git clone https://github.com/rodlie/openfx-braw
cd openfx-braw
git submodule update -i --recursive
make CONFIG=release
```
