.memorymap
defaultslot 5
slotsize $2000
slot 0 $4000
slot 1 $6000
slot 2 $8000
slot 3 $a000
slot 4 $c000
slot 5 $e000
.endme

.rombankmap
bankstotal 64
banksize $2000
banks 64
.endro

.background "ninja.pce"

.bank 1 slot 2
.orga $80a4
        nop
        nop
        nop
