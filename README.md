# IBM PC Cassette Tape version of PC-MAN

This repo contains a copy of [PC Booter Game PC-MAN](https://www.mobygames.com/game/pc-man) on an IBM PC Cassette Tape.

It has been tested to work on my [XTjr](https://github.com/moogway82/XTjr) 8088 PC clone computer and in theory should work too on the original IBM 5150 and IBM PCjr. The only testing so far on these machines in via the MAME emulation of them.

The process of creating it was roughly:
- Dissassembled the boot sector and the game loading sectors in Ghidra
- Identified that it loaded tracks 1 to 4 to memory address 04c5:0000 to 04c5:3FFF
- Isolated game data from tracks 1-4 into a file and tested loading directly into memory using Debug, which worked
- Wrote a little assembly code in Debug to output game data to cassette blocks and recorded that
- Wrote a simple assembly program loader (BOOT.ASM) to load the game data from cassette to the same memory address
- Copied that assembly to BASIC DATA statements and wrote a simple BASIC program (LDPCMAN.BAS) to poke that into memory and run it - using [PC-BASIC](https://robhagemans.github.io/pcbasic/) and saved that to a WAV file
- Stiched the BASIC Loader WAV to the Game data WAV file to create the completed tape file!

Note that the BOOT.ASM program still has the debugging memory address of 24c5:0000 in it, which was changed to 4c5:0000 when I copied it to LDPCMAN.BAS.

Love to know if anyone gets it working on an actual IBM 5150 or PCjr, hit me up on [Twitter](https://twitter.com/mogwaay)

Enjoy!
