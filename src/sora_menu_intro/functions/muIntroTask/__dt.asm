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
