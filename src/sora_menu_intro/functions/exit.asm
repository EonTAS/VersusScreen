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
