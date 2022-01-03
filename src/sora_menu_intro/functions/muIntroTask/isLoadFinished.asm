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
