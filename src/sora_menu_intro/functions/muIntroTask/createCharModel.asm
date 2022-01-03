    /* 00000C04: */    stwu r1,-0xD0(r1)
    /* 00000C08: */    mflr r0
    /* 00000C0C: */    stw r0,0xD4(r1)
    /* 00000C10: */    addi r11,r1,0xD0
    /* 00000C14: */    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___savegpr_21")]
    /* 00000C18: */    li r0,-0x0
    /* 00000C1C: */    lis r30,-0x0                             [R_PPC_ADDR16_HA(13, 4, "loc_0")]
    /* 00000C20: */    stw r0,0x14(r1)
    /* 00000C24: */    mr r23,r3
    /* 00000C28: */    addi r30,r30,-0x0                        [R_PPC_ADDR16_LO(13, 4, "loc_0")]
    /* 00000C2C: */    addi r3,r3,0xEC
    /* 00000C30: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getReturnStatus")]
    /* 00000C34: */    cmpwi r3,0x15
    /* 00000C38: */    bne- loc_C44
    /* 00000C3C: */    li r24,-0x0
    /* 00000C40: */    b loc_C58
loc_C44:
    /* 00000C44: */    addi r3,r23,0xEC
    /* 00000C48: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getBuffer")]
    /* 00000C4C: */    mr r24,r3
    /* 00000C50: */    addi r3,r23,0xEC
    /* 00000C54: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__release")]
loc_C58:
    /* 00000C58: */    cmpwi r24,-0x0
    /* 00000C5C: */    beq- loc_C6C
    /* 00000C60: */    stw r24,0x14(r1)
    /* 00000C64: */    addi r3,r1,0x14
    /* 00000C68: */    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d7ResFileFv__Init")]
loc_C6C:
    /* 00000C6C: */    lwz r0,0x14(r1)
    /* 00000C70: */    mr r3,r23
    /* 00000C74: */    addi r4,r30,0x28
    /* 00000C78: */    addi r6,r23,0x44
    /* 00000C7C: */    stw r0,0x44(r23)
    /* 00000C80: */    li r5,0x4
    /* 00000C84: */    bl muIntroTask__getEnemyResFileName
    /* 00000C88: */    li r3,0x2A
    /* 00000C8C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfHeapManager__getMEMAllocator")]
    /* 00000C90: */    lwz r6,0x68(r23)
    /* 00000C94: */    li r4,-0x0
    /* 00000C98: */    li r5,0xD
    /* 00000C9C: */    lwz r6,0x10(r6)
    /* 00000CA0: */    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d12ScnMdlExpandFP12MEMAlloc__Construct")]
    /* 00000CA4: */    lwz r0,0xB0(r23)
    /* 00000CA8: */    stw r3,0xA8(r23)
    /* 00000CAC: */    cmpwi r0,0x1
    /* 00000CB0: */    bne- loc_E88
    /* 00000CB4: */    li r24,0xB
    /* 00000CB8: */    beq- loc_CD4
    /* 00000CBC: */    bge- loc_CDC
    /* 00000CC0: */    cmpwi r0,-0x0
    /* 00000CC4: */    bge- loc_CCC
    /* 00000CC8: */    b loc_CDC
loc_CCC:
    /* 00000CCC: */    lwz r8,0xBC(r23)
    /* 00000CD0: */    b loc_CE0
loc_CD4:
    /* 00000CD4: */    li r8,-0x0
    /* 00000CD8: */    b loc_CE0
loc_CDC:
    /* 00000CDC: */    li r8,0x4
loc_CE0:
    /* 00000CE0: */    lwz r7,0xB8(r23)
    /* 00000CE4: */    mr r3,r23
    /* 00000CE8: */    addi r4,r1,0x60
    /* 00000CEC: */    addi r5,r1,0x40
    /* 00000CF0: */    addi r6,r1,0x20
    /* 00000CF4: */    bl loc_134C
    /* 00000CF8: */    li r0,-0x0
    /* 00000CFC: */    addi r3,r23,0xF0
    /* 00000D00: */    stw r0,0x10(r1)
    /* 00000D04: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getReturnStatus")]
    /* 00000D08: */    cmpwi r3,0x15
    /* 00000D0C: */    bne- loc_D18
    /* 00000D10: */    li r25,-0x0
    /* 00000D14: */    b loc_D2C
loc_D18:
    /* 00000D18: */    addi r3,r23,0xF0
    /* 00000D1C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getBuffer")]
    /* 00000D20: */    mr r25,r3
    /* 00000D24: */    addi r3,r23,0xF0
    /* 00000D28: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__release")]
loc_D2C:
    /* 00000D2C: */    cmpwi r25,-0x0
    /* 00000D30: */    beq- loc_D40
    /* 00000D34: */    stw r25,0x10(r1)
    /* 00000D38: */    addi r3,r1,0x10
    /* 00000D3C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d7ResFileFv__Init")]
loc_D40:
    /* 00000D40: */    lwz r0,0x10(r1)
    /* 00000D44: */    mr r22,r23
    /* 00000D48: */    li r21,-0x0
    /* 00000D4C: */    stw r0,0x48(r23)
loc_D50:
    /* 00000D50: */    addi r3,r23,0x48
    /* 00000D54: */    subfic r4,r21,0x1C
    /* 00000D58: */    li r5,-0x0
    /* 00000D5C: */    li r6,-0x0
    /* 00000D60: */    li r7,0x2A
    /* 00000D64: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__create1")]
    /* 00000D68: */    mr r25,r3
    /* 00000D6C: */    addi r4,r1,0x40
    /* 00000D70: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeNodeAnimN")]
    /* 00000D74: */    lwz r3,0x14(r25)
    /* 00000D78: */    lfs f1,0x48(r30)
    /* 00000D7C: */    lwz r3,0xC(r3)
    /* 00000D80: */    lwz r12,-0x0(r3)
    /* 00000D84: */    lwz r12,0x28(r12)
    /* 00000D88: */    mtctr r12
    /* 00000D8C: */    bctrl
    /* 00000D90: */    mr r3,r25
    /* 00000D94: */    addi r4,r1,0x40
    /* 00000D98: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeClrAnimN")]
    /* 00000D9C: */    lwz r3,0x14(r25)
    /* 00000DA0: */    cmpwi r21,-0x0
    /* 00000DA4: */    lwz r3,0x18(r3)
    /* 00000DA8: */    bne- loc_DB4
    /* 00000DAC: */    lfs f1,0x48(r30)
    /* 00000DB0: */    b loc_DB8
loc_DB4:
    /* 00000DB4: */    lfs f1,0x4C(r30)
loc_DB8:
    /* 00000DB8: */    lwz r12,-0x0(r3)
    /* 00000DBC: */    lwz r12,0x28(r12)
    /* 00000DC0: */    mtctr r12
    /* 00000DC4: */    bctrl
    /* 00000DC8: */    mr r3,r25
    /* 00000DCC: */    addi r4,r1,0x20
    /* 00000DD0: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeVisAnimN")]
    /* 00000DD4: */    lwz r0,0xB0(r23)
    /* 00000DD8: */    cmpwi r0,0x1
    /* 00000DDC: */    bne- loc_DE8
    /* 00000DE0: */    lfs f1,0x50(r30)
    /* 00000DE4: */    b loc_E4C
loc_DE8:
    /* 00000DE8: */    cmpwi r0,0x2
    /* 00000DEC: */    blt- loc_DF8
    /* 00000DF0: */    li r0,-0x1
    /* 00000DF4: */    b loc_DFC
loc_DF8:
    /* 00000DF8: */    lwz r0,0xB4(r23)
loc_DFC:
    /* 00000DFC: */    cmpwi r0,0x2
    /* 00000E00: */    beq- loc_E28
    /* 00000E04: */    bge- loc_E14
    /* 00000E08: */    cmpwi r0,0x1
    /* 00000E0C: */    bge- loc_E20
    /* 00000E10: */    b loc_E48
loc_E14:
    /* 00000E14: */    cmpwi r0,0x4
    /* 00000E18: */    bge- loc_E48
    /* 00000E1C: */    b loc_E40
loc_E20:
    /* 00000E20: */    lfs f1,0x4C(r30)
    /* 00000E24: */    b loc_E4C
loc_E28:
    /* 00000E28: */    cmpwi r21,-0x0
    /* 00000E2C: */    bne- loc_E38
    /* 00000E30: */    lfs f1,0x48(r30)
    /* 00000E34: */    b loc_E4C
loc_E38:
    /* 00000E38: */    lfs f1,0x54(r30)
    /* 00000E3C: */    b loc_E4C
loc_E40:
    /* 00000E40: */    lfs f1,0x58(r30)
    /* 00000E44: */    b loc_E4C
loc_E48:
    /* 00000E48: */    lfs f1,0x50(r30)
loc_E4C:
    /* 00000E4C: */    mr r3,r25
    /* 00000E50: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__setFrameVisible")]
    /* 00000E54: */    lwz r3,0x14(r25)
    /* 00000E58: */    lfs f1,0x4C(r30)
    /* 00000E5C: */    lwz r3,0x8(r3)
    /* 00000E60: */    lwz r12,-0x0(r3)
    /* 00000E64: */    lwz r12,0x28(r12)
    /* 00000E68: */    mtctr r12
    /* 00000E6C: */    bctrl
    /* 00000E70: */    addi r21,r21,0x1
    /* 00000E74: */    stw r25,0x70(r22)
    /* 00000E78: */    cmpwi r21,0xB
    /* 00000E7C: */    addi r22,r22,0x4
    /* 00000E80: */    blt+ loc_D50
    /* 00000E84: */    b loc_10B4
loc_E88:
    /* 00000E88: */    cmpwi r0,0x2
    /* 00000E8C: */    blt- loc_E98
    /* 00000E90: */    li r24,-0x1
    /* 00000E94: */    b loc_E9C
loc_E98:
    /* 00000E98: */    lwz r24,0xB4(r23)
loc_E9C:
    /* 00000E9C: */    mr r26,r23
    /* 00000EA0: */    mr r27,r23
    /* 00000EA4: */    addi r28,r23,0x48
    /* 00000EA8: */    li r25,-0x0
    /* 00000EAC: */    li r31,-0x0
    /* 00000EB0: */    b loc_10AC
loc_EB4:
    /* 00000EB4: */    addi r0,r25,0x2
    /* 00000EB8: */    stw r31,0xC(r1)
    /* 00000EBC: */    rlwinm r0,r0,2,0,29
    /* 00000EC0: */    add r3,r23,r0
    /* 00000EC4: */    addi r22,r3,0xE8
    /* 00000EC8: */    mr r3,r22
    /* 00000ECC: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getReturnStatus")]
    /* 00000ED0: */    cmpwi r3,0x15
    /* 00000ED4: */    bne- loc_EE0
    /* 00000ED8: */    li r29,-0x0
    /* 00000EDC: */    b loc_EF4
loc_EE0:
    /* 00000EE0: */    mr r3,r22
    /* 00000EE4: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getBuffer")]
    /* 00000EE8: */    mr r29,r3
    /* 00000EEC: */    mr r3,r22
    /* 00000EF0: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__release")]
loc_EF4:
    /* 00000EF4: */    cmpwi r29,-0x0
    /* 00000EF8: */    beq- loc_F08
    /* 00000EFC: */    stw r29,0xC(r1)
    /* 00000F00: */    addi r3,r1,0xC
    /* 00000F04: */    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d7ResFileFv__Init")]
loc_F08:
    /* 00000F08: */    lwz r0,0xC(r1)
    /* 00000F0C: */    cmpwi r25,-0x0
    /* 00000F10: */    stw r0,0x48(r26)
    /* 00000F14: */    bge- loc_F40
    /* 00000F18: */    lwz r0,0xB0(r23)
    /* 00000F1C: */    cmpwi r0,0x2
    /* 00000F20: */    blt- loc_F2C
    /* 00000F24: */    li r0,-0x1
    /* 00000F28: */    b loc_F30
loc_F2C:
    /* 00000F2C: */    lwz r0,0xB4(r23)
loc_F30:
    /* 00000F30: */    cmpw r25,r0
    /* 00000F34: */    blt- loc_F40
    /* 00000F38: */    li r8,0x4
    /* 00000F3C: */    b loc_F70
loc_F40:
    /* 00000F40: */    lwz r0,0xB0(r23)
    /* 00000F44: */    cmpwi r0,0x1
    /* 00000F48: */    beq- loc_F64
    /* 00000F4C: */    bge- loc_F6C
    /* 00000F50: */    cmpwi r0,-0x0
    /* 00000F54: */    bge- loc_F5C
    /* 00000F58: */    b loc_F6C
loc_F5C:
    /* 00000F5C: */    lwz r8,0xBC(r27)
    /* 00000F60: */    b loc_F70
loc_F64:
    /* 00000F64: */    li r8,-0x0
    /* 00000F68: */    b loc_F70
loc_F6C:
    /* 00000F6C: */    li r8,0x4
loc_F70:
    /* 00000F70: */    lwz r7,0xB8(r27)
    /* 00000F74: */    mr r3,r23
    /* 00000F78: */    addi r4,r1,0x60
    /* 00000F7C: */    addi r5,r1,0x40
    /* 00000F80: */    addi r6,r1,0x20
    /* 00000F84: */    bl loc_134C
    /* 00000F88: */    mr r3,r28
    /* 00000F8C: */    subfic r4,r25,0x1C
    /* 00000F90: */    li r5,-0x0
    /* 00000F94: */    li r6,-0x0
    /* 00000F98: */    li r7,0x2A
    /* 00000F9C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__create1")]
    /* 00000FA0: */    mr r21,r3
    /* 00000FA4: */    addi r4,r1,0x40
    /* 00000FA8: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeNodeAnimN")]
    /* 00000FAC: */    lwz r3,0x14(r21)
    /* 00000FB0: */    lfs f1,0x48(r30)
    /* 00000FB4: */    lwz r3,0xC(r3)
    /* 00000FB8: */    lwz r12,-0x0(r3)
    /* 00000FBC: */    lwz r12,0x28(r12)
    /* 00000FC0: */    mtctr r12
    /* 00000FC4: */    bctrl
    /* 00000FC8: */    mr r3,r21
    /* 00000FCC: */    addi r4,r1,0x40
    /* 00000FD0: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeClrAnimN")]
    /* 00000FD4: */    lwz r3,0x14(r21)
    /* 00000FD8: */    lfs f1,0x48(r30)
    /* 00000FDC: */    lwz r3,0x18(r3)
    /* 00000FE0: */    lwz r12,-0x0(r3)
    /* 00000FE4: */    lwz r12,0x28(r12)
    /* 00000FE8: */    mtctr r12
    /* 00000FEC: */    bctrl
    /* 00000FF0: */    mr r3,r21
    /* 00000FF4: */    addi r4,r1,0x20
    /* 00000FF8: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeVisAnimN")]
    /* 00000FFC: */    lwz r0,0xB0(r23)
    /* 00001000: */    cmpwi r0,0x1
    /* 00001004: */    bne- loc_1010
    /* 00001008: */    lfs f1,0x50(r30)
    /* 0000100C: */    b loc_1074
loc_1010:
    /* 00001010: */    cmpwi r0,0x2
    /* 00001014: */    blt- loc_1020
    /* 00001018: */    li r0,-0x1
    /* 0000101C: */    b loc_1024
loc_1020:
    /* 00001020: */    lwz r0,0xB4(r23)
loc_1024:
    /* 00001024: */    cmpwi r0,0x2
    /* 00001028: */    beq- loc_1050
    /* 0000102C: */    bge- loc_103C
    /* 00001030: */    cmpwi r0,0x1
    /* 00001034: */    bge- loc_1048
    /* 00001038: */    b loc_1070
loc_103C:
    /* 0000103C: */    cmpwi r0,0x4
    /* 00001040: */    bge- loc_1070
    /* 00001044: */    b loc_1068
loc_1048:
    /* 00001048: */    lfs f1,0x4C(r30)
    /* 0000104C: */    b loc_1074
loc_1050:
    /* 00001050: */    cmpwi r25,-0x0
    /* 00001054: */    bne- loc_1060
    /* 00001058: */    lfs f1,0x48(r30)
    /* 0000105C: */    b loc_1074
loc_1060:
    /* 00001060: */    lfs f1,0x54(r30)
    /* 00001064: */    b loc_1074
loc_1068:
    /* 00001068: */    lfs f1,0x58(r30)
    /* 0000106C: */    b loc_1074
loc_1070:
    /* 00001070: */    lfs f1,0x50(r30)
loc_1074:
    /* 00001074: */    mr r3,r21
    /* 00001078: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__setFrameVisible")]
    /* 0000107C: */    lwz r3,0x14(r21)
    /* 00001080: */    lfs f1,0x4C(r30)
    /* 00001084: */    lwz r3,0x8(r3)
    /* 00001088: */    lwz r12,-0x0(r3)
    /* 0000108C: */    lwz r12,0x28(r12)
    /* 00001090: */    mtctr r12
    /* 00001094: */    bctrl
    /* 00001098: */    stw r21,0x70(r26)
    /* 0000109C: */    addi r26,r26,0x4
    /* 000010A0: */    addi r27,r27,0x8
    /* 000010A4: */    addi r28,r28,0x4
    /* 000010A8: */    addi r25,r25,0x1
loc_10AC:
    /* 000010AC: */    cmpw r25,r24
    /* 000010B0: */    blt+ loc_EB4
loc_10B4:
    /* 000010B4: */    lwz r0,0xB0(r23)
    /* 000010B8: */    cmpwi r0,0x2
    /* 000010BC: */    blt- loc_10C8
    /* 000010C0: */    li r29,-0x1
    /* 000010C4: */    b loc_10CC
loc_10C8:
    /* 000010C8: */    lwz r29,0xD0(r23)
loc_10CC:
    /* 000010CC: */    mr r28,r23
    /* 000010D0: */    mr r27,r23
    /* 000010D4: */    addi r26,r23,0x54
    /* 000010D8: */    li r25,-0x0
    /* 000010DC: */    li r31,-0x0
    /* 000010E0: */    b loc_125C
loc_10E4:
    /* 000010E4: */    addi r0,r25,0x6
    /* 000010E8: */    stw r31,0x8(r1)
    /* 000010EC: */    rlwinm r0,r0,2,0,29
    /* 000010F0: */    add r3,r23,r0
    /* 000010F4: */    addi r21,r3,0xE8
    /* 000010F8: */    mr r3,r21
    /* 000010FC: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getReturnStatus")]
    /* 00001100: */    cmpwi r3,0x15
    /* 00001104: */    bne- loc_1110
    /* 00001108: */    li r22,-0x0
    /* 0000110C: */    b loc_1124
loc_1110:
    /* 00001110: */    mr r3,r21
    /* 00001114: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getBuffer")]
    /* 00001118: */    mr r22,r3
    /* 0000111C: */    mr r3,r21
    /* 00001120: */    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__release")]
loc_1124:
    /* 00001124: */    cmpwi r22,-0x0
    /* 00001128: */    beq- loc_1138
    /* 0000112C: */    stw r22,0x8(r1)
    /* 00001130: */    addi r3,r1,0x8
    /* 00001134: */    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d7ResFileFv__Init")]
loc_1138:
    /* 00001138: */    lwz r0,0x8(r1)
    /* 0000113C: */    cmpwi r25,-0x0
    /* 00001140: */    stw r0,0x54(r28)
    /* 00001144: */    bge- loc_1170
    /* 00001148: */    lwz r0,0xB0(r23)
    /* 0000114C: */    cmpwi r0,0x2
    /* 00001150: */    blt- loc_115C
    /* 00001154: */    li r0,-0x1
    /* 00001158: */    b loc_1160
loc_115C:
    /* 0000115C: */    lwz r0,0xD0(r23)
loc_1160:
    /* 00001160: */    cmpw r25,r0
    /* 00001164: */    blt- loc_1170
    /* 00001168: */    li r8,0x4
    /* 0000116C: */    b loc_1194
loc_1170:
    /* 00001170: */    lwz r0,0xB0(r23)
    /* 00001174: */    cmpwi r0,0x2
    /* 00001178: */    bge- loc_1190
    /* 0000117C: */    cmpwi r0,-0x0
    /* 00001180: */    bge- loc_1188
    /* 00001184: */    b loc_1190
loc_1188:
    /* 00001188: */    lwz r8,0xD8(r27)
    /* 0000118C: */    b loc_1194
loc_1190:
    /* 00001190: */    li r8,0x4
loc_1194:
    /* 00001194: */    lwz r7,0xD4(r27)
    /* 00001198: */    mr r3,r23
    /* 0000119C: */    addi r4,r1,0x60
    /* 000011A0: */    addi r5,r1,0x40
    /* 000011A4: */    addi r6,r1,0x20
    /* 000011A8: */    bl loc_134C
    /* 000011AC: */    mr r3,r26
    /* 000011B0: */    subfic r4,r25,0x1E
    /* 000011B4: */    li r5,-0x0
    /* 000011B8: */    li r6,-0x0
    /* 000011BC: */    li r7,0x2A
    /* 000011C0: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__create1")]
    /* 000011C4: */    mr r21,r3
    /* 000011C8: */    addi r4,r1,0x40
    /* 000011CC: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeNodeAnimN")]
    /* 000011D0: */    lwz r3,0x14(r21)
    /* 000011D4: */    lfs f1,0x48(r30)
    /* 000011D8: */    lwz r3,0xC(r3)
    /* 000011DC: */    lwz r12,-0x0(r3)
    /* 000011E0: */    lwz r12,0x28(r12)
    /* 000011E4: */    mtctr r12
    /* 000011E8: */    bctrl
    /* 000011EC: */    mr r3,r21
    /* 000011F0: */    addi r4,r1,0x40
    /* 000011F4: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeClrAnimN")]
    /* 000011F8: */    lwz r3,0x14(r21)
    /* 000011FC: */    lfs f1,0x48(r30)
    /* 00001200: */    lwz r3,0x18(r3)
    /* 00001204: */    lwz r12,-0x0(r3)
    /* 00001208: */    lwz r12,0x28(r12)
    /* 0000120C: */    mtctr r12
    /* 00001210: */    bctrl
    /* 00001214: */    mr r3,r21
    /* 00001218: */    addi r4,r1,0x20
    /* 0000121C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeVisAnimN")]
    /* 00001220: */    lfs f1,0x5C(r30)
    /* 00001224: */    mr r3,r21
    /* 00001228: */    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__setFrameVisible")]
    /* 0000122C: */    lwz r3,0x14(r21)
    /* 00001230: */    lfs f1,0x4C(r30)
    /* 00001234: */    lwz r3,0x8(r3)
    /* 00001238: */    lwz r12,-0x0(r3)
    /* 0000123C: */    lwz r12,0x28(r12)
    /* 00001240: */    mtctr r12
    /* 00001244: */    bctrl
    /* 00001248: */    stw r21,0xA0(r28)
    /* 0000124C: */    addi r28,r28,0x4
    /* 00001250: */    addi r27,r27,0x8
    /* 00001254: */    addi r26,r26,0x4
    /* 00001258: */    addi r25,r25,0x1
loc_125C:
    /* 0000125C: */    cmpw r25,r29
    /* 00001260: */    blt+ loc_10E4
    /* 00001264: */    cmpwi r24,0x2
    /* 00001268: */    beq- loc_1290
    /* 0000126C: */    bge- loc_127C
    /* 00001270: */    cmpwi r24,0x1
    /* 00001274: */    bge- loc_1288
    /* 00001278: */    b loc_12A0
loc_127C:
    /* 0000127C: */    cmpwi r24,0x4
    /* 00001280: */    bge- loc_12A0
    /* 00001284: */    b loc_1298
loc_1288:
    /* 00001288: */    li r26,-0x0
    /* 0000128C: */    b loc_12A4
loc_1290:
    /* 00001290: */    li r26,0x1
    /* 00001294: */    b loc_12A4
loc_1298:
    /* 00001298: */    li r26,0x3
    /* 0000129C: */    b loc_12A4
loc_12A0:
    /* 000012A0: */    li r26,0xA
loc_12A4:
    /* 000012A4: */    mr r22,r23
    /* 000012A8: */    li r21,-0x0
    /* 000012AC: */    lis r25,-0x0                             [R_PPC_ADDR16_HA(13, 5, "loc_E0")]
    /* 000012B0: */    b loc_12E4
loc_12B4:
    /* 000012B4: */    addi r3,r1,0x18
    /* 000012B8: */    addi r4,r25,-0x0                         [R_PPC_ADDR16_LO(13, 5, "loc_E0")]
    /* 000012BC: */    add r5,r21,r26
    /* 000012C0: */    crclr 6
    /* 000012C4: */    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    /* 000012C8: */    lwz r4,0x70(r22)
    /* 000012CC: */    addi r5,r1,0x18
    /* 000012D0: */    lwz r3,0xA8(r23)
    /* 000012D4: */    lwz r4,0x10(r4)
    /* 000012D8: */    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d12ScnMdlExpandFPQ34nw4r3g3__PushBack1")]
    /* 000012DC: */    addi r22,r22,0x4
    /* 000012E0: */    addi r21,r21,0x1
loc_12E4:
    /* 000012E4: */    cmpw r21,r24
    /* 000012E8: */    blt+ loc_12B4
    /* 000012EC: */    mr r22,r23
    /* 000012F0: */    li r21,-0x0
    /* 000012F4: */    lis r24,-0x0                             [R_PPC_ADDR16_HA(13, 5, "loc_E0")]
    /* 000012F8: */    b loc_132C
loc_12FC:
    /* 000012FC: */    addi r3,r1,0x18
    /* 00001300: */    addi r4,r24,-0x0                         [R_PPC_ADDR16_LO(13, 5, "loc_E0")]
    /* 00001304: */    addi r5,r21,0x1E
    /* 00001308: */    crclr 6
    /* 0000130C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    /* 00001310: */    lwz r4,0xA0(r22)
    /* 00001314: */    addi r5,r1,0x18
    /* 00001318: */    lwz r3,0xA8(r23)
    /* 0000131C: */    lwz r4,0x10(r4)
    /* 00001320: */    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d12ScnMdlExpandFPQ34nw4r3g3__PushBack1")]
    /* 00001324: */    addi r22,r22,0x4
    /* 00001328: */    addi r21,r21,0x1
loc_132C:
    /* 0000132C: */    cmpw r21,r29
    /* 00001330: */    blt+ loc_12FC
    /* 00001334: */    addi r11,r1,0xD0
    /* 00001338: */    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___restgpr_21")]
    /* 0000133C: */    lwz r0,0xD4(r1)
    /* 00001340: */    mtlr r0
    /* 00001344: */    addi r1,r1,0xD0
    /* 00001348: */    blr
loc_134C:
    /* 0000134C: */    stwu r1,-0x30(r1)
    /* 00001350: */    mflr r0
    /* 00001354: */    stw r0,0x34(r1)
    /* 00001358: */    addi r11,r1,0x30
    /* 0000135C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___savegpr_24")]
    /* 00001360: */    lis r31,-0x0                             [R_PPC_ADDR16_HA(13, 5, "loc_0")]
    /* 00001364: */    cmpwi r8,0x2
    /* 00001368: */    addi r31,r31,-0x0                        [R_PPC_ADDR16_LO(13, 5, "loc_0")]
    /* 0000136C: */    mr r24,r4
    /* 00001370: */    mr r25,r5
    /* 00001374: */    mr r26,r6
    /* 00001378: */    addi r30,r31,0xE8
    /* 0000137C: */    addi r29,r31,0xEC
    /* 00001380: */    beq- loc_13B4
    /* 00001384: */    bge- loc_1398
    /* 00001388: */    cmpwi r8,-0x0
    /* 0000138C: */    beq- loc_13A4
    /* 00001390: */    bge- loc_13AC
    /* 00001394: */    b loc_13C0
loc_1398:
    /* 00001398: */    cmpwi r8,0x4
    /* 0000139C: */    bge- loc_13C0
    /* 000013A0: */    b loc_13BC
loc_13A4:
    /* 000013A4: */    li r28,-0x0
    /* 000013A8: */    b loc_13C0
loc_13AC:
    /* 000013AC: */    li r28,-0x0
    /* 000013B0: */    b loc_13C0
loc_13B4:
    /* 000013B4: */    li r28,0x1
    /* 000013B8: */    b loc_13C0
loc_13BC:
    /* 000013BC: */    li r28,0x2
loc_13C0:
    /* 000013C0: */    mr r3,r7
    /* 000013C4: */    bl __unresolved                          [R_PPC_REL24(0, 4, "loc_800AF600")]
    /* 000013C8: */    addi r27,r3,0x1
    /* 000013CC: */    mr r3,r24
    /* 000013D0: */    mr r5,r30
    /* 000013D4: */    addi r4,r31,0xF0
    /* 000013D8: */    mr r6,r27
    /* 000013DC: */    crclr 6
    /* 000013E0: */    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    /* 000013E4: */    mr r3,r25
    /* 000013E8: */    mr r5,r29
    /* 000013EC: */    mr r6,r27
    /* 000013F0: */    mr r7,r28
    /* 000013F4: */    addi r4,r31,0x110
    /* 000013F8: */    crclr 6
    /* 000013FC: */    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    /* 00001400: */    mr r3,r26
    /* 00001404: */    mr r5,r29
    /* 00001408: */    mr r6,r27
    /* 0000140C: */    addi r4,r31,0x130
    /* 00001410: */    crclr 6
    /* 00001414: */    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    /* 00001418: */    addi r11,r1,0x30
    /* 0000141C: */    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___restgpr_24")]
    /* 00001420: */    lwz r0,0x34(r1)
    /* 00001424: */    mtlr r0
    /* 00001428: */    addi r1,r1,0x30
    /* 0000142C: */    blr
