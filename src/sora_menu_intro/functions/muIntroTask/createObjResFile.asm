    /* 00001520: */    stwu r1,-0x20(r1)
    /* 00001524: */    mflr r0
    /* 00001528: */    xoris r4,r4,0x8000
    /* 0000152C: */    stw r0,0x24(r1)
    /* 00001530: */    lis r0,0x4330
    /* 00001534: */    stw r31,0x1C(r1)
    /* 00001538: */    mr r31,r3
    /* 0000153C: */    stw r30,0x18(r1)
    /* 00001540: */    stw r29,0x14(r1)
    /* 00001544: */    stw r4,0xC(r1)
    /* 00001548: */    lis r4,-0x0                              [R_PPC_ADDR16_HA(13, 4, "loc_60")]
    /* 0000154C: */    lfd f1,-0x0(r4)                          [R_PPC_ADDR16_LO(13, 4, "loc_60")]
    /* 00001550: */    stw r0,0x8(r1)
    /* 00001554: */    stw r28,0x10(r1)
    /* 00001558: */    lfd f0,0x8(r1)
    /* 0000155C: */    lwz r28,0x64(r3)
    /* 00001560: */    fsubs f1,f0,f1
    /* 00001564: */    mr r3,r28
    /* 00001568: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__setFrameMatCol")]
    /* 0000156C: */    lwz r28,0x10(r28)
    /* 00001570: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    /* 00001574: */    lis r29,-0x0                             [R_PPC_ADDR16_HA(13, 5, "loc_188")]
    /* 00001578: */    lis r30,-0x0                             [R_PPC_ADDR16_HA(13, 5, "loc_1B8")]
    /* 0000157C: */    lwz r3,0x4(r3)
    /* 00001580: */    addi r5,r29,-0x0                         [R_PPC_ADDR16_LO(13, 5, "loc_188")]
    /* 00001584: */    addi r6,r30,-0x0                         [R_PPC_ADDR16_LO(13, 5, "loc_1B8")]
    /* 00001588: */    li r4,0x4
    /* 0000158C: */    li r7,-0x0
    /* 00001590: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    /* 00001594: */    lwz r3,0x398(r3)
    /* 00001598: */    mr r5,r28
    /* 0000159C: */    lwz r3,-0x0(r3)
    /* 000015A0: */    lwz r3,0x48(r3)
    /* 000015A4: */    lwz r12,-0x0(r3)
    /* 000015A8: */    lwz r4,0xE4(r3)
    /* 000015AC: */    lwz r12,0x34(r12)
    /* 000015B0: */    mtctr r12
    /* 000015B4: */    bctrl
    /* 000015B8: */    lwz r28,0xA8(r31)
    /* 000015BC: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    /* 000015C0: */    lwz r3,0x4(r3)
    /* 000015C4: */    addi r5,r29,-0x0                         [R_PPC_ADDR16_LO(13, 5, "loc_188")]
    /* 000015C8: */    addi r6,r30,-0x0                         [R_PPC_ADDR16_LO(13, 5, "loc_1B8")]
    /* 000015CC: */    li r4,0x4
    /* 000015D0: */    li r7,-0x0
    /* 000015D4: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    /* 000015D8: */    lwz r3,0x398(r3)
    /* 000015DC: */    mr r5,r28
    /* 000015E0: */    lwz r3,-0x0(r3)
    /* 000015E4: */    lwz r3,0x48(r3)
    /* 000015E8: */    lwz r12,-0x0(r3)
    /* 000015EC: */    lwz r4,0xE4(r3)
    /* 000015F0: */    lwz r12,0x34(r12)
    /* 000015F4: */    mtctr r12
    /* 000015F8: */    bctrl
    /* 000015FC: */    lwz r28,0x68(r31)
    /* 00001600: */    lis r30,-0x0                             [R_PPC_ADDR16_HA(13, 4, "loc_48")]
    /* 00001604: */    lfs f1,-0x0(r30)                         [R_PPC_ADDR16_LO(13, 4, "loc_48")]
    /* 00001608: */    lwz r3,0x14(r28)
    /* 0000160C: */    lwz r3,0xC(r3)
    /* 00001610: */    lwz r12,-0x0(r3)
    /* 00001614: */    lwz r12,0x28(r12)
    /* 00001618: */    mtctr r12
    /* 0000161C: */    bctrl
    /* 00001620: */    lwz r3,0x14(r28)
    /* 00001624: */    lfs f1,-0x0(r30)                         [R_PPC_ADDR16_LO(13, 4, "loc_48")]
    /* 00001628: */    lwz r3,0x18(r3)
    /* 0000162C: */    lwz r12,-0x0(r3)
    /* 00001630: */    lwz r12,0x28(r12)
    /* 00001634: */    mtctr r12
    /* 00001638: */    bctrl
    /* 0000163C: */    lwz r0,0xB0(r31)
    /* 00001640: */    cmpwi r0,0x2
    /* 00001644: */    blt- loc_1650
    /* 00001648: */    li r0,-0x1
    /* 0000164C: */    b loc_1654
loc_1650:
    /* 00001650: */    lwz r0,0xD0(r31)
loc_1654:
    /* 00001654: */    cmpwi r0,-0x0
    /* 00001658: */    ble- loc_16CC
    /* 0000165C: */    lwz r29,0x9C(r31)
    /* 00001660: */    lwz r28,0x10(r29)
    /* 00001664: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    /* 00001668: */    lis r5,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_188")]
    /* 0000166C: */    lis r6,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_1B8")]
    /* 00001670: */    lwz r3,0x4(r3)
    /* 00001674: */    addi r5,r5,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_188")]
    /* 00001678: */    addi r6,r6,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_1B8")]
    /* 0000167C: */    li r4,0x4
    /* 00001680: */    li r7,-0x0
    /* 00001684: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    /* 00001688: */    lwz r3,0x398(r3)
    /* 0000168C: */    mr r5,r28
    /* 00001690: */    lwz r3,-0x0(r3)
    /* 00001694: */    lwz r3,0x48(r3)
    /* 00001698: */    lwz r12,-0x0(r3)
    /* 0000169C: */    lwz r4,0xE4(r3)
    /* 000016A0: */    lwz r12,0x34(r12)
    /* 000016A4: */    mtctr r12
    /* 000016A8: */    bctrl
    /* 000016AC: */    lwz r4,0x14(r29)
    /* 000016B0: */    lis r3,-0x0                              [R_PPC_ADDR16_HA(13, 4, "loc_48")]
    /* 000016B4: */    lfs f1,-0x0(r3)                          [R_PPC_ADDR16_LO(13, 4, "loc_48")]
    /* 000016B8: */    lwz r3,0xC(r4)
    /* 000016BC: */    lwz r12,-0x0(r3)
    /* 000016C0: */    lwz r12,0x28(r12)
    /* 000016C4: */    mtctr r12
    /* 000016C8: */    bctrl
loc_16CC:
    /* 000016CC: */    lwz r28,0x6C(r31)
    /* 000016D0: */    lis r31,-0x0                             [R_PPC_ADDR16_HA(13, 4, "loc_48")]
    /* 000016D4: */    lfs f1,-0x0(r31)                         [R_PPC_ADDR16_LO(13, 4, "loc_48")]
    /* 000016D8: */    lwz r3,0x14(r28)
    /* 000016DC: */    lwz r3,0xC(r3)
    /* 000016E0: */    lwz r12,-0x0(r3)
    /* 000016E4: */    lwz r12,0x28(r12)
    /* 000016E8: */    mtctr r12
    /* 000016EC: */    bctrl
    /* 000016F0: */    lwz r3,0x14(r28)
    /* 000016F4: */    lfs f1,-0x0(r31)                         [R_PPC_ADDR16_LO(13, 4, "loc_48")]
    /* 000016F8: */    lwz r3,0x18(r3)
    /* 000016FC: */    lwz r12,-0x0(r3)
    /* 00001700: */    lwz r12,0x28(r12)
    /* 00001704: */    mtctr r12
    /* 00001708: */    bctrl
    /* 0000170C: */    lwz r28,0x10(r28)
    /* 00001710: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    /* 00001714: */    lis r5,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_188")]
    /* 00001718: */    lis r6,-0x0                              [R_PPC_ADDR16_HA(13, 5, "loc_1B8")]
    /* 0000171C: */    lwz r3,0x4(r3)
    /* 00001720: */    addi r5,r5,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_188")]
    /* 00001724: */    addi r6,r6,-0x0                          [R_PPC_ADDR16_LO(13, 5, "loc_1B8")]
    /* 00001728: */    li r4,0x4
    /* 0000172C: */    li r7,-0x0
    /* 00001730: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    /* 00001734: */    lwz r3,0x398(r3)
    /* 00001738: */    mr r5,r28
    /* 0000173C: */    lwz r3,-0x0(r3)
    /* 00001740: */    lwz r3,0x48(r3)
    /* 00001744: */    lwz r12,-0x0(r3)
    /* 00001748: */    lwz r4,0xE4(r3)
    /* 0000174C: */    lwz r12,0x34(r12)
    /* 00001750: */    mtctr r12
    /* 00001754: */    bctrl
    /* 00001758: */    lwz r0,0x24(r1)
    /* 0000175C: */    lwz r31,0x1C(r1)
    /* 00001760: */    lwz r30,0x18(r1)
    /* 00001764: */    lwz r29,0x14(r1)
    /* 00001768: */    lwz r28,0x10(r1)
    /* 0000176C: */    mtlr r0
    /* 00001770: */    addi r1,r1,0x20
    /* 00001774: */    blr
