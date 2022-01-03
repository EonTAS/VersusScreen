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
