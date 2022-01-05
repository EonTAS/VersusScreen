constSection:
fighterTypeSFXTable:
#standard
        .4byte 0xFFFFFFFF #nosfx
        .4byte 0x00000000
#double
        .4byte 0xFFFFFFFF #nosfx
        .4byte 0x00000000
#giant
        .4byte 0x0000203F
        .4byte 0x00000027
#metal
        .4byte 0x00002040
        .4byte 0x00000031
mapFileList:
        .4byte 0x00000000         [R_PPC_ADDR32(13, 5, "ItrSimpleMapString")]
        .byte 0x00, 0x00, 0x21, 0x00
panelList:
        .4byte 0x00000000         [R_PPC_ADDR32(13, 5, "ItrSimplPanel00String")]
        .byte 0x01, 0x01, 0x10, 0x00
        .4byte 0x00000000         [R_PPC_ADDR32(13, 5, "ItrSimplPanel01String")]
        .byte 0x02, 0x02, 0x11, 0x00
        .4byte 0x00000000         [R_PPC_ADDR32(13, 5, "ItrSimplPanel02String")]
        .byte 0x03, 0x03, 0x1F, 0x00
        .4byte 0x00000000         [R_PPC_ADDR32(13, 5, "ItrSimplPanel10String")]
        .byte 0x0F, 0x0F, 0x20, 0x00

animRateChoices:
defaultAnimUpdateRate:
        .float 1.0
zeroAnimUpdateRate:
        .float 0.0


vis0AnimChoices:
#one enemy
        .float 3.0
#two enemys first enemy
        .float 0.0
#three enemys
        .float 1.0
#invalid enemys
        .float 4.0
#team of enemys
        .float 3.0
#two enemys second enemy
        .float 2.0
#ally
        .float 5.0
magicIntToDouble:
        #.double 4503601774854144.0 but thats sorta ugly
        .8byte 0x4330000080000000
#appear to be unused
        .4byte 0x00000004
        .4byte 0x00000001
