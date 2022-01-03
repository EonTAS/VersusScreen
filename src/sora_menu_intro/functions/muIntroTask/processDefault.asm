    /* 0000183C: */    li r5,0x1
    /* 00001840: */    bl muIntroTask__getEnemyResFileName
    /* 00001844: */    lwz r3,0xB0(r31)
    /* 00001848: */    li r0,-0x1
    /* 0000184C: */    cmpwi r3,0x2
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
    /* 000018E8: */    lwz r5,0xAC(r31)
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
    /* 00001994: */    lwz r3,0xB0(r31)
    /* 00001998: */    li r0,-0x1
    /* 0000199C: */    cmpwi r3,0x2
    /* 000019A0: */    blt- loc_19A8
    /* 000019A4: */    subi r0,r3,0x2
loc_19A8:
    /* 000019A8: */    cmpwi r0,-0x0
    /* 000019AC: */    bge- loc_19C0
    /* 000019B0: */    lwz r4,0xAC(r31)
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
