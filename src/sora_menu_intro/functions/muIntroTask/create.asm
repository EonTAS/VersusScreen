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
    /* 00000054: */    lwz r3,0xB0(r31)
    /* 00000058: */    li r5,-0x1
    /* 0000005C: */    cmpwi r3,0x2
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
