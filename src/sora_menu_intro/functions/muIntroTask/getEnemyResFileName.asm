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
