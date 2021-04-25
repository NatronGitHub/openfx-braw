# OpenFX-BRAW

Blackmagic RAW is a modern, high performance, professional RAW codec that is open, cross platform and free. Now available for Natron.

![Screenshot](screenshot.png)

## Supported cameras:

 * Blackmagic Design Pocket Cinema Camera 4K
 * Blackmagic Design URSA Mini Pro G2
 * Blackmagic Design Pocket Cinema Camera 6K
 * Blackmagic URSA Broadcast
 * Blackmagic URSA Mini Pro 12K
 * Canon EOS C300 Mark II captured by Blackmagic Video Assist 12G HDR
 * Panasonic EVA1 captured by Blackmagic Video Assist 12G HDR
 * Sigma fp captured by Blackmagic Video Assist 12G HDR
 * Nikon Z 6 and Z 7 captured by Blackmagic Video Assist 12G HDR
 * Nikon Z 6II and Z 7II captured by Blackmagic Video Assist 12G HDR

## Blackmagic RAW SDK

Blackmagic RAW SDK must be installed before usage.

### Blackmagic RAW 1.8

 * [Windows](https://www.blackmagicdesign.com/no/support/download/50dc232a8f8b45619ecf0d9a40f92c8d/Windows)
 * [Linux](https://www.blackmagicdesign.com/no/support/download/50dc232a8f8b45619ecf0d9a40f92c8d/Linux)
 * [macOS](https://www.blackmagicdesign.com/no/support/download/50dc232a8f8b45619ecf0d9a40f92c8d/Mac%20OS%20X)

### Blackmagick RAW 2.0

 * [Windows](https://www.blackmagicdesign.com/no/support/download/6307842705f14a5dbb99daa90212c4ba/Windows)
 * [Linux](https://www.blackmagicdesign.com/no/support/download/6307842705f14a5dbb99daa90212c4ba/Linux)
 * [macOS](https://www.blackmagicdesign.com/no/support/download/6307842705f14a5dbb99daa90212c4ba/Mac%20OS%20X)


## Usage

Download latest release of OpenFX-BRAW and a version of the Blackmagic RAW SDK. Install the SDK using the installer, then extract the OpenFX-BRAW zip file and copy ``BlackmagicRAW.ofx.bundle`` to the Natron OFX plug-in folder.

In Natron you will now have a new node in ``Image/Readers/BlackmagicRAW``. Use that one when you need to read a BRAW file.

## Status

The project is considered complete on Windows and Linux (as of BRAW 1.8), some further fixes might be needed on macOS.
