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
