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
