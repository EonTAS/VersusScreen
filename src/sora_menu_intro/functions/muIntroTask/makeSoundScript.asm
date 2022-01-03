    /* 00000620: */    stwu r1,-0x40(r1)
    /* 00000624: */    mflr r0
    /* 00000628: */    stw r0,0x44(r1)
    /* 0000062C: */    addi r11,r1,0x40
    /* 00000630: */    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___savegpr_21")]
    /* 00000634: */    lwz r4,0xB0(r3)
    /* 00000638: */    mr r23,r3
    /* 0000063C: */    li r0,-0x1
    /* 00000640: */    cmpwi r4,0x2
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
    /* 00000674: */    lwz r5,0xB0(r3)
    /* 00000678: */    addi r0,r4,0x1
    /* 0000067C: */    cmpwi r5,0x1
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
    /* 000006C4: */    lwz r24,0xB4(r3)
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
    /* 00000750: */    lwz r0,0xB0(r23)
    /* 00000754: */    cmpwi r0,0x2
    /* 00000758: */    blt- loc_764
    /* 0000075C: */    li r0,-0x1
    /* 00000760: */    b loc_768
loc_764:
    /* 00000764: */    lwz r0,0xB4(r23)
loc_768:
    /* 00000768: */    cmpw r25,r0
    /* 0000076C: */    blt- loc_778
    /* 00000770: */    li r0,0x4
    /* 00000774: */    b loc_7A8
loc_778:
    /* 00000778: */    lwz r0,0xB0(r23)
    /* 0000077C: */    cmpwi r0,0x1
    /* 00000780: */    beq- loc_79C
    /* 00000784: */    bge- loc_7A4
    /* 00000788: */    cmpwi r0,-0x0
    /* 0000078C: */    bge- loc_794
    /* 00000790: */    b loc_7A4
loc_794:
    /* 00000794: */    lwz r0,0xBC(r26)
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
    /* 000007E4: */    lwz r3,0xB8(r26)
    /* 000007E8: */    bl __unresolved                          [R_PPC_REL24(0, 4, "muMenu__exchangeSelchkind2SelCharVoice")]
    /* 000007EC: */    addis r0,r3,0x1
    /* 000007F0: */    mr r21,r3
    /* 000007F4: */    cmplwi r0,0xFFFF
    /* 000007F8: */    beq- loc_840
    /* 000007FC: */    lwz r3,-0x0(r22)                         [R_PPC_ADDR16_LO(0, 11, "loc_805A00E0")]
    /* 00000800: */    bl __unresolved                          [R_PPC_REL24(0, 4, "loc_8004D9DC")]
    /* 00000804: */    cmpwi r3,-0x0
    /* 00000808: */    bne- loc_818
    /* 0000080C: */    lwz r3,0xB8(r26)
    /* 00000810: */    bl __unresolved                          [R_PPC_REL24(0, 4, "loc_800AF8A0")]
    /* 00000814: */    b loc_820
loc_818:
    /* 00000818: */    lwz r3,0xB8(r26)
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
    /* 000008CC: */    lwz r0,0x35C(r3)
    /* 000008D0: */    stw r0,0xAC(r31)
    /* 000008D4: */    lwz r0,0x360(r3)
    /* 000008D8: */    stw r0,0xB0(r31)
    /* 000008DC: */    lwz r0,0x364(r3)
    /* 000008E0: */    stw r0,0xB4(r31)
    /* 000008E4: */    lwz r0,0x380(r3)
    /* 000008E8: */    stw r0,0xD0(r31)
    /* 000008EC: */    lwz r0,0x368(r3)
    /* 000008F0: */    stw r0,0xB8(r31)
    /* 000008F4: */    lwz r0,0x36C(r3)
    /* 000008F8: */    stw r0,0xBC(r31)
    /* 000008FC: */    lwz r0,0x370(r3)
    /* 00000900: */    stw r0,0xC0(r31)
    /* 00000904: */    lwz r0,0x374(r3)
    /* 00000908: */    stw r0,0xC4(r31)
    /* 0000090C: */    lwz r0,0x378(r3)
    /* 00000910: */    stw r0,0xC8(r31)
    /* 00000914: */    lwz r0,0x37C(r3)
    /* 00000918: */    stw r0,0xCC(r31)
    /* 0000091C: */    lwz r0,0x384(r3)
    /* 00000920: */    stw r0,0xD4(r31)
    /* 00000924: */    lwz r0,0x388(r3)
    /* 00000928: */    stw r0,0xD8(r31)
    /* 0000092C: */    lwz r0,0x38C(r3)
    /* 00000930: */    stw r0,0xDC(r31)
    /* 00000934: */    lwz r0,0x390(r3)
    /* 00000938: */    stw r0,0xE0(r31)
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
    /* 0000098C: */    lwz r0,0xB0(r31)
    /* 00000990: */    cmpwi r0,0x1
    /* 00000994: */    bne- loc_9F4
    /* 00000998: */    beq- loc_9B4
    /* 0000099C: */    bge- loc_9BC
    /* 000009A0: */    cmpwi r0,-0x0
    /* 000009A4: */    bge- loc_9AC
    /* 000009A8: */    b loc_9BC
loc_9AC:
    /* 000009AC: */    lwz r8,0xBC(r31)
    /* 000009B0: */    b loc_9C0
loc_9B4:
    /* 000009B4: */    li r8,-0x0
    /* 000009B8: */    b loc_9C0
loc_9BC:
    /* 000009BC: */    li r8,0x4
loc_9C0:
    /* 000009C0: */    lwz r7,0xB8(r31)
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
    /* 00000A04: */    lwz r30,0xB4(r31)
loc_A08:
    /* 00000A08: */    mr r29,r31
    /* 00000A0C: */    li r28,-0x0
    /* 00000A10: */    b loc_AB8
loc_A14:
    /* 00000A14: */    cmpwi r28,-0x0
    /* 00000A18: */    bge- loc_A44
    /* 00000A1C: */    lwz r0,0xB0(r31)
    /* 00000A20: */    cmpwi r0,0x2
    /* 00000A24: */    blt- loc_A30
    /* 00000A28: */    li r0,-0x1
    /* 00000A2C: */    b loc_A34
loc_A30:
    /* 00000A30: */    lwz r0,0xB4(r31)
loc_A34:
    /* 00000A34: */    cmpw r28,r0
    /* 00000A38: */    blt- loc_A44
    /* 00000A3C: */    li r8,0x4
    /* 00000A40: */    b loc_A74
loc_A44:
    /* 00000A44: */    lwz r0,0xB0(r31)
    /* 00000A48: */    cmpwi r0,0x1
    /* 00000A4C: */    beq- loc_A68
    /* 00000A50: */    bge- loc_A70
    /* 00000A54: */    cmpwi r0,-0x0
    /* 00000A58: */    bge- loc_A60
    /* 00000A5C: */    b loc_A70
loc_A60:
    /* 00000A60: */    lwz r8,0xBC(r29)
    /* 00000A64: */    b loc_A74
loc_A68:
    /* 00000A68: */    li r8,-0x0
    /* 00000A6C: */    b loc_A74
loc_A70:
    /* 00000A70: */    li r8,0x4
loc_A74:
    /* 00000A74: */    lwz r7,0xB8(r29)
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
    /* 00000AC0: */    lwz r0,0xB0(r31)
    /* 00000AC4: */    cmpwi r0,0x2
    /* 00000AC8: */    blt- loc_AD4
    /* 00000ACC: */    li r30,-0x1
    /* 00000AD0: */    b loc_AD8
loc_AD4:
    /* 00000AD4: */    lwz r30,0xD0(r31)
loc_AD8:
    /* 00000AD8: */    mr r29,r31
    /* 00000ADC: */    li r28,-0x0
    /* 00000AE0: */    b loc_B7C
loc_AE4:
    /* 00000AE4: */    cmpwi r28,-0x0
    /* 00000AE8: */    bge- loc_B14
    /* 00000AEC: */    lwz r0,0xB0(r31)
    /* 00000AF0: */    cmpwi r0,0x2
    /* 00000AF4: */    blt- loc_B00
    /* 00000AF8: */    li r0,-0x1
    /* 00000AFC: */    b loc_B04
loc_B00:
    /* 00000B00: */    lwz r0,0xD0(r31)
loc_B04:
    /* 00000B04: */    cmpw r28,r0
    /* 00000B08: */    blt- loc_B14
    /* 00000B0C: */    li r8,0x4
    /* 00000B10: */    b loc_B38
loc_B14:
    /* 00000B14: */    lwz r0,0xB0(r31)
    /* 00000B18: */    cmpwi r0,0x2
    /* 00000B1C: */    bge- loc_B34
    /* 00000B20: */    cmpwi r0,-0x0
    /* 00000B24: */    bge- loc_B2C
    /* 00000B28: */    b loc_B34
loc_B2C:
    /* 00000B2C: */    lwz r8,0xD8(r29)
    /* 00000B30: */    b loc_B38
loc_B34:
    /* 00000B34: */    li r8,0x4
loc_B38:
    /* 00000B38: */    lwz r7,0xD4(r29)
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
