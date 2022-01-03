.set sceneStageNum, 0x35C
.set sceneMode, 0x360
.set sceneOpponentCount, 0x364
.set sceneEnemyOneChar, 0x368
.set sceneEnemyOneType, 0x36C
.set sceneEnemyTwoChar, 0x370
.set sceneEnemyTwoType, 0x374
.set sceneEnemyThreeChar, 0x378
.set sceneEnemeyThreeType, 0x37C
.set sceneAllyCount, 0x380
.set sceneAllyOneChar, 0x384
.set sceneAllyOneType, 0x388
.set sceneAllyTwoChar, 0x38C
.set sceneAllyTwoType, 0x390

.set heapTableOffset, 0xAC
.set heapStageNum, 0xAC
.set heapMode, 0xB0
.set modeEnumStandard, 0x0
.set modeEnumTeam, 0x1
.set modeEnumBTT, 0x2
.set heapOpponentCount, 0xB4
.set heapEnemyOneChar, 0xB8
.set heapEnemyOneType, 0xBC
.set heapEnemyTwoChar, 0xC0
.set heapEnemyTwoType, 0xC4
.set heapEnemyThreeChar, 0xC8
.set heapEnemeyThreeType, 0xCC
.set heapAllyCount, 0xD0
.set heapAllyOneChar, 0xD4
.set heapAllyOneType, 0xD8
.set heapAllyTwoChar, 0xDC
.set heapAllyTwoType, 0xE0

muIntroTask__create:
    /* 00000000: */    stwu r1,-0x50(r1)
    /* 00000004: */    mflr r0
    /* 00000008: */    li r3,0x198
    /* 0000000C: */    li r4,0x2A
    /* 00000010: */    stw r0,0x54(r1)
    /* 00000014: */    stw r31,0x4C(r1)
    /* 00000018: */    bl __unresolved                          [R_PPC_REL24(0, 4, "srHeapType____nw")]
    /* 0000001C: */    cmpwi r3,-0x0
    /* 00000020: */    mr r31,r3
    /* 00000024: */    beq- loc_30
    /* 00000028: */    bl muIntroTask____ct
    /* 0000002C: */    mr r31,r3
loc_30:
    /* 00000030: */    mr r3,r31
    /* 00000034: */    bl loc_894
    /* 00000038: */    lis r4,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_0")]
    /* 0000003C: */    addi r3,r31,0xE8
    /* 00000040: */    addi r4,r4,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_0")]
    /* 00000044: */    li r5,0x2B
    /* 00000048: */    li r6,-0x0
    /* 0000004C: */    li r7,-0x0
    /* 00000050: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__readRequest")]
    /* 00000054: */    lwz r3,heapMode(r31)
    /* 00000058: */    li r5,-0x1
    /* 0000005C: */    cmpwi r3,modeEnumBTT
    /* 00000060: */    blt- loc_68
    /* 00000064: */    subi r5,r3,0x2
loc_68:
    /* 00000068: */    cmpwi r5,-0x0
    /* 0000006C: */    bge- loc_7C
    /* 00000070: */    mr r3,r31
    /* 00000074: */    bl loc_950
    /* 00000078: */    b loc_AC
loc_7C:
    /* 0000007C: */    lis r4,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_1C")]
    /* 00000080: */    addi r3,r1,0x8
    /* 00000084: */    addi r4,r4,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_1C")]
    /* 00000088: */    addi r5,r5,0x1
    /* 0000008C: */    crclr 6
    /* 00000090: */    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    /* 00000094: */    addi r3,r31,0xFC
    /* 00000098: */    addi r4,r1,0x8
    /* 0000009C: */    li r5,0x2A
    /* 000000A0: */    li r6,-0x0
    /* 000000A4: */    li r7,-0x0
    /* 000000A8: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__readRequest")]
loc_AC:
    /* 000000AC: */    bl __unresolved                          [R_PPC_REL24(0, 4, "muMenu__loadMenuSound")]
    /* 000000B0: */    li r0,-0x0
    /* 000000B4: */    mr r3,r31
    /* 000000B8: */    stb r0,0x108(r31)
    /* 000000BC: */    stw r0,0xE4(r31)
    /* 000000C0: */    bl muIntroTask__makeSoundScript
    /* 000000C4: */    mr r3,r31
    /* 000000C8: */    lwz r31,0x4C(r1)
    /* 000000CC: */    lwz r0,0x54(r1)
    /* 000000D0: */    mtlr r0
    /* 000000D4: */    addi r1,r1,0x50
    /* 000000D8: */    blr
muIntroTask____ct:
    /* 000000DC: */    stwu r1,-0x10(r1)
    /* 000000E0: */    mflr r0
    /* 000000E4: */    lis r4,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_3C")]
    /* 000000E8: */    li r5,0x8
    /* 000000EC: */    stw r0,0x14(r1)
    /* 000000F0: */    addi r4,r4,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_3C")]
    /* 000000F4: */    li r6,0xF
    /* 000000F8: */    li r7,0x8
    /* 000000FC: */    stw r31,0xC(r1)
    /* 00000100: */    mr r31,r3
    /* 00000104: */    li r8,0x1
    /* 00000108: */    stw r30,0x8(r1)
    /* 0000010C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfTask____ct")]
    /* 00000110: */    lis r4,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_1C0")]
    /* 00000114: */    addi r5,r31,0x4C
    /* 00000118: */    li r0,-0x0
    /* 0000011C: */    addi r3,r31,0x54
    /* 00000120: */    addi r4,r4,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_1C0")]
    /* 00000124: */    stw r0,0x40(r31)
    /* 00000128: */    cmplw r5,r3
    /* 0000012C: */    stw r4,0x3C(r31)
    /* 00000130: */    stw r0,0x44(r31)
    /* 00000134: */    stw r0,0x48(r31)
    /* 00000138: */    bge- loc_23C
    /* 0000013C: */    addi r6,r31,0x4C
    /* 00000140: */    addi r4,r31,0x34
    /* 00000144: */    sub r7,r3,r6
    /* 00000148: */    addi r8,r7,0x3
    /* 0000014C: */    srawi r0,r8,2
    /* 00000150: */    addze r9,r0
    /* 00000154: */    addi r10,r9,0x1
    /* 00000158: */    cmpwi r10,0x8
    /* 0000015C: */    ble- loc_210
    /* 00000160: */    cmplw r6,r3
    /* 00000164: */    li r3,-0x0
    /* 00000168: */    li r6,-0x0
    /* 0000016C: */    bgt- loc_194
    /* 00000170: */    rlwinm. r0,r7,0,0,0
    /* 00000174: */    li r7,0x1
    /* 00000178: */    bne- loc_188
    /* 0000017C: */    rlwinm. r0,r8,0,0,0
    /* 00000180: */    beq- loc_188
    /* 00000184: */    li r7,-0x0
loc_188:
    /* 00000188: */    cmpwi r7,-0x0
    /* 0000018C: */    beq- loc_194
    /* 00000190: */    li r6,0x1
loc_194:
    /* 00000194: */    cmpwi r6,-0x0
    /* 00000198: */    beq- loc_1C4
    /* 0000019C: */    rlwinm. r7,r9,0,0,0
    /* 000001A0: */    li r6,0x1
    /* 000001A4: */    bne- loc_1B8
    /* 000001A8: */    rlwinm r0,r10,0,0,0
    /* 000001AC: */    cmpw r7,r0
    /* 000001B0: */    beq- loc_1B8
    /* 000001B4: */    li r6,-0x0
loc_1B8:
    /* 000001B8: */    cmpwi r6,-0x0
    /* 000001BC: */    beq- loc_1C4
    /* 000001C0: */    li r3,0x1
loc_1C4:
    /* 000001C4: */    cmpwi r3,-0x0
    /* 000001C8: */    beq- loc_210
    /* 000001CC: */    addi r0,r4,0x1F
    /* 000001D0: */    li r3,-0x0
    /* 000001D4: */    sub r0,r0,r5
    /* 000001D8: */    rlwinm r0,r0,27,5,31
    /* 000001DC: */    mtctr r0
    /* 000001E0: */    cmplw r5,r4
    /* 000001E4: */    bge- loc_210
loc_1E8:
    /* 000001E8: */    stw r3,-0x0(r5)
    /* 000001EC: */    stw r3,0x4(r5)
    /* 000001F0: */    stw r3,0x8(r5)
    /* 000001F4: */    stw r3,0xC(r5)
    /* 000001F8: */    stw r3,0x10(r5)
    /* 000001FC: */    stw r3,0x14(r5)
    /* 00000200: */    stw r3,0x18(r5)
    /* 00000204: */    stw r3,0x1C(r5)
    /* 00000208: */    addi r5,r5,0x20
    /* 0000020C: */    bdnz+ loc_1E8
loc_210:
    /* 00000210: */    addi r3,r31,0x54
    /* 00000214: */    li r4,-0x0
    /* 00000218: */    addi r0,r3,0x3
    /* 0000021C: */    sub r0,r0,r5
    /* 00000220: */    rlwinm r0,r0,30,2,31
    /* 00000224: */    mtctr r0
    /* 00000228: */    cmplw r5,r3
    /* 0000022C: */    bge- loc_23C
loc_230:
    /* 00000230: */    stw r4,-0x0(r5)
    /* 00000234: */    addi r5,r5,0x4
    /* 00000238: */    bdnz+ loc_230
loc_23C:
    /* 0000023C: */    addi r5,r31,0x58
    /* 00000240: */    addi r3,r31,0x5C
    /* 00000244: */    li r0,-0x0
    /* 00000248: */    cmplw r5,r3
    /* 0000024C: */    stw r0,0x54(r31)
    /* 00000250: */    bge- loc_354
    /* 00000254: */    addi r6,r31,0x58
    /* 00000258: */    addi r4,r31,0x3C
    /* 0000025C: */    sub r7,r3,r6
    /* 00000260: */    addi r8,r7,0x3
    /* 00000264: */    srawi r0,r8,2
    /* 00000268: */    addze r9,r0
    /* 0000026C: */    addi r10,r9,0x1
    /* 00000270: */    cmpwi r10,0x8
    /* 00000274: */    ble- loc_328
    /* 00000278: */    cmplw r6,r3
    /* 0000027C: */    li r3,-0x0
    /* 00000280: */    li r6,-0x0
    /* 00000284: */    bgt- loc_2AC
    /* 00000288: */    rlwinm. r0,r7,0,0,0
    /* 0000028C: */    li r7,0x1
    /* 00000290: */    bne- loc_2A0
    /* 00000294: */    rlwinm. r0,r8,0,0,0
    /* 00000298: */    beq- loc_2A0
    /* 0000029C: */    li r7,-0x0
loc_2A0:
    /* 000002A0: */    cmpwi r7,-0x0
    /* 000002A4: */    beq- loc_2AC
    /* 000002A8: */    li r6,0x1
loc_2AC:
    /* 000002AC: */    cmpwi r6,-0x0
    /* 000002B0: */    beq- loc_2DC
    /* 000002B4: */    rlwinm. r7,r9,0,0,0
    /* 000002B8: */    li r6,0x1
    /* 000002BC: */    bne- loc_2D0
    /* 000002C0: */    rlwinm r0,r10,0,0,0
    /* 000002C4: */    cmpw r7,r0
    /* 000002C8: */    beq- loc_2D0
    /* 000002CC: */    li r6,-0x0
loc_2D0:
    /* 000002D0: */    cmpwi r6,-0x0
    /* 000002D4: */    beq- loc_2DC
    /* 000002D8: */    li r3,0x1
loc_2DC:
    /* 000002DC: */    cmpwi r3,-0x0
    /* 000002E0: */    beq- loc_328
    /* 000002E4: */    addi r0,r4,0x1F
    /* 000002E8: */    li r3,-0x0
    /* 000002EC: */    sub r0,r0,r5
    /* 000002F0: */    rlwinm r0,r0,27,5,31
    /* 000002F4: */    mtctr r0
    /* 000002F8: */    cmplw r5,r4
    /* 000002FC: */    bge- loc_328
loc_300:
    /* 00000300: */    stw r3,-0x0(r5)
    /* 00000304: */    stw r3,0x4(r5)
    /* 00000308: */    stw r3,0x8(r5)
    /* 0000030C: */    stw r3,0xC(r5)
    /* 00000310: */    stw r3,0x10(r5)
    /* 00000314: */    stw r3,0x14(r5)
    /* 00000318: */    stw r3,0x18(r5)
    /* 0000031C: */    stw r3,0x1C(r5)
    /* 00000320: */    addi r5,r5,0x20
    /* 00000324: */    bdnz+ loc_300
loc_328:
    /* 00000328: */    addi r3,r31,0x5C
    /* 0000032C: */    li r4,-0x0
    /* 00000330: */    addi r0,r3,0x3
    /* 00000334: */    sub r0,r0,r5
    /* 00000338: */    rlwinm r0,r0,30,2,31
    /* 0000033C: */    mtctr r0
    /* 00000340: */    cmplw r5,r3
    /* 00000344: */    bge- loc_354
loc_348:
    /* 00000348: */    stw r4,-0x0(r5)
    /* 0000034C: */    addi r5,r5,0x4
    /* 00000350: */    bdnz+ loc_348
loc_354:
    /* 00000354: */    li r30,-0x0
    /* 00000358: */    lis r4,-0x0                              [R_PPC_ADDR16_HA(13, 1, "muFileIOHandle____ct")]
    /* 0000035C: */    lis r5,-0x0                              [R_PPC_ADDR16_HA(13, 1, "muFileIOHandle____dt")]
    /* 00000360: */    stw r30,0x5C(r31)
    /* 00000364: */    addi r3,r31,0xE8
    /* 00000368: */    addi r4,r4,-0x0                          [R_PPC_ADDR16_LO(13, 1, "muFileIOHandle____ct")]
    /* 0000036C: */    stw r30,0xE4(r31)
    /* 00000370: */    addi r5,r5,-0x0                          [R_PPC_ADDR16_LO(13, 1, "muFileIOHandle____dt")]
    /* 00000374: */    li r6,0x4
    /* 00000378: */    li r7,0x8
    /* 0000037C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "NMWException____construct_array")]
    /* 00000380: */    lbz r0,0x2C(r31)
    /* 00000384: */    addi r3,r31,heapTableOffset
    /* 00000388: */    stb r30,0x108(r31)
    /* 0000038C: */    li r4,-0x0
    /* 00000390: */    rlwinm r0,r0,0,31,29
    /* 00000394: */    li r5,0x38
    /* 00000398: */    stw r30,0x18C(r31)
    /* 0000039C: */    stw r30,0x190(r31)
    /* 000003A0: */    stw r30,0x194(r31)
    /* 000003A4: */    stb r0,0x2C(r31)
    /* 000003A8: */    stw r30,0x40(r31)
    /* 000003AC: */    stw r30,0x44(r31)
    /* 000003B0: */    stw r30,0x48(r31)
    /* 000003B4: */    stw r30,0x4C(r31)
    /* 000003B8: */    stw r30,0x50(r31)
    /* 000003BC: */    stw r30,0x54(r31)
    /* 000003C0: */    stw r30,0x58(r31)
    /* 000003C4: */    stw r30,0x5C(r31)
    /* 000003C8: */    stw r30,0x60(r31)
    /* 000003CC: */    stw r30,0x64(r31)
    /* 000003D0: */    stw r30,0x68(r31)
    /* 000003D4: */    stw r30,0x6C(r31)
    /* 000003D8: */    stw r30,0x70(r31)
    /* 000003DC: */    stw r30,0x74(r31)
    /* 000003E0: */    stw r30,0x78(r31)
    /* 000003E4: */    stw r30,0x7C(r31)
    /* 000003E8: */    stw r30,0x80(r31)
    /* 000003EC: */    stw r30,0x84(r31)
    /* 000003F0: */    stw r30,0x88(r31)
    /* 000003F4: */    stw r30,0x8C(r31)
    /* 000003F8: */    stw r30,0x90(r31)
    /* 000003FC: */    stw r30,0x94(r31)
    /* 00000400: */    stw r30,0x98(r31)
    /* 00000404: */    stw r30,0x9C(r31)
    /* 00000408: */    stw r30,0xA0(r31)
    /* 0000040C: */    stw r30,0xA4(r31)
    /* 00000410: */    stw r30,0xA8(r31)
    /* 00000414: */    bl __unresolved                          [R_PPC_REL24(0, 1, "loc_8000443C")]
    /* 00000418: */    addi r3,r31,0x10C
    /* 0000041C: */    li r4,-0x0
    /* 00000420: */    li r5,0x80
    /* 00000424: */    bl __unresolved                          [R_PPC_REL24(0, 1, "loc_8000443C")]
    /* 00000428: */    mr r3,r31
    /* 0000042C: */    lwz r31,0xC(r1)
    /* 00000430: */    lwz r30,0x8(r1)
    /* 00000434: */    lwz r0,0x14(r1)
    /* 00000438: */    mtlr r0
    /* 0000043C: */    addi r1,r1,0x10
    /* 00000440: */    blr
muFileIOHandle____ct:
    /* 00000444: */    li r0,-0x0
    /* 00000448: */    stw r0,-0x0(r3)
    /* 0000044C: */    blr
muFileIOHandle____dt:
    /* 00000450: */    stwu r1,-0x10(r1)
    /* 00000454: */    mflr r0
    /* 00000458: */    cmpwi r3,-0x0
    /* 0000045C: */    stw r0,0x14(r1)
    /* 00000460: */    stw r31,0xC(r1)
    /* 00000464: */    mr r31,r4
    /* 00000468: */    stw r30,0x8(r1)
    /* 0000046C: */    mr r30,r3
    /* 00000470: */    beq- loc_48C
    /* 00000474: */    li r4,-0x0
    /* 00000478: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle____dt")]
    /* 0000047C: */    cmpwi r31,-0x0
    /* 00000480: */    ble- loc_48C
    /* 00000484: */    mr r3,r30
    /* 00000488: */    bl __unresolved                          [R_PPC_REL24(0, 4, "srcommon____dl")]
loc_48C:
    /* 0000048C: */    mr r3,r30
    /* 00000490: */    lwz r31,0xC(r1)
    /* 00000494: */    lwz r30,0x8(r1)
    /* 00000498: */    lwz r0,0x14(r1)
    /* 0000049C: */    mtlr r0
    /* 000004A0: */    addi r1,r1,0x10
    /* 000004A4: */    blr
muIntroTask____dt:
    /* 000004A8: */    stwu r1,-0x20(r1)
    /* 000004AC: */    mflr r0
    /* 000004B0: */    cmpwi r3,-0x0
    /* 000004B4: */    stw r0,0x24(r1)
    /* 000004B8: */    stw r31,0x1C(r1)
    /* 000004BC: */    stw r30,0x18(r1)
    /* 000004C0: */    stw r29,0x14(r1)
    /* 000004C4: */    mr r29,r4
    /* 000004C8: */    stw r28,0x10(r1)
    /* 000004CC: */    mr r28,r3
    /* 000004D0: */    beq- loc_5FC
    /* 000004D4: */    lis r4,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_1C0")]
    /* 000004D8: */    addi r4,r4,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_1C0")]
    /* 000004DC: */    stw r4,0x3C(r3)
    /* 000004E0: */    lwz r3,0xA8(r3)
    /* 000004E4: */    cmpwi r3,-0x0
    /* 000004E8: */    beq- loc_4F0
    /* 000004EC: */    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d6G3dObjFv__Destroy")]
loc_4F0:
    /* 000004F0: */    mr r31,r28
    /* 000004F4: */    li r30,-0x0
loc_4F8:
    /* 000004F8: */    lwz r3,0x60(r31)
    /* 000004FC: */    cmpwi r3,-0x0
    /* 00000500: */    beq- loc_518
    /* 00000504: */    lwz r12,0x5C(r3)
    /* 00000508: */    li r4,0x1
    /* 0000050C: */    lwz r12,0x8(r12)
    /* 00000510: */    mtctr r12
    /* 00000514: */    bctrl
loc_518:
    /* 00000518: */    addi r30,r30,0x1
    /* 0000051C: */    addi r31,r31,0x4
    /* 00000520: */    cmpwi r30,0x12
    /* 00000524: */    blt+ loc_4F8
    /* 00000528: */    lwz r3,0x40(r28)
    /* 0000052C: */    cmpwi r3,-0x0
    /* 00000530: */    beq- loc_538
    /* 00000534: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfHeapManager__free")]
loc_538:
    /* 00000538: */    lwz r3,0x44(r28)
    /* 0000053C: */    cmpwi r3,-0x0
    /* 00000540: */    beq- loc_548
    /* 00000544: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfHeapManager__free")]
loc_548:
    /* 00000548: */    mr r31,r28
    /* 0000054C: */    li r30,-0x0
loc_550:
    /* 00000550: */    lwz r3,0x48(r31)
    /* 00000554: */    cmpwi r3,-0x0
    /* 00000558: */    beq- loc_560
    /* 0000055C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfHeapManager__free")]
loc_560:
    /* 00000560: */    addi r30,r30,0x1
    /* 00000564: */    addi r31,r31,0x4
    /* 00000568: */    cmpwi r30,0x3
    /* 0000056C: */    blt+ loc_550
    /* 00000570: */    mr r31,r28
    /* 00000574: */    li r30,-0x0
loc_578:
    /* 00000578: */    lwz r3,0x54(r31)
    /* 0000057C: */    cmpwi r3,-0x0
    /* 00000580: */    beq- loc_588
    /* 00000584: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfHeapManager__free")]
loc_588:
    /* 00000588: */    addi r30,r30,0x1
    /* 0000058C: */    addi r31,r31,0x4
    /* 00000590: */    cmpwi r30,0x2
    /* 00000594: */    blt+ loc_578
    /* 00000598: */    lwz r3,0x5C(r28)
    /* 0000059C: */    cmpwi r3,-0x0
    /* 000005A0: */    beq- loc_5A8
    /* 000005A4: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfHeapManager__free")]
loc_5A8:
    /* 000005A8: */    addi r31,r28,0xE8
    /* 000005AC: */    li r30,-0x0
loc_5B0:
    /* 000005B0: */    mr r3,r31
    /* 000005B4: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__cancelRequest")]
    /* 000005B8: */    addi r30,r30,0x1
    /* 000005BC: */    addi r31,r31,0x4
    /* 000005C0: */    cmpwi r30,0x8
    /* 000005C4: */    blt+ loc_5B0
    /* 000005C8: */    lis r4,-0x0                              [R_PPC_ADDR16_HA(13, 1, "muFileIOHandle____dt")]
    /* 000005CC: */    addi r3,r28,0xE8
    /* 000005D0: */    addi r4,r4,-0x0                          [R_PPC_ADDR16_LO(13, 1, "muFileIOHandle____dt")]
    /* 000005D4: */    li r5,0x4
    /* 000005D8: */    li r6,0x8
    /* 000005DC: */    bl __unresolved                          [R_PPC_REL24(0, 4, "NMWException____destroy_arr")]
    /* 000005E0: */    mr r3,r28
    /* 000005E4: */    li r4,-0x0
    /* 000005E8: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfTask____dt")]
    /* 000005EC: */    cmpwi r29,-0x0
    /* 000005F0: */    ble- loc_5FC
    /* 000005F4: */    mr r3,r28
    /* 000005F8: */    bl __unresolved                          [R_PPC_REL24(0, 4, "srcommon____dl")]
loc_5FC:
    /* 000005FC: */    lwz r31,0x1C(r1)
    /* 00000600: */    mr r3,r28
    /* 00000604: */    lwz r30,0x18(r1)
    /* 00000608: */    lwz r29,0x14(r1)
    /* 0000060C: */    lwz r28,0x10(r1)
    /* 00000610: */    lwz r0,0x24(r1)
    /* 00000614: */    mtlr r0
    /* 00000618: */    addi r1,r1,0x20
    /* 0000061C: */    blr

muIntroTask__makeSoundScript:
    /* 00000620: */    stwu r1,-0x40(r1)
    /* 00000624: */    mflr r0
    /* 00000628: */    stw r0,0x44(r1)
    /* 0000062C: */    addi r11,r1,0x40
    /* 00000630: */    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___savegpr_21")]
    /* 00000634: */    lwz r4,heapMode(r3)
    /* 00000638: */    mr r23,r3
    /* 0000063C: */    li r0,-0x1
    /* 00000640: */    cmpwi r4,modeEnumBTT
    /* 00000644: */    blt- loc_64C
    /* 00000648: */    subi r0,r4,0x2
loc_64C:
    /* 0000064C: */    cmpwi r0,-0x0
    /* 00000650: */    bge- loc_854
    /* 00000654: */    lwz r5,0x18C(r3)
    /* 00000658: */    li r4,0x203E
    /* 0000065C: */    li r0,0x3C
    /* 00000660: */    rlwinm r5,r5,3,0,28
    /* 00000664: */    add r5,r3,r5
    /* 00000668: */    stw r4,0x10C(r5)
    /* 0000066C: */    stw r0,0x110(r5)
    /* 00000670: */    lwz r4,0x18C(r3)
    /* 00000674: */    lwz r5,heapMode(r3)
    /* 00000678: */    addi r0,r4,0x1
    /* 0000067C: */    cmpwi r5,modeEnumTeam
    /* 00000680: */    stw r0,0x18C(r3)
    /* 00000684: */    bne- loc_6B4
    /* 00000688: */    rlwinm r0,r0,3,0,28
    /* 0000068C: */    li r4,0x203C
    /* 00000690: */    add r5,r3,r0
    /* 00000694: */    li r24,0x1
    /* 00000698: */    stw r4,0x10C(r5)
    /* 0000069C: */    li r0,0x1E
    /* 000006A0: */    stw r0,0x110(r5)
    /* 000006A4: */    lwz r4,0x18C(r3)
    /* 000006A8: */    addi r0,r4,0x1
    /* 000006AC: */    stw r0,0x18C(r3)
    /* 000006B0: */    b loc_6C8
loc_6B4:
    /* 000006B4: */    cmpwi r5,0x2
    /* 000006B8: */    blt- loc_6C4
    /* 000006BC: */    li r24,-0x1
    /* 000006C0: */    b loc_6C8
loc_6C4:
    /* 000006C4: */    lwz r24,heapOpponentCount(r3)
loc_6C8:
    /* 000006C8: */    lis r31,-0x0                             [R_PPC_ADDR16_HA(13, 4, "loc_0")]
    /* 000006CC: */    mr r26,r23
    /* 000006D0: */    addi r31,r31,-0x0                        [R_PPC_ADDR16_LO(13, 4, "loc_0")]
    /* 000006D4: */    li r25,-0x0
    /* 000006D8: */    li r29,0x203D
    /* 000006DC: */    li r30,0x2B
    /* 000006E0: */    li r27,-0x1
    /* 000006E4: */    li r28,0xA
    /* 000006E8: */    lis r22,-0x0                             [R_PPC_ADDR16_HA(0, 11, "loc_805A00E0")]
    /* 000006EC: */    b loc_848
loc_6F0:
    /* 000006F0: */    cmpwi r25,-0x0
    /* 000006F4: */    ble- loc_748
    /* 000006F8: */    subi r0,r24,0x1
    /* 000006FC: */    cmpw r25,r0
    /* 00000700: */    bge- loc_728
    /* 00000704: */    lwz r0,0x18C(r23)
    /* 00000708: */    rlwinm r0,r0,3,0,28
    /* 0000070C: */    add r3,r23,r0
    /* 00000710: */    stw r27,0x10C(r3)
    /* 00000714: */    stw r28,0x110(r3)
    /* 00000718: */    lwz r3,0x18C(r23)
    /* 0000071C: */    addi r0,r3,0x1
    /* 00000720: */    stw r0,0x18C(r23)
    /* 00000724: */    b loc_748
loc_728:
    /* 00000728: */    lwz r0,0x18C(r23)
    /* 0000072C: */    rlwinm r0,r0,3,0,28
    /* 00000730: */    add r3,r23,r0
    /* 00000734: */    stw r29,0x10C(r3)
    /* 00000738: */    stw r30,0x110(r3)
    /* 0000073C: */    lwz r3,0x18C(r23)
    /* 00000740: */    addi r0,r3,0x1
    /* 00000744: */    stw r0,0x18C(r23)
loc_748:
    /* 00000748: */    cmpwi r25,-0x0
    /* 0000074C: */    bge- loc_778
    /* 00000750: */    lwz r0,heapMode(r23)
    /* 00000754: */    cmpwi r0,0x2
    /* 00000758: */    blt- loc_764
    /* 0000075C: */    li r0,-0x1
    /* 00000760: */    b loc_768
loc_764:
    /* 00000764: */    lwz r0,heapOpponentCount(r23)
loc_768:
    /* 00000768: */    cmpw r25,r0
    /* 0000076C: */    blt- loc_778
    /* 00000770: */    li r0,0x4
    /* 00000774: */    b loc_7A8
loc_778:
    /* 00000778: */    lwz r0,heapMode(r23)
    /* 0000077C: */    cmpwi r0,0x1
    /* 00000780: */    beq- loc_79C
    /* 00000784: */    bge- loc_7A4
    /* 00000788: */    cmpwi r0,-0x0
    /* 0000078C: */    bge- loc_794
    /* 00000790: */    b loc_7A4
loc_794:
    /* 00000794: */    lwz r0,heapEnemyOneType(r26)
    /* 00000798: */    b loc_7A8
loc_79C:
    /* 0000079C: */    li r0,-0x0
    /* 000007A0: */    b loc_7A8
loc_7A4:
    /* 000007A4: */    li r0,0x4
loc_7A8:
    /* 000007A8: */    rlwinm r0,r0,3,0,28
    /* 000007AC: */    lwzx r4,r31,r0
    /* 000007B0: */    add r3,r31,r0
    /* 000007B4: */    lwz r5,0x4(r3)
    /* 000007B8: */    addis r0,r4,0x1
    /* 000007BC: */    cmplwi r0,0xFFFF
    /* 000007C0: */    beq- loc_7E4
    /* 000007C4: */    lwz r0,0x18C(r23)
    /* 000007C8: */    rlwinm r0,r0,3,0,28
    /* 000007CC: */    add r3,r23,r0
    /* 000007D0: */    stw r4,0x10C(r3)
    /* 000007D4: */    stw r5,0x110(r3)
    /* 000007D8: */    lwz r3,0x18C(r23)
    /* 000007DC: */    addi r0,r3,0x1
    /* 000007E0: */    stw r0,0x18C(r23)
loc_7E4:
    /* 000007E4: */    lwz r3,heapEnemyOneChar(r26)
    /* 000007E8: */    bl __unresolved                          [R_PPC_REL24(0, 4, "muMenu__exchangeSelchkind2SelCharVoice")]
    /* 000007EC: */    addis r0,r3,0x1
    /* 000007F0: */    mr r21,r3
    /* 000007F4: */    cmplwi r0,0xFFFF
    /* 000007F8: */    beq- loc_840
    /* 000007FC: */    lwz r3,-0x0(r22)                         [R_PPC_ADDR16_LO(0, 11, "loc_805A00E0")]
    /* 00000800: */    bl __unresolved                          [R_PPC_REL24(0, 4, "loc_8004D9DC")]
    /* 00000804: */    cmpwi r3,-0x0
    /* 00000808: */    bne- loc_818
    /* 0000080C: */    lwz r3,heapEnemyOneChar(r26)
    /* 00000810: */    bl __unresolved                          [R_PPC_REL24(0, 4, "loc_800AF8A0")]
    /* 00000814: */    b loc_820
loc_818:
    /* 00000818: */    lwz r3,heapEnemyOneChar(r26)
    /* 0000081C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "loc_800AF8B8")]
loc_820:
    /* 00000820: */    lwz r0,0x18C(r23)
    /* 00000824: */    rlwinm r0,r0,3,0,28
    /* 00000828: */    add r4,r23,r0
    /* 0000082C: */    stw r21,0x10C(r4)
    /* 00000830: */    stw r3,0x110(r4)
    /* 00000834: */    lwz r3,0x18C(r23)
    /* 00000838: */    addi r0,r3,0x1
    /* 0000083C: */    stw r0,0x18C(r23)
loc_840:
    /* 00000840: */    addi r26,r26,0x8
    /* 00000844: */    addi r25,r25,0x1
loc_848:
    /* 00000848: */    cmpw r25,r24
    /* 0000084C: */    blt+ loc_6F0
    /* 00000850: */    b loc_87C
loc_854:
    /* 00000854: */    lwz r5,0x18C(r3)
    /* 00000858: */    li r4,0x2035
    /* 0000085C: */    li r0,0x5A
    /* 00000860: */    rlwinm r5,r5,3,0,28
    /* 00000864: */    add r5,r3,r5
    /* 00000868: */    stw r4,0x10C(r5)
    /* 0000086C: */    stw r0,0x110(r5)
    /* 00000870: */    lwz r4,0x18C(r3)
    /* 00000874: */    addi r0,r4,0x1
    /* 00000878: */    stw r0,0x18C(r3)
loc_87C:
    /* 0000087C: */    addi r11,r1,0x40
    /* 00000880: */    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___restgpr_21")]
    /* 00000884: */    lwz r0,0x44(r1)
    /* 00000888: */    mtlr r0
    /* 0000088C: */    addi r1,r1,0x40
    /* 00000890: */    blr
loc_894:
    /* 00000894: */    stwu r1,-0x10(r1)
    /* 00000898: */    mflr r0
    /* 0000089C: */    stw r0,0x14(r1)
    /* 000008A0: */    stw r31,0xC(r1)
    /* 000008A4: */    mr r31,r3
    /* 000008A8: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    /* 000008AC: */    lis r5,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_188")]
    /* 000008B0: */    lis r6,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_1B8")]
    /* 000008B4: */    lwz r3,0x4(r3)
    /* 000008B8: */    addi r5,r5,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_188")]
    /* 000008BC: */    addi r6,r6,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_1B8")]
    /* 000008C0: */    li r4,0x4
    /* 000008C4: */    li r7,-0x0
    /* 000008C8: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    
    /* 000008CC: */    lwz r0,sceneStageNum(r3)
    /* 000008D0: */    stw r0,heapStageNum(r31)

    /* 000008D4: */    lwz r0,sceneMode(r3)
    /* 000008D8: */    stw r0,heapMode(r31)

    /* 000008DC: */    lwz r0,sceneOpponentCount(r3)
    /* 000008E0: */    stw r0,heapOpponentCount(r31)

    /* 000008E4: */    lwz r0,sceneAllyCount(r3)
    /* 000008E8: */    stw r0,heapAllyCount(r31)

    /* 000008EC: */    lwz r0,sceneEnemyOneChar(r3)
    /* 000008F0: */    stw r0,heapEnemyOneChar(r31)

    /* 000008F4: */    lwz r0,sceneEnemyOneType(r3)
    /* 000008F8: */    stw r0,heapEnemyOneType(r31)

    /* 000008FC: */    lwz r0,sceneEnemyTwoChar(r3)
    /* 00000900: */    stw r0,heapEnemyTwoChar(r31)

    /* 00000904: */    lwz r0,sceneEnemyTwoType(r3)
    /* 00000908: */    stw r0,heapEnemyTwoType(r31)

    /* 0000090C: */    lwz r0,sceneEnemyThreeChar(r3)
    /* 00000910: */    stw r0,heapEnemyThreeChar(r31)

    /* 00000914: */    lwz r0,sceneEnemeyThreeType(r3)
    /* 00000918: */    stw r0,heapEnemeyThreeType(r31)

    /* 0000091C: */    lwz r0,sceneAllyOneChar(r3)
    /* 00000920: */    stw r0,sceneAllyOneChar(r31)

    /* 00000924: */    lwz r0,sceneAllyOneType(r3)
    /* 00000928: */    stw r0,sceneAllyOneType(r31)

    /* 0000092C: */    lwz r0,sceneAllyTwoChar(r3)
    /* 00000930: */    stw r0,sceneAllyTwoChar(r31)
    
    /* 00000934: */    lwz r0,sceneAllyTwoType(r3)
    /* 00000938: */    stw r0,sceneAllyTwoType(r31)
    
    /* 0000093C: */    lwz r31,0xC(r1)
    /* 00000940: */    lwz r0,0x14(r1)
    /* 00000944: */    mtlr r0
    /* 00000948: */    addi r1,r1,0x10
    /* 0000094C: */    blr
loc_950:
    /* 00000950: */    stwu r1,-0xA0(r1)
    /* 00000954: */    mflr r0
    /* 00000958: */    lis r4,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_44")]
    /* 0000095C: */    li r5,0x2B
    /* 00000960: */    stw r0,0xA4(r1)
    /* 00000964: */    addi r4,r4,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_44")]
    /* 00000968: */    li r6,-0x0
    /* 0000096C: */    li r7,-0x0
    /* 00000970: */    stw r31,0x9C(r1)
    /* 00000974: */    mr r31,r3
    /* 00000978: */    addi r3,r3,0xEC
    /* 0000097C: */    stw r30,0x98(r1)
    /* 00000980: */    stw r29,0x94(r1)
    /* 00000984: */    stw r28,0x90(r1)
    /* 00000988: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__readRequest")]
    /* 0000098C: */    lwz r0,heapMode(r31)
    /* 00000990: */    cmpwi r0,0x1
    /* 00000994: */    bne- loc_9F4 
    /* 00000998: */    beq- loc_9B4
    /* 0000099C: */    bge- loc_9BC
    /* 000009A0: */    cmpwi r0,-0x0
    /* 000009A4: */    bge- loc_9AC
    /* 000009A8: */    b loc_9BC
loc_9AC:
    /* 000009AC: */    lwz r8,heapEnemyOneType(r31)
    /* 000009B0: */    b loc_9C0
loc_9B4:
    /* 000009B4: */    li r8,-0x0
    /* 000009B8: */    b loc_9C0
loc_9BC:
    /* 000009BC: */    li r8,0x4
loc_9C0:
    /* 000009C0: */    lwz r7,heapEnemyOneChar(r31)
    /* 000009C4: */    mr r3,r31
    /* 000009C8: */    addi r4,r1,0x48
    /* 000009CC: */    addi r5,r1,0x28
    /* 000009D0: */    addi r6,r1,0x8
    /* 000009D4: */    bl loc_134C
    /* 000009D8: */    addi r3,r31,0xF0
    /* 000009DC: */    addi r4,r1,0x48
    /* 000009E0: */    li r5,0x2A
    /* 000009E4: */    li r6,-0x0
    /* 000009E8: */    li r7,-0x0
    /* 000009EC: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__readRequest")]
    /* 000009F0: */    b loc_AC0
loc_9F4:
    /* 000009F4: */    cmpwi r0,0x2
    /* 000009F8: */    blt- loc_A04
    /* 000009FC: */    li r30,-0x1
    /* 00000A00: */    b loc_A08
loc_A04:
    /* 00000A04: */    lwz r30,heapOpponentCount(r31)
loc_A08:
    /* 00000A08: */    mr r29,r31
    /* 00000A0C: */    li r28,-0x0
    /* 00000A10: */    b loc_AB8
loc_A14:
    /* 00000A14: */    cmpwi r28,-0x0
    /* 00000A18: */    bge- loc_A44
    /* 00000A1C: */    lwz r0,heapMode(r31)
    /* 00000A20: */    cmpwi r0,modeEnumBTT
    /* 00000A24: */    blt- loc_A30
    /* 00000A28: */    li r0,-0x1
    /* 00000A2C: */    b loc_A34
loc_A30:
    /* 00000A30: */    lwz r0,heapOpponentCount(r31)
loc_A34:
    /* 00000A34: */    cmpw r28,r0
    /* 00000A38: */    blt- loc_A44
    /* 00000A3C: */    li r8,0x4
    /* 00000A40: */    b loc_A74
loc_A44:
    /* 00000A44: */    lwz r0,heapMode(r31)
    /* 00000A48: */    cmpwi r0,0x1
    /* 00000A4C: */    beq- loc_A68
    /* 00000A50: */    bge- loc_A70
    /* 00000A54: */    cmpwi r0,-0x0
    /* 00000A58: */    bge- loc_A60
    /* 00000A5C: */    b loc_A70
loc_A60:
    /* 00000A60: */    lwz r8,heapEnemyOneType(r29)
    /* 00000A64: */    b loc_A74
loc_A68:
    /* 00000A68: */    li r8,-0x0
    /* 00000A6C: */    b loc_A74
loc_A70:
    /* 00000A70: */    li r8,0x4
loc_A74:
    /* 00000A74: */    lwz r7,heapEnemyOneChar(r29)
    /* 00000A78: */    mr r3,r31
    /* 00000A7C: */    addi r4,r1,0x48
    /* 00000A80: */    addi r5,r1,0x28
    /* 00000A84: */    addi r6,r1,0x8
    /* 00000A88: */    bl loc_134C
    /* 00000A8C: */    addi r0,r28,0x2
    /* 00000A90: */    addi r4,r1,0x48
    /* 00000A94: */    rlwinm r0,r0,2,0,29
    /* 00000A98: */    li r5,0x2A
    /* 00000A9C: */    add r3,r31,r0
    /* 00000AA0: */    li r6,-0x0
    /* 00000AA4: */    addi r3,r3,0xE8
    /* 00000AA8: */    li r7,-0x0
    /* 00000AAC: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__readRequest")]
    /* 00000AB0: */    addi r29,r29,0x8
    /* 00000AB4: */    addi r28,r28,0x1
loc_AB8:
    /* 00000AB8: */    cmpw r28,r30
    /* 00000ABC: */    blt+ loc_A14
loc_AC0:
    /* 00000AC0: */    lwz r0,heapMode(r31)
    /* 00000AC4: */    cmpwi r0,modeEnumBTT
    /* 00000AC8: */    blt- loc_AD4
    /* 00000ACC: */    li r30,-0x1
    /* 00000AD0: */    b loc_AD8
loc_AD4:
    /* 00000AD4: */    lwz r30,heapAllyCount(r31)
loc_AD8:
    /* 00000AD8: */    mr r29,r31
    /* 00000ADC: */    li r28,-0x0
    /* 00000AE0: */    b loc_B7C
loc_AE4:
    /* 00000AE4: */    cmpwi r28,-0x0
    /* 00000AE8: */    bge- loc_B14
    /* 00000AEC: */    lwz r0,heapMode(r31)
    /* 00000AF0: */    cmpwi r0,modeEnumBTT
    /* 00000AF4: */    blt- loc_B00
    /* 00000AF8: */    li r0,-0x1
    /* 00000AFC: */    b loc_B04
loc_B00:
    /* 00000B00: */    lwz r0,heapAllyCount(r31)
loc_B04:
    /* 00000B04: */    cmpw r28,r0
    /* 00000B08: */    blt- loc_B14
    /* 00000B0C: */    li r8,0x4
    /* 00000B10: */    b loc_B38
loc_B14:
    /* 00000B14: */    lwz r0,heapMode(r31)
    /* 00000B18: */    cmpwi r0,modeEnumBTT
    /* 00000B1C: */    bge- loc_B34
    /* 00000B20: */    cmpwi r0,modeEnumStandard
    /* 00000B24: */    bge- loc_B2C
    /* 00000B28: */    b loc_B34
loc_B2C:
    /* 00000B2C: */    lwz r8,heapAllyOneType(r29)
    /* 00000B30: */    b loc_B38
loc_B34:
    /* 00000B34: */    li r8,0x4
loc_B38:
    /* 00000B38: */    lwz r7,heapAllyOneChar(r29)
    /* 00000B3C: */    mr r3,r31
    /* 00000B40: */    addi r4,r1,0x48
    /* 00000B44: */    addi r5,r1,0x28
    /* 00000B48: */    addi r6,r1,0x8
    /* 00000B4C: */    bl loc_134C
    /* 00000B50: */    addi r0,r28,0x6
    /* 00000B54: */    addi r4,r1,0x48
    /* 00000B58: */    rlwinm r0,r0,2,0,29
    /* 00000B5C: */    li r5,0x2A
    /* 00000B60: */    add r3,r31,r0
    /* 00000B64: */    li r6,-0x0
    /* 00000B68: */    addi r3,r3,0xE8
    /* 00000B6C: */    li r7,-0x0
    /* 00000B70: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__readRequest")]
    /* 00000B74: */    addi r29,r29,0x8
    /* 00000B78: */    addi r28,r28,0x1
loc_B7C:
    /* 00000B7C: */    cmpw r28,r30
    /* 00000B80: */    blt+ loc_AE4
    /* 00000B84: */    lwz r0,0xA4(r1)
    /* 00000B88: */    lwz r31,0x9C(r1)
    /* 00000B8C: */    lwz r30,0x98(r1)
    /* 00000B90: */    lwz r29,0x94(r1)
    /* 00000B94: */    lwz r28,0x90(r1)
    /* 00000B98: */    mtlr r0
    /* 00000B9C: */    addi r1,r1,0xA0
    /* 00000BA0: */    blr
muIntroTask__isLoadFinished:
    /* 00000BA4: */    stwu r1,-0x10(r1)
    /* 00000BA8: */    mflr r0
    /* 00000BAC: */    stw r0,0x14(r1)
    /* 00000BB0: */    stw r31,0xC(r1)
    /* 00000BB4: */    addi r31,r3,0xE8
    /* 00000BB8: */    stw r30,0x8(r1)
    /* 00000BBC: */    li r30,-0x0
loc_BC0:
    /* 00000BC0: */    mr r3,r31
    /* 00000BC4: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__isReady")]
    /* 00000BC8: */    cmpwi r3,-0x0
    /* 00000BCC: */    bne- loc_BD8
    /* 00000BD0: */    li r3,-0x0
    /* 00000BD4: */    b loc_BEC
loc_BD8:
    /* 00000BD8: */    addi r30,r30,0x1
    /* 00000BDC: */    addi r31,r31,0x4
    /* 00000BE0: */    cmpwi r30,0x8
    /* 00000BE4: */    blt+ loc_BC0
    /* 00000BE8: */    bl __unresolved                          [R_PPC_REL24(0, 4, "muMenu__isLoadFinishMenuSound")]
loc_BEC:
    /* 00000BEC: */    lwz r0,0x14(r1)
    /* 00000BF0: */    lwz r31,0xC(r1)
    /* 00000BF4: */    lwz r30,0x8(r1)
    /* 00000BF8: */    mtlr r0
    /* 00000BFC: */    addi r1,r1,0x10
    /* 00000C00: */    blr
muIntroTask__createCharModel:
    /* 00000C04: */    stwu r1,-0xD0(r1)
    /* 00000C08: */    mflr r0
    /* 00000C0C: */    stw r0,0xD4(r1)
    /* 00000C10: */    addi r11,r1,0xD0
    /* 00000C14: */    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___savegpr_21")]
    /* 00000C18: */    li r0,-0x0
    /* 00000C1C: */    lis r30,-0x0                             [R_PPC_ADDR16_HA(13, 4, "loc_0")]
    /* 00000C20: */    stw r0,0x14(r1)
    /* 00000C24: */    mr r23,r3
    /* 00000C28: */    addi r30,r30,-0x0                        [R_PPC_ADDR16_LO(13, 4, "loc_0")]
    /* 00000C2C: */    addi r3,r3,0xEC
    /* 00000C30: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getReturnStatus")]
    /* 00000C34: */    cmpwi r3,0x15
    /* 00000C38: */    bne- loc_C44
    /* 00000C3C: */    li r24,-0x0
    /* 00000C40: */    b loc_C58
loc_C44:
    /* 00000C44: */    addi r3,r23,0xEC
    /* 00000C48: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getBuffer")]
    /* 00000C4C: */    mr r24,r3
    /* 00000C50: */    addi r3,r23,0xEC
    /* 00000C54: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__release")]
loc_C58:
    /* 00000C58: */    cmpwi r24,-0x0
    /* 00000C5C: */    beq- loc_C6C
    /* 00000C60: */    stw r24,0x14(r1)
    /* 00000C64: */    addi r3,r1,0x14
    /* 00000C68: */    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d7ResFileFv__Init")]
loc_C6C:
    /* 00000C6C: */    lwz r0,0x14(r1)
    /* 00000C70: */    mr r3,r23
    /* 00000C74: */    addi r4,r30,0x28
    /* 00000C78: */    addi r6,r23,0x44
    /* 00000C7C: */    stw r0,0x44(r23)
    /* 00000C80: */    li r5,0x4
    /* 00000C84: */    bl muIntroTask__getEnemyResFileName
    /* 00000C88: */    li r3,0x2A
    /* 00000C8C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfHeapManager__getMEMAllocator")]
    /* 00000C90: */    lwz r6,0x68(r23)
    /* 00000C94: */    li r4,-0x0
    /* 00000C98: */    li r5,0xD
    /* 00000C9C: */    lwz r6,0x10(r6)
    /* 00000CA0: */    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d12ScnMdlExpandFP12MEMAlloc__Construct")]
    /* 00000CA4: */    lwz r0,heapMode(r23)
    /* 00000CA8: */    stw r3,0xA8(r23)
    /* 00000CAC: */    cmpwi r0,0x1
    /* 00000CB0: */    bne- loc_E88
    /* 00000CB4: */    li r24,0xB
    /* 00000CB8: */    beq- loc_CD4
    /* 00000CBC: */    bge- loc_CDC
    /* 00000CC0: */    cmpwi r0,-0x0
    /* 00000CC4: */    bge- loc_CCC
    /* 00000CC8: */    b loc_CDC
loc_CCC:
    /* 00000CCC: */    lwz r8,heapEnemyOneType(r23)
    /* 00000CD0: */    b loc_CE0
loc_CD4:
    /* 00000CD4: */    li r8,-0x0
    /* 00000CD8: */    b loc_CE0
loc_CDC:
    /* 00000CDC: */    li r8,0x4
loc_CE0:
    /* 00000CE0: */    lwz r7,heapEnemyOneChar(r23)
    /* 00000CE4: */    mr r3,r23
    /* 00000CE8: */    addi r4,r1,0x60
    /* 00000CEC: */    addi r5,r1,0x40
    /* 00000CF0: */    addi r6,r1,0x20
    /* 00000CF4: */    bl loc_134C
    /* 00000CF8: */    li r0,-0x0
    /* 00000CFC: */    addi r3,r23,0xF0
    /* 00000D00: */    stw r0,0x10(r1)
    /* 00000D04: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getReturnStatus")]
    /* 00000D08: */    cmpwi r3,0x15
    /* 00000D0C: */    bne- loc_D18
    /* 00000D10: */    li r25,-0x0
    /* 00000D14: */    b loc_D2C
loc_D18:
    /* 00000D18: */    addi r3,r23,0xF0
    /* 00000D1C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getBuffer")]
    /* 00000D20: */    mr r25,r3
    /* 00000D24: */    addi r3,r23,0xF0
    /* 00000D28: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__release")]
loc_D2C:
    /* 00000D2C: */    cmpwi r25,-0x0
    /* 00000D30: */    beq- loc_D40
    /* 00000D34: */    stw r25,0x10(r1)
    /* 00000D38: */    addi r3,r1,0x10
    /* 00000D3C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d7ResFileFv__Init")]
loc_D40:
    /* 00000D40: */    lwz r0,0x10(r1)
    /* 00000D44: */    mr r22,r23
    /* 00000D48: */    li r21,-0x0
    /* 00000D4C: */    stw r0,0x48(r23)
loc_D50:
    /* 00000D50: */    addi r3,r23,0x48
    /* 00000D54: */    subfic r4,r21,0x1C
    /* 00000D58: */    li r5,-0x0
    /* 00000D5C: */    li r6,-0x0
    /* 00000D60: */    li r7,0x2A
    /* 00000D64: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__create1")]
    /* 00000D68: */    mr r25,r3
    /* 00000D6C: */    addi r4,r1,0x40
    /* 00000D70: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeNodeAnimN")]
    /* 00000D74: */    lwz r3,0x14(r25)
    /* 00000D78: */    lfs f1,0x48(r30)
    /* 00000D7C: */    lwz r3,0xC(r3)
    /* 00000D80: */    lwz r12,-0x0(r3)
    /* 00000D84: */    lwz r12,0x28(r12)
    /* 00000D88: */    mtctr r12
    /* 00000D8C: */    bctrl
    /* 00000D90: */    mr r3,r25
    /* 00000D94: */    addi r4,r1,0x40
    /* 00000D98: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeClrAnimN")]
    /* 00000D9C: */    lwz r3,0x14(r25)
    /* 00000DA0: */    cmpwi r21,-0x0
    /* 00000DA4: */    lwz r3,0x18(r3)
    /* 00000DA8: */    bne- loc_DB4
    /* 00000DAC: */    lfs f1,0x48(r30)
    /* 00000DB0: */    b loc_DB8
loc_DB4:
    /* 00000DB4: */    lfs f1,0x4C(r30)
loc_DB8:
    /* 00000DB8: */    lwz r12,-0x0(r3)
    /* 00000DBC: */    lwz r12,0x28(r12)
    /* 00000DC0: */    mtctr r12
    /* 00000DC4: */    bctrl
    /* 00000DC8: */    mr r3,r25
    /* 00000DCC: */    addi r4,r1,0x20
    /* 00000DD0: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeVisAnimN")]
    /* 00000DD4: */    lwz r0,heapMode(r23)
    /* 00000DD8: */    cmpwi r0,0x1
    /* 00000DDC: */    bne- loc_DE8
    /* 00000DE0: */    lfs f1,0x50(r30)
    /* 00000DE4: */    b loc_E4C
loc_DE8:
    /* 00000DE8: */    cmpwi r0,0x2
    /* 00000DEC: */    blt- loc_DF8
    /* 00000DF0: */    li r0,-0x1
    /* 00000DF4: */    b loc_DFC
loc_DF8:
    /* 00000DF8: */    lwz r0,heapOpponentCount(r23)
loc_DFC:
    /* 00000DFC: */    cmpwi r0,0x2
    /* 00000E00: */    beq- loc_E28
    /* 00000E04: */    bge- loc_E14
    /* 00000E08: */    cmpwi r0,0x1
    /* 00000E0C: */    bge- loc_E20
    /* 00000E10: */    b loc_E48
loc_E14:
    /* 00000E14: */    cmpwi r0,0x4
    /* 00000E18: */    bge- loc_E48
    /* 00000E1C: */    b loc_E40
loc_E20:
    /* 00000E20: */    lfs f1,0x4C(r30)
    /* 00000E24: */    b loc_E4C
loc_E28:
    /* 00000E28: */    cmpwi r21,-0x0
    /* 00000E2C: */    bne- loc_E38
    /* 00000E30: */    lfs f1,0x48(r30)
    /* 00000E34: */    b loc_E4C
loc_E38:
    /* 00000E38: */    lfs f1,0x54(r30)
    /* 00000E3C: */    b loc_E4C
loc_E40:
    /* 00000E40: */    lfs f1,0x58(r30)
    /* 00000E44: */    b loc_E4C
loc_E48:
    /* 00000E48: */    lfs f1,0x50(r30)
loc_E4C:
    /* 00000E4C: */    mr r3,r25
    /* 00000E50: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__setFrameVisible")]
    /* 00000E54: */    lwz r3,0x14(r25)
    /* 00000E58: */    lfs f1,0x4C(r30)
    /* 00000E5C: */    lwz r3,0x8(r3)
    /* 00000E60: */    lwz r12,-0x0(r3)
    /* 00000E64: */    lwz r12,0x28(r12)
    /* 00000E68: */    mtctr r12
    /* 00000E6C: */    bctrl
    /* 00000E70: */    addi r21,r21,0x1
    /* 00000E74: */    stw r25,0x70(r22)
    /* 00000E78: */    cmpwi r21,0xB
    /* 00000E7C: */    addi r22,r22,0x4
    /* 00000E80: */    blt+ loc_D50
    /* 00000E84: */    b loc_10B4
loc_E88:
    /* 00000E88: */    cmpwi r0,0x2
    /* 00000E8C: */    blt- loc_E98
    /* 00000E90: */    li r24,-0x1
    /* 00000E94: */    b loc_E9C
loc_E98:
    /* 00000E98: */    lwz r24,heapOpponentCount(r23)
loc_E9C:
    /* 00000E9C: */    mr r26,r23
    /* 00000EA0: */    mr r27,r23
    /* 00000EA4: */    addi r28,r23,0x48
    /* 00000EA8: */    li r25,-0x0
    /* 00000EAC: */    li r31,-0x0
    /* 00000EB0: */    b loc_10AC
loc_EB4:
    /* 00000EB4: */    addi r0,r25,0x2
    /* 00000EB8: */    stw r31,0xC(r1)
    /* 00000EBC: */    rlwinm r0,r0,2,0,29
    /* 00000EC0: */    add r3,r23,r0
    /* 00000EC4: */    addi r22,r3,0xE8
    /* 00000EC8: */    mr r3,r22
    /* 00000ECC: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getReturnStatus")]
    /* 00000ED0: */    cmpwi r3,0x15
    /* 00000ED4: */    bne- loc_EE0
    /* 00000ED8: */    li r29,-0x0
    /* 00000EDC: */    b loc_EF4
loc_EE0:
    /* 00000EE0: */    mr r3,r22
    /* 00000EE4: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getBuffer")]
    /* 00000EE8: */    mr r29,r3
    /* 00000EEC: */    mr r3,r22
    /* 00000EF0: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__release")]
loc_EF4:
    /* 00000EF4: */    cmpwi r29,-0x0
    /* 00000EF8: */    beq- loc_F08
    /* 00000EFC: */    stw r29,0xC(r1)
    /* 00000F00: */    addi r3,r1,0xC
    /* 00000F04: */    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d7ResFileFv__Init")]
loc_F08:
    /* 00000F08: */    lwz r0,0xC(r1)
    /* 00000F0C: */    cmpwi r25,-0x0
    /* 00000F10: */    stw r0,0x48(r26)
    /* 00000F14: */    bge- loc_F40
    /* 00000F18: */    lwz r0,heapMode(r23)
    /* 00000F1C: */    cmpwi r0,modeEnumBTT
    /* 00000F20: */    blt- loc_F2C
    /* 00000F24: */    li r0,-0x1
    /* 00000F28: */    b loc_F30
loc_F2C:
    /* 00000F2C: */    lwz r0,heapOpponentCount(r23)
loc_F30:
    /* 00000F30: */    cmpw r25,r0
    /* 00000F34: */    blt- loc_F40
    /* 00000F38: */    li r8,0x4
    /* 00000F3C: */    b loc_F70
loc_F40:
    /* 00000F40: */    lwz r0,heapMode(r23)
    /* 00000F44: */    cmpwi r0,0x1
    /* 00000F48: */    beq- loc_F64
    /* 00000F4C: */    bge- loc_F6C
    /* 00000F50: */    cmpwi r0,-0x0
    /* 00000F54: */    bge- loc_F5C
    /* 00000F58: */    b loc_F6C
loc_F5C:
    /* 00000F5C: */    lwz r8,heapEnemyOneType(r27)
    /* 00000F60: */    b loc_F70
loc_F64:
    /* 00000F64: */    li r8,-0x0
    /* 00000F68: */    b loc_F70
loc_F6C:
    /* 00000F6C: */    li r8,0x4
loc_F70:
    /* 00000F70: */    lwz r7,heapEnemyOneChar(r27)
    /* 00000F74: */    mr r3,r23
    /* 00000F78: */    addi r4,r1,0x60
    /* 00000F7C: */    addi r5,r1,0x40
    /* 00000F80: */    addi r6,r1,0x20
    /* 00000F84: */    bl loc_134C
    /* 00000F88: */    mr r3,r28
    /* 00000F8C: */    subfic r4,r25,0x1C
    /* 00000F90: */    li r5,-0x0
    /* 00000F94: */    li r6,-0x0
    /* 00000F98: */    li r7,0x2A
    /* 00000F9C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__create1")]
    /* 00000FA0: */    mr r21,r3
    /* 00000FA4: */    addi r4,r1,0x40
    /* 00000FA8: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeNodeAnimN")]
    /* 00000FAC: */    lwz r3,0x14(r21)
    /* 00000FB0: */    lfs f1,0x48(r30)
    /* 00000FB4: */    lwz r3,0xC(r3)
    /* 00000FB8: */    lwz r12,-0x0(r3)
    /* 00000FBC: */    lwz r12,0x28(r12)
    /* 00000FC0: */    mtctr r12
    /* 00000FC4: */    bctrl
    /* 00000FC8: */    mr r3,r21
    /* 00000FCC: */    addi r4,r1,0x40
    /* 00000FD0: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeClrAnimN")]
    /* 00000FD4: */    lwz r3,0x14(r21)
    /* 00000FD8: */    lfs f1,0x48(r30)
    /* 00000FDC: */    lwz r3,0x18(r3)
    /* 00000FE0: */    lwz r12,-0x0(r3)
    /* 00000FE4: */    lwz r12,0x28(r12)
    /* 00000FE8: */    mtctr r12
    /* 00000FEC: */    bctrl
    /* 00000FF0: */    mr r3,r21
    /* 00000FF4: */    addi r4,r1,0x20
    /* 00000FF8: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeVisAnimN")]
    /* 00000FFC: */    lwz r0,heapMode(r23)
    /* 00001000: */    cmpwi r0,modeEnumTeam
    /* 00001004: */    bne- loc_1010
    /* 00001008: */    lfs f1,0x50(r30)
    /* 0000100C: */    b loc_1074
loc_1010:
    /* 00001010: */    cmpwi r0,modeEnumBTT
    /* 00001014: */    blt- loc_1020
    /* 00001018: */    li r0,-0x1
    /* 0000101C: */    b loc_1024
loc_1020:
    /* 00001020: */    lwz r0,heapOpponentCount(r23)
loc_1024:
    /* 00001024: */    cmpwi r0,0x2
    /* 00001028: */    beq- loc_1050
    /* 0000102C: */    bge- loc_103C
    /* 00001030: */    cmpwi r0,0x1
    /* 00001034: */    bge- loc_1048
    /* 00001038: */    b loc_1070
loc_103C:
    /* 0000103C: */    cmpwi r0,0x4
    /* 00001040: */    bge- loc_1070
    /* 00001044: */    b loc_1068
loc_1048:
    /* 00001048: */    lfs f1,0x4C(r30)
    /* 0000104C: */    b loc_1074
loc_1050:
    /* 00001050: */    cmpwi r25,-0x0
    /* 00001054: */    bne- loc_1060
    /* 00001058: */    lfs f1,0x48(r30)
    /* 0000105C: */    b loc_1074
loc_1060:
    /* 00001060: */    lfs f1,0x54(r30)
    /* 00001064: */    b loc_1074
loc_1068:
    /* 00001068: */    lfs f1,0x58(r30)
    /* 0000106C: */    b loc_1074
loc_1070:
    /* 00001070: */    lfs f1,0x50(r30)
loc_1074:
    /* 00001074: */    mr r3,r21
    /* 00001078: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__setFrameVisible")]
    /* 0000107C: */    lwz r3,0x14(r21)
    /* 00001080: */    lfs f1,0x4C(r30)
    /* 00001084: */    lwz r3,0x8(r3)
    /* 00001088: */    lwz r12,-0x0(r3)
    /* 0000108C: */    lwz r12,0x28(r12)
    /* 00001090: */    mtctr r12
    /* 00001094: */    bctrl
    /* 00001098: */    stw r21,0x70(r26)
    /* 0000109C: */    addi r26,r26,0x4
    /* 000010A0: */    addi r27,r27,0x8
    /* 000010A4: */    addi r28,r28,0x4
    /* 000010A8: */    addi r25,r25,0x1
loc_10AC:
    /* 000010AC: */    cmpw r25,r24
    /* 000010B0: */    blt+ loc_EB4
loc_10B4:
    /* 000010B4: */    lwz r0,heapMode(r23)
    /* 000010B8: */    cmpwi r0,modeEnumBTT
    /* 000010BC: */    blt- loc_10C8
    /* 000010C0: */    li r29,-0x1
    /* 000010C4: */    b loc_10CC
loc_10C8:
    /* 000010C8: */    lwz r29,heapAllyCount(r23)
loc_10CC:
    /* 000010CC: */    mr r28,r23
    /* 000010D0: */    mr r27,r23
    /* 000010D4: */    addi r26,r23,0x54
    /* 000010D8: */    li r25,-0x0
    /* 000010DC: */    li r31,-0x0
    /* 000010E0: */    b loc_125C
loc_10E4:
    /* 000010E4: */    addi r0,r25,0x6
    /* 000010E8: */    stw r31,0x8(r1)
    /* 000010EC: */    rlwinm r0,r0,2,0,29
    /* 000010F0: */    add r3,r23,r0
    /* 000010F4: */    addi r21,r3,0xE8
    /* 000010F8: */    mr r3,r21
    /* 000010FC: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getReturnStatus")]
    /* 00001100: */    cmpwi r3,0x15
    /* 00001104: */    bne- loc_1110
    /* 00001108: */    li r22,-0x0
    /* 0000110C: */    b loc_1124
loc_1110:
    /* 00001110: */    mr r3,r21
    /* 00001114: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getBuffer")]
    /* 00001118: */    mr r22,r3
    /* 0000111C: */    mr r3,r21
    /* 00001120: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__release")]
loc_1124:
    /* 00001124: */    cmpwi r22,-0x0
    /* 00001128: */    beq- loc_1138
    /* 0000112C: */    stw r22,0x8(r1)
    /* 00001130: */    addi r3,r1,0x8
    /* 00001134: */    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d7ResFileFv__Init")]
loc_1138:
    /* 00001138: */    lwz r0,0x8(r1)
    /* 0000113C: */    cmpwi r25,-0x0
    /* 00001140: */    stw r0,0x54(r28)
    /* 00001144: */    bge- loc_1170
    /* 00001148: */    lwz r0,heapMode(r23)
    /* 0000114C: */    cmpwi r0,modeEnumBTT
    /* 00001150: */    blt- loc_115C
    /* 00001154: */    li r0,-0x1
    /* 00001158: */    b loc_1160
loc_115C:
    /* 0000115C: */    lwz r0,heapAllyCount(r23)
loc_1160:
    /* 00001160: */    cmpw r25,r0
    /* 00001164: */    blt- loc_1170
    /* 00001168: */    li r8,0x4
    /* 0000116C: */    b loc_1194
loc_1170:
    /* 00001170: */    lwz r0,heapMode(r23)
    /* 00001174: */    cmpwi r0,modeEnumBTT
    /* 00001178: */    bge- loc_1190
    /* 0000117C: */    cmpwi r0,-0x0
    /* 00001180: */    bge- loc_1188
    /* 00001184: */    b loc_1190
loc_1188:
    /* 00001188: */    lwz r8,heapAllyOneType(r27)
    /* 0000118C: */    b loc_1194
loc_1190:
    /* 00001190: */    li r8,0x4
loc_1194:
    /* 00001194: */    lwz r7,heapAllyOneChar(r27)
    /* 00001198: */    mr r3,r23
    /* 0000119C: */    addi r4,r1,0x60
    /* 000011A0: */    addi r5,r1,0x40
    /* 000011A4: */    addi r6,r1,0x20
    /* 000011A8: */    bl loc_134C
    /* 000011AC: */    mr r3,r26
    /* 000011B0: */    subfic r4,r25,0x1E
    /* 000011B4: */    li r5,-0x0
    /* 000011B8: */    li r6,-0x0
    /* 000011BC: */    li r7,0x2A
    /* 000011C0: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__create1")]
    /* 000011C4: */    mr r21,r3
    /* 000011C8: */    addi r4,r1,0x40
    /* 000011CC: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeNodeAnimN")]
    /* 000011D0: */    lwz r3,0x14(r21)
    /* 000011D4: */    lfs f1,0x48(r30)
    /* 000011D8: */    lwz r3,0xC(r3)
    /* 000011DC: */    lwz r12,-0x0(r3)
    /* 000011E0: */    lwz r12,0x28(r12)
    /* 000011E4: */    mtctr r12
    /* 000011E8: */    bctrl
    /* 000011EC: */    mr r3,r21
    /* 000011F0: */    addi r4,r1,0x40
    /* 000011F4: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeClrAnimN")]
    /* 000011F8: */    lwz r3,0x14(r21)
    /* 000011FC: */    lfs f1,0x48(r30)
    /* 00001200: */    lwz r3,0x18(r3)
    /* 00001204: */    lwz r12,-0x0(r3)
    /* 00001208: */    lwz r12,0x28(r12)
    /* 0000120C: */    mtctr r12
    /* 00001210: */    bctrl
    /* 00001214: */    mr r3,r21
    /* 00001218: */    addi r4,r1,0x20
    /* 0000121C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeVisAnimN")]
    /* 00001220: */    lfs f1,0x5C(r30)
    /* 00001224: */    mr r3,r21
    /* 00001228: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__setFrameVisible")]
    /* 0000122C: */    lwz r3,0x14(r21)
    /* 00001230: */    lfs f1,0x4C(r30)
    /* 00001234: */    lwz r3,0x8(r3)
    /* 00001238: */    lwz r12,-0x0(r3)
    /* 0000123C: */    lwz r12,0x28(r12)
    /* 00001240: */    mtctr r12
    /* 00001244: */    bctrl
    /* 00001248: */    stw r21,0xA0(r28)
    /* 0000124C: */    addi r28,r28,0x4
    /* 00001250: */    addi r27,r27,0x8
    /* 00001254: */    addi r26,r26,0x4
    /* 00001258: */    addi r25,r25,0x1
loc_125C:
    /* 0000125C: */    cmpw r25,r29
    /* 00001260: */    blt+ loc_10E4
    /* 00001264: */    cmpwi r24,0x2
    /* 00001268: */    beq- loc_1290
    /* 0000126C: */    bge- loc_127C
    /* 00001270: */    cmpwi r24,0x1
    /* 00001274: */    bge- loc_1288
    /* 00001278: */    b loc_12A0
loc_127C:
    /* 0000127C: */    cmpwi r24,0x4
    /* 00001280: */    bge- loc_12A0
    /* 00001284: */    b loc_1298
loc_1288:
    /* 00001288: */    li r26,-0x0
    /* 0000128C: */    b loc_12A4
loc_1290:
    /* 00001290: */    li r26,0x1
    /* 00001294: */    b loc_12A4
loc_1298:
    /* 00001298: */    li r26,0x3
    /* 0000129C: */    b loc_12A4
loc_12A0:
    /* 000012A0: */    li r26,0xA
loc_12A4:
    /* 000012A4: */    mr r22,r23
    /* 000012A8: */    li r21,-0x0
    /* 000012AC: */    lis r25,-0x0                             [R_PPC_ADDR16_HA(13, 5, "loc_E0")]
    /* 000012B0: */    b loc_12E4
loc_12B4:
    /* 000012B4: */    addi r3,r1,0x18
    /* 000012B8: */    addi r4,r25,-0x0                         [R_PPC_ADDR16_LO(13, 5, "loc_E0")]
    /* 000012BC: */    add r5,r21,r26
    /* 000012C0: */    crclr 6
    /* 000012C4: */    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    /* 000012C8: */    lwz r4,0x70(r22)
    /* 000012CC: */    addi r5,r1,0x18
    /* 000012D0: */    lwz r3,0xA8(r23)
    /* 000012D4: */    lwz r4,0x10(r4)
    /* 000012D8: */    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d12ScnMdlExpandFPQ34nw4r3g3__PushBack1")]
    /* 000012DC: */    addi r22,r22,0x4
    /* 000012E0: */    addi r21,r21,0x1
loc_12E4:
    /* 000012E4: */    cmpw r21,r24
    /* 000012E8: */    blt+ loc_12B4
    /* 000012EC: */    mr r22,r23
    /* 000012F0: */    li r21,-0x0
    /* 000012F4: */    lis r24,-0x0                             [R_PPC_ADDR16_HA(13, 5, "loc_E0")]
    /* 000012F8: */    b loc_132C
loc_12FC:
    /* 000012FC: */    addi r3,r1,0x18
    /* 00001300: */    addi r4,r24,-0x0                         [R_PPC_ADDR16_LO(13, 5, "loc_E0")]
    /* 00001304: */    addi r5,r21,0x1E
    /* 00001308: */    crclr 6
    /* 0000130C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    /* 00001310: */    lwz r4,0xA0(r22)
    /* 00001314: */    addi r5,r1,0x18
    /* 00001318: */    lwz r3,0xA8(r23)
    /* 0000131C: */    lwz r4,0x10(r4)
    /* 00001320: */    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d12ScnMdlExpandFPQ34nw4r3g3__PushBack1")]
    /* 00001324: */    addi r22,r22,0x4
    /* 00001328: */    addi r21,r21,0x1
loc_132C:
    /* 0000132C: */    cmpw r21,r29
    /* 00001330: */    blt+ loc_12FC
    /* 00001334: */    addi r11,r1,0xD0
    /* 00001338: */    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___restgpr_21")]
    /* 0000133C: */    lwz r0,0xD4(r1)
    /* 00001340: */    mtlr r0
    /* 00001344: */    addi r1,r1,0xD0
    /* 00001348: */    blr
loc_134C:
    /* 0000134C: */    stwu r1,-0x30(r1)
    /* 00001350: */    mflr r0
    /* 00001354: */    stw r0,0x34(r1)
    /* 00001358: */    addi r11,r1,0x30
    /* 0000135C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___savegpr_24")]
    /* 00001360: */    lis r31,-0x0                             [R_PPC_ADDR16_HA(13, 5, "loc_0")]
    /* 00001364: */    cmpwi r8,0x2
    /* 00001368: */    addi r31,r31,-0x0                        [R_PPC_ADDR16_LO(13, 5, "loc_0")]
    /* 0000136C: */    mr r24,r4
    /* 00001370: */    mr r25,r5
    /* 00001374: */    mr r26,r6
    /* 00001378: */    addi r30,r31,0xE8
    /* 0000137C: */    addi r29,r31,0xEC
    /* 00001380: */    beq- loc_13B4
    /* 00001384: */    bge- loc_1398
    /* 00001388: */    cmpwi r8,-0x0
    /* 0000138C: */    beq- loc_13A4
    /* 00001390: */    bge- loc_13AC
    /* 00001394: */    b loc_13C0
loc_1398:
    /* 00001398: */    cmpwi r8,0x4
    /* 0000139C: */    bge- loc_13C0
    /* 000013A0: */    b loc_13BC
loc_13A4:
    /* 000013A4: */    li r28,-0x0
    /* 000013A8: */    b loc_13C0
loc_13AC:
    /* 000013AC: */    li r28,-0x0
    /* 000013B0: */    b loc_13C0
loc_13B4:
    /* 000013B4: */    li r28,0x1
    /* 000013B8: */    b loc_13C0
loc_13BC:
    /* 000013BC: */    li r28,0x2
loc_13C0:
    /* 000013C0: */    mr r3,r7
    /* 000013C4: */    bl __unresolved                          [R_PPC_REL24(0, 4, "loc_800AF600")]
    /* 000013C8: */    addi r27,r3,0x1
    /* 000013CC: */    mr r3,r24
    /* 000013D0: */    mr r5,r30
    /* 000013D4: */    addi r4,r31,0xF0
    /* 000013D8: */    mr r6,r27
    /* 000013DC: */    crclr 6
    /* 000013E0: */    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    /* 000013E4: */    mr r3,r25
    /* 000013E8: */    mr r5,r29
    /* 000013EC: */    mr r6,r27
    /* 000013F0: */    mr r7,r28
    /* 000013F4: */    addi r4,r31,0x110
    /* 000013F8: */    crclr 6
    /* 000013FC: */    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    /* 00001400: */    mr r3,r26
    /* 00001404: */    mr r5,r29
    /* 00001408: */    mr r6,r27
    /* 0000140C: */    addi r4,r31,0x130
    /* 00001410: */    crclr 6
    /* 00001414: */    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    /* 00001418: */    addi r11,r1,0x30
    /* 0000141C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___restgpr_24")]
    /* 00001420: */    lwz r0,0x34(r1)
    /* 00001424: */    mtlr r0
    /* 00001428: */    addi r1,r1,0x30
    /* 0000142C: */    blr
muIntroTask__getEnemyResFileName:
    /* 00001430: */    stwu r1,-0x70(r1)
    /* 00001434: */    mflr r0
    /* 00001438: */    stw r0,0x74(r1)
    /* 0000143C: */    addi r11,r1,0x70
    /* 00001440: */    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___savegpr_22")]
    /* 00001444: */    mr r22,r3
    /* 00001448: */    mr r26,r4
    /* 0000144C: */    mr r23,r5
    /* 00001450: */    mr r24,r6
    /* 00001454: */    li r28,-0x0
    /* 00001458: */    lis r30,-0x0                             [R_PPC_ADDR16_HA(13, 5, "loc_148")]
    /* 0000145C: */    lis r31,-0x0                             [R_PPC_ADDR16_HA(13, 4, "loc_4C")]
    /* 00001460: */    b loc_1500
loc_1464:
    /* 00001464: */    lbz r3,0x5(r26)
    /* 00001468: */    li r29,0x1
    /* 0000146C: */    lbz r0,0x4(r26)
    /* 00001470: */    cmplw r0,r3
    /* 00001474: */    bge- loc_147C
    /* 00001478: */    sub r29,r3,r0
loc_147C:
    /* 0000147C: */    li r27,-0x0
    /* 00001480: */    b loc_14F0
loc_1484:
    /* 00001484: */    lwz r4,-0x0(r26)
    /* 00001488: */    mr r3,r24
    /* 0000148C: */    lbz r5,0x6(r26)
    /* 00001490: */    li r6,-0x0
    /* 00001494: */    li r7,0x2A
    /* 00001498: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__create")]
    /* 0000149C: */    lbz r0,0x4(r26)
    /* 000014A0: */    mr r25,r3
    /* 000014A4: */    lwz r4,-0x0(r26)
    /* 000014A8: */    add r0,r0,r27
    /* 000014AC: */    rlwinm r0,r0,2,0,29
    /* 000014B0: */    add r5,r22,r0
    /* 000014B4: */    stw r3,0x60(r5)
    /* 000014B8: */    addi r3,r1,0x8
    /* 000014BC: */    bl __unresolved                          [R_PPC_REL24(0, 4, "string__strcpy")]
    /* 000014C0: */    addi r3,r1,0x8
    /* 000014C4: */    addi r4,r30,-0x0                         [R_PPC_ADDR16_LO(13, 5, "loc_148")]
    /* 000014C8: */    bl __unresolved                          [R_PPC_REL24(0, 4, "string__strcat")]
    /* 000014CC: */    mr r3,r25
    /* 000014D0: */    addi r4,r1,0x8
    /* 000014D4: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeAnimN")]
    /* 000014D8: */    lwz r3,0x14(r25)
    /* 000014DC: */    cmpwi r3,-0x0
    /* 000014E0: */    beq- loc_14EC
    /* 000014E4: */    lfs f1,-0x0(r31)                         [R_PPC_ADDR16_LO(13, 4, "loc_4C")]
    /* 000014E8: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfModelAnimation__setUpdateRate")]
loc_14EC:
    /* 000014EC: */    addi r27,r27,0x1
loc_14F0:
    /* 000014F0: */    cmpw r27,r29
    /* 000014F4: */    blt+ loc_1484
    /* 000014F8: */    addi r28,r28,0x1
    /* 000014FC: */    addi r26,r26,0x8
loc_1500:
    /* 00001500: */    cmpw r28,r23
    /* 00001504: */    blt+ loc_1464
    /* 00001508: */    addi r11,r1,0x70
    /* 0000150C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___restgpr_22")]
    /* 00001510: */    lwz r0,0x74(r1)
    /* 00001514: */    mtlr r0
    /* 00001518: */    addi r1,r1,0x70
    /* 0000151C: */    blr
muIntroTask__createObjResFile:
    /* 00001520: */    stwu r1,-0x20(r1)
    /* 00001524: */    mflr r0
    /* 00001528: */    xoris r4,r4,0x8000
    /* 0000152C: */    stw r0,0x24(r1)
    /* 00001530: */    lis r0,0x4330
    /* 00001534: */    stw r31,0x1C(r1)
    /* 00001538: */    mr r31,r3
    /* 0000153C: */    stw r30,0x18(r1)
    /* 00001540: */    stw r29,0x14(r1)
    /* 00001544: */    stw r4,0xC(r1)
    /* 00001548: */    lis r4,-0x0                              [R_PPC_ADDR16_HA(13, 4, "loc_60")]
    /* 0000154C: */    lfd f1,-0x0(r4)                          [R_PPC_ADDR16_LO(13, 4, "loc_60")]
    /* 00001550: */    stw r0,0x8(r1)
    /* 00001554: */    stw r28,0x10(r1)
    /* 00001558: */    lfd f0,0x8(r1)
    /* 0000155C: */    lwz r28,0x64(r3)
    /* 00001560: */    fsubs f1,f0,f1
    /* 00001564: */    mr r3,r28
    /* 00001568: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__setFrameMatCol")]
    /* 0000156C: */    lwz r28,0x10(r28)
    /* 00001570: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    /* 00001574: */    lis r29,-0x0                             [R_PPC_ADDR16_HA(13, 5, "loc_188")]
    /* 00001578: */    lis r30,-0x0                             [R_PPC_ADDR16_HA(13, 5, "loc_1B8")]
    /* 0000157C: */    lwz r3,0x4(r3)
    /* 00001580: */    addi r5,r29,-0x0                         [R_PPC_ADDR16_LO(13, 5, "loc_188")]
    /* 00001584: */    addi r6,r30,-0x0                         [R_PPC_ADDR16_LO(13, 5, "loc_1B8")]
    /* 00001588: */    li r4,0x4
    /* 0000158C: */    li r7,-0x0
    /* 00001590: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    /* 00001594: */    lwz r3,0x398(r3)
    /* 00001598: */    mr r5,r28
    /* 0000159C: */    lwz r3,-0x0(r3)
    /* 000015A0: */    lwz r3,0x48(r3)
    /* 000015A4: */    lwz r12,-0x0(r3)
    /* 000015A8: */    lwz r4,0xE4(r3)
    /* 000015AC: */    lwz r12,0x34(r12)
    /* 000015B0: */    mtctr r12
    /* 000015B4: */    bctrl
    /* 000015B8: */    lwz r28,0xA8(r31)
    /* 000015BC: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    /* 000015C0: */    lwz r3,0x4(r3)
    /* 000015C4: */    addi r5,r29,-0x0                         [R_PPC_ADDR16_LO(13, 5, "loc_188")]
    /* 000015C8: */    addi r6,r30,-0x0                         [R_PPC_ADDR16_LO(13, 5, "loc_1B8")]
    /* 000015CC: */    li r4,0x4
    /* 000015D0: */    li r7,-0x0
    /* 000015D4: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    /* 000015D8: */    lwz r3,0x398(r3)
    /* 000015DC: */    mr r5,r28
    /* 000015E0: */    lwz r3,-0x0(r3)
    /* 000015E4: */    lwz r3,0x48(r3)
    /* 000015E8: */    lwz r12,-0x0(r3)
    /* 000015EC: */    lwz r4,0xE4(r3)
    /* 000015F0: */    lwz r12,0x34(r12)
    /* 000015F4: */    mtctr r12
    /* 000015F8: */    bctrl
    /* 000015FC: */    lwz r28,0x68(r31)
    /* 00001600: */    lis r30,-0x0                             [R_PPC_ADDR16_HA(13, 4, "loc_48")]
    /* 00001604: */    lfs f1,-0x0(r30)                         [R_PPC_ADDR16_LO(13, 4, "loc_48")]
    /* 00001608: */    lwz r3,0x14(r28)
    /* 0000160C: */    lwz r3,0xC(r3)
    /* 00001610: */    lwz r12,-0x0(r3)
    /* 00001614: */    lwz r12,0x28(r12)
    /* 00001618: */    mtctr r12
    /* 0000161C: */    bctrl
    /* 00001620: */    lwz r3,0x14(r28)
    /* 00001624: */    lfs f1,-0x0(r30)                         [R_PPC_ADDR16_LO(13, 4, "loc_48")]
    /* 00001628: */    lwz r3,0x18(r3)
    /* 0000162C: */    lwz r12,-0x0(r3)
    /* 00001630: */    lwz r12,0x28(r12)
    /* 00001634: */    mtctr r12
    /* 00001638: */    bctrl
    /* 0000163C: */    lwz r0,heapMode(r31)
    /* 00001640: */    cmpwi r0,modeEnumBTT
    /* 00001644: */    blt- loc_1650
    /* 00001648: */    li r0,-0x1
    /* 0000164C: */    b loc_1654
loc_1650:
    /* 00001650: */    lwz r0,heapAllyCount(r31)
loc_1654:
    /* 00001654: */    cmpwi r0,-0x0
    /* 00001658: */    ble- loc_16CC
    /* 0000165C: */    lwz r29,0x9C(r31)
    /* 00001660: */    lwz r28,0x10(r29)
    /* 00001664: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    /* 00001668: */    lis r5,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_188")]
    /* 0000166C: */    lis r6,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_1B8")]
    /* 00001670: */    lwz r3,0x4(r3)
    /* 00001674: */    addi r5,r5,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_188")]
    /* 00001678: */    addi r6,r6,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_1B8")]
    /* 0000167C: */    li r4,0x4
    /* 00001680: */    li r7,-0x0
    /* 00001684: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    /* 00001688: */    lwz r3,0x398(r3)
    /* 0000168C: */    mr r5,r28
    /* 00001690: */    lwz r3,-0x0(r3)
    /* 00001694: */    lwz r3,0x48(r3)
    /* 00001698: */    lwz r12,-0x0(r3)
    /* 0000169C: */    lwz r4,0xE4(r3)
    /* 000016A0: */    lwz r12,0x34(r12)
    /* 000016A4: */    mtctr r12
    /* 000016A8: */    bctrl
    /* 000016AC: */    lwz r4,0x14(r29)
    /* 000016B0: */    lis r3,-0x0                              [R_PPC_ADDR16_HA(13, 4, "loc_48")]
    /* 000016B4: */    lfs f1,-0x0(r3)                          [R_PPC_ADDR16_LO(13, 4, "loc_48")]
    /* 000016B8: */    lwz r3,0xC(r4)
    /* 000016BC: */    lwz r12,-0x0(r3)
    /* 000016C0: */    lwz r12,0x28(r12)
    /* 000016C4: */    mtctr r12
    /* 000016C8: */    bctrl
loc_16CC:
    /* 000016CC: */    lwz r28,0x6C(r31)
    /* 000016D0: */    lis r31,-0x0                             [R_PPC_ADDR16_HA(13, 4, "loc_48")]
    /* 000016D4: */    lfs f1,-0x0(r31)                         [R_PPC_ADDR16_LO(13, 4, "loc_48")]
    /* 000016D8: */    lwz r3,0x14(r28)
    /* 000016DC: */    lwz r3,0xC(r3)
    /* 000016E0: */    lwz r12,-0x0(r3)
    /* 000016E4: */    lwz r12,0x28(r12)
    /* 000016E8: */    mtctr r12
    /* 000016EC: */    bctrl
    /* 000016F0: */    lwz r3,0x14(r28)
    /* 000016F4: */    lfs f1,-0x0(r31)                         [R_PPC_ADDR16_LO(13, 4, "loc_48")]
    /* 000016F8: */    lwz r3,0x18(r3)
    /* 000016FC: */    lwz r12,-0x0(r3)
    /* 00001700: */    lwz r12,0x28(r12)
    /* 00001704: */    mtctr r12
    /* 00001708: */    bctrl
    /* 0000170C: */    lwz r28,0x10(r28)
    /* 00001710: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    /* 00001714: */    lis r5,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_188")]
    /* 00001718: */    lis r6,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_1B8")]
    /* 0000171C: */    lwz r3,0x4(r3)
    /* 00001720: */    addi r5,r5,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_188")]
    /* 00001724: */    addi r6,r6,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_1B8")]
    /* 00001728: */    li r4,0x4
    /* 0000172C: */    li r7,-0x0
    /* 00001730: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    /* 00001734: */    lwz r3,0x398(r3)
    /* 00001738: */    mr r5,r28
    /* 0000173C: */    lwz r3,-0x0(r3)
    /* 00001740: */    lwz r3,0x48(r3)
    /* 00001744: */    lwz r12,-0x0(r3)
    /* 00001748: */    lwz r4,0xE4(r3)
    /* 0000174C: */    lwz r12,0x34(r12)
    /* 00001750: */    mtctr r12
    /* 00001754: */    bctrl
    /* 00001758: */    lwz r0,0x24(r1)
    /* 0000175C: */    lwz r31,0x1C(r1)
    /* 00001760: */    lwz r30,0x18(r1)
    /* 00001764: */    lwz r29,0x14(r1)
    /* 00001768: */    lwz r28,0x10(r1)
    /* 0000176C: */    mtlr r0
    /* 00001770: */    addi r1,r1,0x20
    /* 00001774: */    blr
muIntroTask__dispEnemy:
    /* 00001778: */    stwu r1,-0x40(r1)
    /* 0000177C: */    mflr r0
    /* 00001780: */    stw r0,0x44(r1)
    /* 00001784: */    stw r31,0x3C(r1)
    /* 00001788: */    mr r31,r3
    /* 0000178C: */    stw r30,0x38(r1)
    /* 00001790: */    stw r29,0x34(r1)
    /* 00001794: */    lbz r0,0x108(r3)
    /* 00001798: */    cmpwi r0,-0x0
    /* 0000179C: */    bne- loc_1AE8
    /* 000017A0: */    addi r29,r3,0xE8
    /* 000017A4: */    li r30,-0x0
loc_17A8:
    /* 000017A8: */    mr r3,r29
    /* 000017AC: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__isReady")]
    /* 000017B0: */    cmpwi r3,-0x0
    /* 000017B4: */    bne- loc_17C0
    /* 000017B8: */    li r3,-0x0
    /* 000017BC: */    b loc_17D4
loc_17C0:
    /* 000017C0: */    addi r30,r30,0x1
    /* 000017C4: */    addi r29,r29,0x4
    /* 000017C8: */    cmpwi r30,0x8
    /* 000017CC: */    blt+ loc_17A8
    /* 000017D0: */    bl __unresolved                          [R_PPC_REL24(0, 4, "muMenu__isLoadFinishMenuSound")]
loc_17D4:
    /* 000017D4: */    cmpwi r3,-0x0
    /* 000017D8: */    beq- loc_1BA0
    /* 000017DC: */    li r0,-0x0
    /* 000017E0: */    addi r3,r31,0xE8
    /* 000017E4: */    stw r0,0x8(r1)
    /* 000017E8: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getReturnStatus")]
    /* 000017EC: */    cmpwi r3,0x15
    /* 000017F0: */    bne- loc_17FC
    /* 000017F4: */    li r30,-0x0
    /* 000017F8: */    b loc_1810
loc_17FC:
    /* 000017FC: */    addi r3,r31,0xE8
    /* 00001800: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getBuffer")]
    /* 00001804: */    mr r30,r3
    /* 00001808: */    addi r3,r31,0xE8
    /* 0000180C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__release")]
loc_1810:
    /* 00001810: */    cmpwi r30,-0x0
    /* 00001814: */    beq- loc_1824
    /* 00001818: */    stw r30,0x8(r1)
    /* 0000181C: */    addi r3,r1,0x8
    /* 00001820: */    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d7ResFileFv__Init")]
loc_1824:
    /* 00001824: */    lwz r0,0x8(r1)
    /* 00001828: */    lis r4,-0x0                              [R_PPC_ADDR16_HA(13, 4, "loc_20")]
    /* 0000182C: */    mr r3,r31
    /* 00001830: */    addi r6,r31,0x40
    /* 00001834: */    stw r0,0x40(r31)
    /* 00001838: */    addi r4,r4,-0x0                          [R_PPC_ADDR16_LO(13, 4, "loc_20")]
muIntroTask__processDefault:
    /* 0000183C: */    li r5,0x1
    /* 00001840: */    bl muIntroTask__getEnemyResFileName
    /* 00001844: */    lwz r3,heapMode(r31)
    /* 00001848: */    li r0,-0x1
    /* 0000184C: */    cmpwi r3,modeEnumBTT
    /* 00001850: */    blt- loc_1858
    /* 00001854: */    subi r0,r3,0x2
loc_1858:
    /* 00001858: */    cmpwi r0,-0x0
    /* 0000185C: */    bge- loc_186C
    /* 00001860: */    mr r3,r31
    /* 00001864: */    bl muIntroTask__createCharModel
    /* 00001868: */    b loc_18D8
loc_186C:
    /* 0000186C: */    li r0,-0x0
    /* 00001870: */    addi r3,r31,0xFC
    /* 00001874: */    stw r0,0xC(r1)
    /* 00001878: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getReturnStatus")]
    /* 0000187C: */    cmpwi r3,0x15
    /* 00001880: */    bne- loc_188C
    /* 00001884: */    li r30,-0x0
    /* 00001888: */    b loc_18A0
loc_188C:
    /* 0000188C: */    addi r3,r31,0xFC
    /* 00001890: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getBuffer")]
    /* 00001894: */    mr r30,r3
    /* 00001898: */    addi r3,r31,0xFC
    /* 0000189C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__release")]
loc_18A0:
    /* 000018A0: */    cmpwi r30,-0x0
    /* 000018A4: */    beq- loc_18B4
    /* 000018A8: */    stw r30,0xC(r1)
    /* 000018AC: */    addi r3,r1,0xC
    /* 000018B0: */    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d7ResFileFv__Init")]
loc_18B4:
    /* 000018B4: */    lwz r0,0xC(r1)
    /* 000018B8: */    addi r3,r31,0x5C
    /* 000018BC: */    li r4,0x12
    /* 000018C0: */    li r5,-0x0
    /* 000018C4: */    stw r0,0x5C(r31)
    /* 000018C8: */    li r6,-0x0
    /* 000018CC: */    li r7,0x2A
    /* 000018D0: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__create1")]
    /* 000018D4: */    stw r3,0x70(r31)
loc_18D8:
    /* 000018D8: */    lis r3,-0x0                              [R_PPC_ADDR16_HA(0, 11, "loc_8059FFAC")]
    /* 000018DC: */    lwz r3,-0x0(r3)                          [R_PPC_ADDR16_LO(0, 11, "loc_8059FFAC")]
    /* 000018E0: */    addi r3,r3,0xD0
    /* 000018E4: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfKeepFrameBuffer__endKeepScreen")]
    /* 000018E8: */    lwz r5,heapStageNum(r31)
    /* 000018EC: */    lis r4,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_14C")]
    /* 000018F0: */    lwz r30,0x60(r31)
    /* 000018F4: */    addi r3,r1,0x10
    /* 000018F8: */    addi r4,r4,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_14C")]
    /* 000018FC: */    addi r5,r5,0x1
    /* 00001900: */    crclr 6
    /* 00001904: */    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    /* 00001908: */    mr r3,r30
    /* 0000190C: */    addi r4,r1,0x10
    /* 00001910: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeNodeAnimNIf")]
    /* 00001914: */    mr r3,r30
    /* 00001918: */    addi r4,r1,0x10
    /* 0000191C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeVisAnimNIf")]
    /* 00001920: */    mr r3,r30
    /* 00001924: */    addi r4,r1,0x10
    /* 00001928: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeTexPatAnimNIf")]
    /* 0000192C: */    mr r3,r30
    /* 00001930: */    addi r4,r1,0x10
    /* 00001934: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeClrAnimNIf")]
    /* 00001938: */    lis r4,-0x0                              [R_PPC_ADDR16_HA(13, 4, "loc_48")]
    /* 0000193C: */    lwz r3,0x14(r30)
    /* 00001940: */    lfs f1,-0x0(r4)                          [R_PPC_ADDR16_LO(13, 4, "loc_48")]
    /* 00001944: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfModelAnimation__setUpdateRate")]
    /* 00001948: */    lwz r30,0x10(r30)
    /* 0000194C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    /* 00001950: */    lis r5,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_188")]
    /* 00001954: */    lis r6,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_1B8")]
    /* 00001958: */    lwz r3,0x4(r3)
    /* 0000195C: */    addi r5,r5,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_188")]
    /* 00001960: */    addi r6,r6,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_1B8")]
    /* 00001964: */    li r4,0x4
    /* 00001968: */    li r7,-0x0
    /* 0000196C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    /* 00001970: */    lwz r3,0x398(r3)
    /* 00001974: */    mr r5,r30
    /* 00001978: */    lwz r3,-0x0(r3)
    /* 0000197C: */    lwz r3,0x48(r3)
    /* 00001980: */    lwz r12,-0x0(r3)
    /* 00001984: */    lwz r4,0xE4(r3)
    /* 00001988: */    lwz r12,0x34(r12)
    /* 0000198C: */    mtctr r12
    /* 00001990: */    bctrl
    /* 00001994: */    lwz r3,heapMode(r31)
    /* 00001998: */    li r0,-0x1
    /* 0000199C: */    cmpwi r3,modeEnumBTT
    /* 000019A0: */    blt- loc_19A8
    /* 000019A4: */    subi r0,r3,0x2
loc_19A8:
    /* 000019A8: */    cmpwi r0,-0x0
    /* 000019AC: */    bge- loc_19C0
    /* 000019B0: */    lwz r4,heapStageNum(r31)
    /* 000019B4: */    mr r3,r31
    /* 000019B8: */    bl muIntroTask__createObjResFile
    /* 000019BC: */    b loc_1A4C
loc_19C0:
    /* 000019C0: */    lwz r29,0x70(r31)
    /* 000019C4: */    lis r30,-0x0                             [R_PPC_ADDR16_HA(13, 4, "loc_48")]
    /* 000019C8: */    lfs f1,-0x0(r30)                         [R_PPC_ADDR16_LO(13, 4, "loc_48")]
    /* 000019CC: */    lwz r3,0x14(r29)
    /* 000019D0: */    lwz r3,0xC(r3)
    /* 000019D4: */    lwz r12,-0x0(r3)
    /* 000019D8: */    lwz r12,0x28(r12)
    /* 000019DC: */    mtctr r12
    /* 000019E0: */    bctrl
    /* 000019E4: */    lwz r3,0x14(r29)
    /* 000019E8: */    lfs f1,-0x0(r30)                         [R_PPC_ADDR16_LO(13, 4, "loc_48")]
    /* 000019EC: */    lwz r3,0x18(r3)
    /* 000019F0: */    lwz r12,-0x0(r3)
    /* 000019F4: */    lwz r12,0x28(r12)
    /* 000019F8: */    mtctr r12
    /* 000019FC: */    bctrl
    /* 00001A00: */    lwz r30,0x10(r29)
    /* 00001A04: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    /* 00001A08: */    lis r5,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_188")]
    /* 00001A0C: */    lis r6,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_1B8")]
    /* 00001A10: */    lwz r3,0x4(r3)
    /* 00001A14: */    addi r5,r5,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_188")]
    /* 00001A18: */    addi r6,r6,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_1B8")]
    /* 00001A1C: */    li r4,0x4
    /* 00001A20: */    li r7,-0x0
    /* 00001A24: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    /* 00001A28: */    lwz r3,0x398(r3)
    /* 00001A2C: */    mr r5,r30
    /* 00001A30: */    lwz r3,-0x0(r3)
    /* 00001A34: */    lwz r3,0x48(r3)
    /* 00001A38: */    lwz r12,-0x0(r3)
    /* 00001A3C: */    lwz r4,0xE4(r3)
    /* 00001A40: */    lwz r12,0x34(r12)
    /* 00001A44: */    mtctr r12
    /* 00001A48: */    bctrl
loc_1A4C:
    /* 00001A4C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    /* 00001A50: */    lis r5,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_188")]
    /* 00001A54: */    lis r6,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_1B8")]
    /* 00001A58: */    lwz r3,0x4(r3)
    /* 00001A5C: */    addi r5,r5,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_188")]
    /* 00001A60: */    addi r6,r6,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_1B8")]
    /* 00001A64: */    li r4,0x4
    /* 00001A68: */    li r7,-0x0
    /* 00001A6C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    /* 00001A70: */    lbz r30,0x39D(r3)
    /* 00001A74: */    cmpwi r30,0x78
    /* 00001A78: */    bne- loc_1A80
    /* 00001A7C: */    li r30,-0x1
loc_1A80:
    /* 00001A80: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    /* 00001A84: */    lis r5,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_188")]
    /* 00001A88: */    lis r6,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_1B8")]
    /* 00001A8C: */    lwz r3,0x4(r3)
    /* 00001A90: */    addi r5,r5,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_188")]
    /* 00001A94: */    addi r6,r6,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_1B8")]
    /* 00001A98: */    li r4,0x4
    /* 00001A9C: */    li r7,-0x0
    /* 00001AA0: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    /* 00001AA4: */    lwz r3,0x394(r3)
    /* 00001AA8: */    mr r5,r30
    /* 00001AAC: */    li r4,0x14
    /* 00001AB0: */    bl __unresolved                          [R_PPC_REL24(0, 4, "muMenu__startRumbleController")]
    /* 00001AB4: */    lis r3,-0x0                              [R_PPC_ADDR16_HA(0, 11, "loc_805A01D0")]
    /* 00001AB8: */    li r4,0x2B
    /* 00001ABC: */    lwz r3,-0x0(r3)                          [R_PPC_ADDR16_LO(0, 11, "loc_805A01D0")]
    /* 00001AC0: */    li r5,-0x1
    /* 00001AC4: */    li r6,-0x0
    /* 00001AC8: */    li r7,-0x0
    /* 00001ACC: */    li r8,-0x1
    /* 00001AD0: */    bl __unresolved                          [R_PPC_REL24(0, 4, "sndSystem__playSERem")]
    /* 00001AD4: */    li r3,-0x0
    /* 00001AD8: */    li r0,0x1
    /* 00001ADC: */    stw r3,0xE4(r31)
    /* 00001AE0: */    stb r0,0x108(r31)
    /* 00001AE4: */    b loc_1BA0
loc_1AE8:
    /* 00001AE8: */    lwz r0,0x194(r3)
    /* 00001AEC: */    lwz r4,0x190(r3)
    /* 00001AF0: */    cmpwi r0,-0x0
    /* 00001AF4: */    rlwinm r0,r4,3,0,28
    /* 00001AF8: */    add r30,r3,r0
    /* 00001AFC: */    bgt- loc_1B20
    /* 00001B00: */    lis r3,-0x0                              [R_PPC_ADDR16_HA(0, 11, "loc_805A01D0")]
    /* 00001B04: */    lwz r4,0x10C(r30)
    /* 00001B08: */    lwz r3,-0x0(r3)                          [R_PPC_ADDR16_LO(0, 11, "loc_805A01D0")]
    /* 00001B0C: */    li r5,-0x1
    /* 00001B10: */    li r6,-0x0
    /* 00001B14: */    li r7,-0x0
    /* 00001B18: */    li r8,-0x1
    /* 00001B1C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "sndSystem__playSERem")]
loc_1B20:
    /* 00001B20: */    lwz r3,0x194(r31)
    /* 00001B24: */    addi r3,r3,0x1
    /* 00001B28: */    stw r3,0x194(r31)
    /* 00001B2C: */    lwz r0,0x110(r30)
    /* 00001B30: */    cmplw r3,r0
    /* 00001B34: */    blt- loc_1B58
    /* 00001B38: */    lwz r3,0x190(r31)
    /* 00001B3C: */    lwz r0,0x18C(r31)
    /* 00001B40: */    addi r3,r3,0x1
    /* 00001B44: */    cmpw r3,r0
    /* 00001B48: */    stw r3,0x190(r31)
    /* 00001B4C: */    bge- loc_1B58
    /* 00001B50: */    li r0,-0x0
    /* 00001B54: */    stw r0,0x194(r31)
loc_1B58:
    /* 00001B58: */    lwz r3,0x190(r31)
    /* 00001B5C: */    lwz r0,0x18C(r31)
    /* 00001B60: */    cmpw r3,r0
    /* 00001B64: */    blt- loc_1BA0
    /* 00001B68: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    /* 00001B6C: */    lis r5,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_188")]
    /* 00001B70: */    lis r6,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_1B8")]
    /* 00001B74: */    lwz r3,0x4(r3)
    /* 00001B78: */    addi r5,r5,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_188")]
    /* 00001B7C: */    addi r6,r6,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_1B8")]
    /* 00001B80: */    li r4,0x4
    /* 00001B84: */    li r7,-0x0
    /* 00001B88: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    /* 00001B8C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    /* 00001B90: */    li r4,-0x0
    /* 00001B94: */    li r0,0x2
    /* 00001B98: */    stw r4,0x284(r3)
    /* 00001B9C: */    stw r0,0x288(r3)
loc_1BA0:
    /* 00001BA0: */    lwz r0,0x44(r1)
    /* 00001BA4: */    lwz r31,0x3C(r1)
    /* 00001BA8: */    lwz r30,0x38(r1)
    /* 00001BAC: */    lwz r29,0x34(r1)
    /* 00001BB0: */    mtlr r0
    /* 00001BB4: */    addi r1,r1,0x40
    /* 00001BB8: */    blr
__entry:
    /* 00001BBC: */    stwu r1,-0x10(r1)
    /* 00001BC0: */    mflr r0
    /* 00001BC4: */    stw r0,0x14(r1)
    /* 00001BC8: */    stw r31,0xC(r1)
    /* 00001BCC: */    lis r31,-0x0                             [R_PPC_ADDR16_HA(13, 2, "loc_0")]
    /* 00001BD0: */    addi r31,r31,-0x0                        [R_PPC_ADDR16_LO(13, 2, "loc_0")]
    /* 00001BD4: */    b loc_1BE4
loc_1BD8:
    /* 00001BD8: */    mtctr r12
    /* 00001BDC: */    bctrl
    /* 00001BE0: */    addi r31,r31,0x4
loc_1BE4:
    /* 00001BE4: */    lwz r12,-0x0(r31)
    /* 00001BE8: */    cmpwi r12,-0x0
    /* 00001BEC: */    bne+ loc_1BD8
    /* 00001BF0: */    lwz r0,0x14(r1)
    /* 00001BF4: */    lwz r31,0xC(r1)
    /* 00001BF8: */    mtlr r0
    /* 00001BFC: */    addi r1,r1,0x10
    /* 00001C00: */    blr
__exit:
    /* 00001C04: */    stwu r1,-0x10(r1)
    /* 00001C08: */    mflr r0
    /* 00001C0C: */    stw r0,0x14(r1)
    /* 00001C10: */    stw r31,0xC(r1)
    /* 00001C14: */    lis r31,-0x0                             [R_PPC_ADDR16_HA(13, 3, "loc_0")]
    /* 00001C18: */    addi r31,r31,-0x0                        [R_PPC_ADDR16_LO(13, 3, "loc_0")]
    /* 00001C1C: */    b loc_1C2C
loc_1C20:
    /* 00001C20: */    mtctr r12
    /* 00001C24: */    bctrl
    /* 00001C28: */    addi r31,r31,0x4
loc_1C2C:
    /* 00001C2C: */    lwz r12,-0x0(r31)
    /* 00001C30: */    cmpwi r12,-0x0
    /* 00001C34: */    bne+ loc_1C20
    /* 00001C38: */    lwz r0,0x14(r1)
    /* 00001C3C: */    lwz r31,0xC(r1)
    /* 00001C40: */    mtlr r0
    /* 00001C44: */    addi r1,r1,0x10
    /* 00001C48: */    blr
__unresolved:
    /* 00001C4C: */    lis r3,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_258")]
    /* 00001C50: */    addi r3,r3,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_258")]
    /* 00001C54: */    b __unresolved                           [R_PPC_REL24(0, 4, "module__moUnResolvedMessage")]
