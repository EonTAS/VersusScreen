.set sceneStageNum, 0x35C
.set sceneMode, 0x360
.set sceneOpponentCount, 0x364
.set sceneEnemyOneChar, 0x368
.set sceneEnemyOneType, 0x36C
.set sceneEnemyTwoChar, 0x370
.set sceneEnemyTwoType, 0x374
.set sceneEnemyThreeChar, 0x378
.set sceneEnemyThreeType, 0x37C
.set sceneAllyCount, 0x380
.set sceneAllyOneChar, 0x384
.set sceneAllyOneType, 0x388
.set sceneAllyTwoChar, 0x38C
.set sceneAllyTwoType, 0x390

.set heapSetupTableOffset, 0xAC
.set heapStageNum, heapSetupTableOffset
.set heapMode, heapSetupTableOffset+0x4
.set    modeEnumStandard, 0x0
.set    modeEnumTeam, 0x1
.set    modeEnumBTT, 0x2


.set heapEnemyCount, heapEnemyTable-0x4
.set heapEnemyTable, heapSetupTableOffset+0xC
.set heapEnemyChar, heapEnemyTable
.set heapEnemyType, heapEnemyTable+0x4
.set heapEnemyTableLength, 3

.set heapEnemyOneChar, heapEnemyTable+0x0
.set heapEnemyOneType, heapEnemyTable+0x4
.set heapEnemyTwoChar, heapEnemyTable+0x8
.set heapEnemyTwoType, heapEnemyTable+0xC
.set heapEnemyThreeChar, heapEnemyTable+0x10
.set heapEnemyThreeType, heapEnemyTable+0x14

.set heapAllyCount, heapAllyTable-0x4
.set heapAllyTable, heapSetupTableOffset+0x28
.set heapAllyOneChar, heapAllyTable+0x0
.set heapAllyOneType, heapAllyTable+0x4
.set heapAllyTwoChar, heapAllyTable+0x8
.set heapAllyTwoType, heapAllyTable+0xC
.set heapAllyTableLength, 2

.set heapEnemyChar, heapEnemyOneChar
.set heapEnemyType, heapEnemyOneType
.set heapAllyChar, heapAllyOneChar
.set heapAllyType, heapAllyOneType

.set    fighterTypeEnumStandard, 0x0
.set    fighterTypeEnumDouble, 0x1
.set    fighterTypeEnumGiant, 0x2
.set    fighterTypeEnumMetal, 0x3

.set heapVoiceScriptCount, 0x18C
.set heapVoiceScriptCurrent, 0x190
.set heapVoiceTimeIntoCurrent, 0x194

.set heapVoiceScript, 0x10C
.set heapVoiceSFXID, heapVoiceScript+0x0
.set heapVoiceSFXLength, heapVoiceScript+0x4

muIntroTask__create:
    stwu r1,-0x50(r1)
    mflr r0
    li r3,0x198
    li r4,0x2A
    stw r0,0x54(r1)
    stw r31,0x4C(r1)
    bl __unresolved                          [R_PPC_REL24(0, 4, "srHeapType____nw")]
    cmpwi r3,0x0
    mr r31,r3
    beq- loc_30
    bl muIntroTask____ct
    mr r31,r3
loc_30:
    mr r3,r31
    bl muIntroTask__copyIntroSceneData
    lis r4,0x0                               [R_PPC_ADDR16_HA(13, 5, "commonBrresString")]
    addi r3,r31,0xE8
    addi r4,r4,0x0                           [R_PPC_ADDR16_LO(13, 5, "commonBrresString")]
    li r5,0x2B
    li r6,0x0
    li r7,0x0
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__readRequest")]
    lwz r3,heapMode(r31)
    cmpwi r3,modeEnumBTT
    bge- loc_7C
    mr r3,r31
    bl muIntroTask__loadFiles
    b loc_AC
loc_7C:
    lis r4,0x0                               [R_PPC_ADDR16_HA(13, 5, "miniBrresString")]
    addi r3,r1,0x8
    addi r4,r4,0x0                           [R_PPC_ADDR16_LO(13, 5, "miniBrresString")]
    addi r5,r5,0x1
    crclr 6
    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    addi r3,r31,0xFC
    addi r4,r1,0x8
    li r5,0x2A
    li r6,0x0
    li r7,0x0
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__readRequest")]
loc_AC:
    bl __unresolved                          [R_PPC_REL24(0, 4, "muMenu__loadMenuSound")]
    li r0,0x0
    mr r3,r31
    stb r0,0x108(r31)
    stw r0,0xE4(r31)
    bl muIntroTask__makeSoundScript
    mr r3,r31
    lwz r31,0x4C(r1)
    lwz r0,0x54(r1)
    mtlr r0
    addi r1,r1,0x50
    blr

muIntroTask____ct:
    stwu r1,-0x10(r1)
    mflr r0
    lis r4,0x0                               [R_PPC_ADDR16_HA(13, 5, "introString")]
    li r5,0x8
    stw r0,0x14(r1)
    addi r4,r4,0x0                           [R_PPC_ADDR16_LO(13, 5, "introString")]
    li r6,0xF
    li r7,0x8
    stw r31,0xC(r1)
    mr r31,r3
    li r8,0x1
    stw r30,0x8(r1)
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfTask____ct")]
    lis r4,0x0                               [R_PPC_ADDR16_HA(13, 5, "muIntroTaskObj")]
    addi r5,r31,0x4C
    li r0,0x0
    addi r3,r31,0x54
    addi r4,r4,0x0                           [R_PPC_ADDR16_LO(13, 5, "muIntroTaskObj")]
    stw r0,0x40(r31)
    cmplw r5,r3
    stw r4,0x3C(r31)
    stw r0,0x44(r31)
    stw r0,0x48(r31)
    bge- loc_23C
    addi r6,r31,0x4C
    addi r4,r31,0x34
    sub r7,r3,r6
    addi r8,r7,0x3
    srawi r0,r8,2
    addze r9,r0
    addi r10,r9,0x1
    cmpwi r10,0x8
    ble- loc_210
    cmplw r6,r3
    li r3,0x0
    li r6,0x0
    bgt- loc_194
    rlwinm. r0,r7,0,0,0
    li r7,0x1
    bne- loc_188
    rlwinm. r0,r8,0,0,0
    beq- loc_188
    li r7,0x0
loc_188:
    cmpwi r7,0x0
    beq- loc_194
    li r6,0x1
loc_194:
    cmpwi r6,0x0
    beq- loc_1C4
    rlwinm. r7,r9,0,0,0
    li r6,0x1
    bne- loc_1B8
    rlwinm r0,r10,0,0,0
    cmpw r7,r0
    beq- loc_1B8
    li r6,0x0
loc_1B8:
    cmpwi r6,0x0
    beq- loc_1C4
    li r3,0x1
loc_1C4:
    cmpwi r3,0x0
    beq- loc_210
    addi r0,r4,0x1F
    li r3,0x0
    sub r0,r0,r5
    rlwinm r0,r0,27,5,31
    mtctr r0
    cmplw r5,r4
    bge- loc_210
loc_1E8:
    stw r3,0x0(r5)
    stw r3,0x4(r5)
    stw r3,0x8(r5)
    stw r3,0xC(r5)
    stw r3,0x10(r5)
    stw r3,0x14(r5)
    stw r3,0x18(r5)
    stw r3,0x1C(r5)
    addi r5,r5,0x20
    bdnz+ loc_1E8
loc_210:
    addi r3,r31,0x54
    li r4,0x0
    addi r0,r3,0x3
    sub r0,r0,r5
    rlwinm r0,r0,30,2,31
    mtctr r0
    cmplw r5,r3
    bge- loc_23C
loc_230:
    stw r4,0x0(r5)
    addi r5,r5,0x4
    bdnz+ loc_230
loc_23C:
    addi r5,r31,0x58
    addi r3,r31,0x5C
    li r0,0x0
    cmplw r5,r3
    stw r0,0x54(r31)
    bge- loc_354
    addi r6,r31,0x58
    addi r4,r31,0x3C
    sub r7,r3,r6
    addi r8,r7,0x3
    srawi r0,r8,2
    addze r9,r0
    addi r10,r9,0x1
    cmpwi r10,0x8
    ble- loc_328
    cmplw r6,r3
    li r3,0x0
    li r6,0x0
    bgt- loc_2AC
    rlwinm. r0,r7,0,0,0
    li r7,0x1
    bne- loc_2A0
    rlwinm. r0,r8,0,0,0
    beq- loc_2A0
    li r7,0x0
loc_2A0:
    cmpwi r7,0x0
    beq- loc_2AC
    li r6,0x1
loc_2AC:
    cmpwi r6,0x0
    beq- loc_2DC
    rlwinm. r7,r9,0,0,0
    li r6,0x1
    bne- loc_2D0
    rlwinm r0,r10,0,0,0
    cmpw r7,r0
    beq- loc_2D0
    li r6,0x0
loc_2D0:
    cmpwi r6,0x0
    beq- loc_2DC
    li r3,0x1
loc_2DC:
    cmpwi r3,0x0
    beq- loc_328
    addi r0,r4,0x1F
    li r3,0x0
    sub r0,r0,r5
    rlwinm r0,r0,27,5,31
    mtctr r0
    cmplw r5,r4
    bge- loc_328
loc_300:
    stw r3,0x0(r5)
    stw r3,0x4(r5)
    stw r3,0x8(r5)
    stw r3,0xC(r5)
    stw r3,0x10(r5)
    stw r3,0x14(r5)
    stw r3,0x18(r5)
    stw r3,0x1C(r5)
    addi r5,r5,0x20
    bdnz+ loc_300
loc_328:
    addi r3,r31,0x5C
    li r4,0x0
    addi r0,r3,0x3
    sub r0,r0,r5
    rlwinm r0,r0,30,2,31
    mtctr r0
    cmplw r5,r3
    bge- loc_354
loc_348:
    stw r4,0x0(r5)
    addi r5,r5,0x4
    bdnz+ loc_348
loc_354:
    li r30,0x0
    lis r4,0x0                               [R_PPC_ADDR16_HA(13, 1, "muFileIOHandle____ct")]
    lis r5,0x0                               [R_PPC_ADDR16_HA(13, 1, "muFileIOHandle____dt")]
    stw r30,0x5C(r31)
    addi r3,r31,0xE8
    addi r4,r4,0x0                           [R_PPC_ADDR16_LO(13, 1, "muFileIOHandle____ct")]
    stw r30,0xE4(r31)
    addi r5,r5,0x0                           [R_PPC_ADDR16_LO(13, 1, "muFileIOHandle____dt")]
    li r6,0x4
    li r7,0x8
    bl __unresolved                          [R_PPC_REL24(0, 4, "NMWException____construct_array")]
    lbz r0,0x2C(r31)
    stb r30,0x108(r31)
    rlwinm r0,r0,0,31,29
    #zero the voice system
    stw r30,heapVoiceScriptCount(r31)
    stw r30,heapVoiceScriptCurrent(r31)
    stw r30,heapVoiceTimeIntoCurrent(r31)

    stb r0,0x2C(r31)
    stw r30,0x40(r31)
    stw r30,0x44(r31)
    stw r30,0x48(r31)
    stw r30,0x4C(r31)
    stw r30,0x50(r31)
    stw r30,0x54(r31)
    stw r30,0x58(r31)
    stw r30,0x5C(r31)
    stw r30,0x60(r31)
    stw r30,0x64(r31)
    stw r30,0x68(r31)
    stw r30,0x6C(r31)
    stw r30,0x70(r31)
    stw r30,0x74(r31)
    stw r30,0x78(r31)
    stw r30,0x7C(r31)
    stw r30,0x80(r31)
    stw r30,0x84(r31)
    stw r30,0x88(r31)
    stw r30,0x8C(r31)
    stw r30,0x90(r31)
    stw r30,0x94(r31)
    stw r30,0x98(r31)
    stw r30,0x9C(r31)
    stw r30,0xA0(r31)
    stw r30,0xA4(r31)
    stw r30,0xA8(r31)

    #zero the heap table
    addi r3,r31,heapSetupTableOffset
    li r4,0x0
    li r5,0x38
    bl __unresolved                          [R_PPC_REL24(0, 1, "loc_8000443C")]
    #zero the voice script
    addi r3,r31,heapVoiceScript
    li r4,0x0
    li r5,0x80
    bl __unresolved                          [R_PPC_REL24(0, 1, "loc_8000443C")]
    mr r3,r31
    lwz r31,0xC(r1)
    lwz r30,0x8(r1)
    lwz r0,0x14(r1)
    mtlr r0
    addi r1,r1,0x10
    blr

muFileIOHandle____ct:
    li r0,0x0
    stw r0,0x0(r3)
    blr
muFileIOHandle____dt:
    stwu r1,-0x10(r1)
    mflr r0
    cmpwi r3,0x0
    stw r0,0x14(r1)
    stw r31,0xC(r1)
    mr r31,r4
    stw r30,0x8(r1)
    mr r30,r3
    beq- loc_48C
    li r4,0x0
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle____dt")]
    cmpwi r31,0x0
    ble- loc_48C
    mr r3,r30
    bl __unresolved                          [R_PPC_REL24(0, 4, "srcommon____dl")]
loc_48C:
    mr r3,r30
    lwz r31,0xC(r1)
    lwz r30,0x8(r1)
    lwz r0,0x14(r1)
    mtlr r0
    addi r1,r1,0x10
    blr

muIntroTask____dt:
    stwu r1,-0x20(r1)
    mflr r0
    cmpwi r3,0x0
    stw r0,0x24(r1)
    stw r31,0x1C(r1)
    stw r30,0x18(r1)
    stw r29,0x14(r1)
    mr r29,r4
    stw r28,0x10(r1)
    mr r28,r3
    beq- loc_5FC
    lis r4,0x0                               [R_PPC_ADDR16_HA(13, 5, "muIntroTaskObj")]
    addi r4,r4,0x0                           [R_PPC_ADDR16_LO(13, 5, "muIntroTaskObj")]
    stw r4,0x3C(r3)
    lwz r3,0xA8(r3)
    cmpwi r3,0x0
    beq- loc_4F0
    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d6G3dObjFv__Destroy")]
loc_4F0:
    mr r31,r28
    li r30,0x0
loc_4F8:
    lwz r3,0x60(r31)
    cmpwi r3,0x0
    beq- loc_518
    lwz r12,0x5C(r3)
    li r4,0x1
    lwz r12,0x8(r12)
    mtctr r12
    bctrl
loc_518:
    addi r30,r30,0x1
    addi r31,r31,0x4
    cmpwi r30,0x12
    blt+ loc_4F8
    lwz r3,0x40(r28)
    cmpwi r3,0x0
    beq- loc_538
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfHeapManager__free")]
loc_538:
    lwz r3,0x44(r28)
    cmpwi r3,0x0
    beq- loc_548
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfHeapManager__free")]
loc_548:
    mr r31,r28
    li r30,0x0
loc_550:
    lwz r3,0x48(r31)
    cmpwi r3,0x0
    beq- loc_560
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfHeapManager__free")]
loc_560:
    addi r30,r30,0x1
    addi r31,r31,0x4
    cmpwi r30,0x3
    blt+ loc_550
    mr r31,r28
    li r30,0x0
loc_578:
    lwz r3,0x54(r31)
    cmpwi r3,0x0
    beq- loc_588
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfHeapManager__free")]
loc_588:
    addi r30,r30,0x1
    addi r31,r31,0x4
    cmpwi r30,0x2
    blt+ loc_578
    lwz r3,0x5C(r28)
    cmpwi r3,0x0
    beq- loc_5A8
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfHeapManager__free")]
loc_5A8:
    addi r31,r28,0xE8
    li r30,0x0
loc_5B0:
    mr r3,r31
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__cancelRequest")]
    addi r30,r30,0x1
    addi r31,r31,0x4
    cmpwi r30,0x8
    blt+ loc_5B0
    lis r4,0x0                               [R_PPC_ADDR16_HA(13, 1, "muFileIOHandle____dt")]
    addi r3,r28,0xE8
    addi r4,r4,0x0                           [R_PPC_ADDR16_LO(13, 1, "muFileIOHandle____dt")]
    li r5,0x4
    li r6,0x8
    bl __unresolved                          [R_PPC_REL24(0, 4, "NMWException____destroy_arr")]
    mr r3,r28
    li r4,0x0
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfTask____dt")]
    cmpwi r29,0x0
    ble- loc_5FC
    mr r3,r28
    bl __unresolved                          [R_PPC_REL24(0, 4, "srcommon____dl")]
loc_5FC:
    lwz r31,0x1C(r1)
    mr r3,r28
    lwz r30,0x18(r1)
    lwz r29,0x14(r1)
    lwz r28,0x10(r1)
    lwz r0,0x24(r1)
    mtlr r0
    addi r1,r1,0x20
    blr

muIntroTask__makeSoundScript:
    stwu r1,-0x40(r1)
    mflr r0
    stw r0,0x44(r1)
    addi r11,r1,0x40
    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___savegpr_21")]
    mr r23,r3
    li r0,-0x1
    
    lwz r4,heapMode(r3)
    cmpwi r4,modeEnumBTT
    bge- BTTVoices
VersusVoices:
    lwz r5,heapVoiceScriptCount(r3)
    addi r0,r5,0x1
    stw r0,heapVoiceScriptCount(r3)
    
    #Versus voice line
    li r4,0x203E #sfx id
    li r0,0x3C   #sound length

    rlwinm r5,r5,3,0,28
    add r5,r3,r5
    stw r4,heapVoiceSFXID(r5)
    stw r0,heapVoiceSFXLength(r5)

    lwz r5,heapMode(r3)
    cmpwi r5,modeEnumTeam
    bne- getEnemyCount
#inTeams
    lwz r5,heapVoiceScriptCount(r3)
    addi r5,r5,0x1
    stw r5,heapVoiceScriptCount(r3)

    rlwinm r0,r5,3,0,28
    add r5,r3,r0
    
    #Team voice line
    li r4,0x203C
    li r0,0x1E
    stw r4,heapVoiceSFXID(r5)
    stw r0,heapVoiceSFXLength(r5)

    li r24,0x1 #enemy count = 1
    b enemyLoop
getEnemyCount:
    lwz r24,heapEnemyCount(r3)
enemyLoop:
    lis r31,0x0                              [R_PPC_ADDR16_HA(13, 4, "fighterTypeSFXTable")]
    addi r31,r31,0x0                         [R_PPC_ADDR16_LO(13, 4, "fighterTypeSFXTable")]
#copy heap register
    mr r26,r23
#start by looking at first enemy ID
    li r25,0x0 
#"AND"
    li r29,0x203D
    li r30,0x2B

#empty space as a comma
    li r27,-0x1
    li r28,0xA

    lis r22,0x0                              [R_PPC_ADDR16_HA(0, 11, "loc_805A00E0")]
    b startEnemyLoop
enemyNameLoop:
    cmpwi r25,0x0
    ble- getEnemyPrefix #skip the "and" or spcae if first enemy

    subi r0,r24,0x1
    cmpw r25,r0
    bge- loc_728 #if at end of list, go say "AND"
#comma to seperate enemys a little
    lwz r3,heapVoiceScriptCount(r23)
    rlwinm r0,r3,3,0,28
    addi r3,r3,0x1
    stw r3,heapVoiceScriptCount(r23)

    add r3,r23,r0
    stw r27,heapVoiceSFXID(r3)
    stw r28,heapVoiceSFXLength(r3)
    b getEnemyPrefix
loc_728:
    lwz r3,heapVoiceScriptCount(r23)
    rlwinm r0,r3,3,0,28
    addi r3,r3,0x1
    stw r3,heapVoiceScriptCount(r23)
    add r3,r23,r0
    #AND
    stw r29,heapVoiceSFXID(r3)
    stw r30,heapVoiceSFXLength(r3)

getEnemyPrefix:
    lwz r0,heapEnemyCount(r23)
    cmpw r25,r0 #if past end of fighter list (shouldnt happen)
    bge- loc_79C
    lwz r0,heapMode(r23) #if not base mode, just say they are standard
    cmpwi r0,modeEnumStandard
    bne- loc_79C
    lwz r0,heapEnemyType(r26)
    b loc_7A8
loc_79C:
#Team X
    li r0,0x0
loc_7A8:
    #get voice line for the prefix (e.g. metal/giant)
    rlwinm r0,r0,3,0,28
    add r3,r31,r0 #fighterTypeSFXTable
    lwz r4,0x0(r3) #sfxID
    lwz r5,0x4(r3) #sfxLength
    addis r0,r4,0x1
    cmplwi r0,0xFFFF #if sfx id = -1 then dont add sound
    beq- getEnemyName
#Add Prefix to script
    lwz r3,heapVoiceScriptCount(r23)
    rlwinm r0,r3,3,0,28
    addi r3,r3,0x1
    stw r3,heapVoiceScriptCount(r23)

    add r3,r23,r0
    stw r4,heapVoiceSFXID(r3)
    stw r5,heapVoiceSFXLength(r3)

getEnemyName:
    lwz r3,heapEnemyChar(r26)
    bl __unresolved                          [R_PPC_REL24(0, 4, "muMenu__exchangeSelchkind2SelCharVoice")]
    addis r0,r3,0x1
    mr r21,r3
    cmplwi r0,0xFFFF #if sfx id = -1 then dont add sound
    beq- nextEnemy
    #is alt name? 
    lwz r3,0x0(r22)                         [R_PPC_ADDR16_LO(0, 11, "loc_805A00E0")]
    bl __unresolved                          [R_PPC_REL24(0, 4, "loc_8004D9DC")]
    cmpwi r3,0x0
    bne- loc_818
    lwz r3,heapEnemyChar(r26) 
    #exchangeSelchkind2SelCharNarrationSndID[0]
    bl __unresolved                          [R_PPC_REL24(0, 4, "loc_800AF8A0")]
    
    b loc_820
loc_818:
    lwz r3,heapEnemyChar(r26)
    #exchangeSelchkind2SelCharNarrationSndID[1]
    bl __unresolved                          [R_PPC_REL24(0, 4, "loc_800AF8B8")]
loc_820:
    lwz r5, heapVoiceScriptCount(r23)
    rlwinm r0,r5,3,0,28
    addi r5,r5,0x1
    stw r5,heapVoiceScriptCount(r23)
    add r4,r23,r0
    stw r21,heapVoiceSFXID(r4)
    stw r3,heapVoiceSFXLength(r4)
nextEnemy:
    addi r26,r26,0x8
    addi r25,r25,0x1
startEnemyLoop:
    cmpw r25,r24
    blt+ enemyNameLoop
    b muIntroTask__makeSoundScript_end
BTTVoices:
    lwz r5,heapVoiceScriptCount(r3)
    addi r0,r5,0x1
    stw r0,heapVoiceScriptCount(r3)
    li r4,0x2035
    li r0,0x5A
    rlwinm r5,r5,3,0,28
    add r5,r3,r5
    stw r4,0x10C(r5)
    stw r0,0x110(r5)
muIntroTask__makeSoundScript_end:
    addi r11,r1,0x40
    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___restgpr_21")]
    lwz r0,0x44(r1)
    mtlr r0
    addi r1,r1,0x40
    blr

muIntroTask__copyIntroSceneData:
    stwu r1,-0x10(r1)
    mflr r0
    stw r0,0x14(r1)
    stw r31,0xC(r1)
    mr r31,r3
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    lis r5,0x0                               [R_PPC_ADDR16_HA(13, 5, "scIntroHeader")]
    lis r6,0x0                               [R_PPC_ADDR16_HA(13, 5, "gfSceneHeader")]
    lwz r3,0x4(r3)
    addi r5,r5,0x0                           [R_PPC_ADDR16_LO(13, 5, "scIntroHeader")]
    addi r6,r6,0x0                           [R_PPC_ADDR16_LO(13, 5, "gfSceneHeader")]
    li r4,0x4
    li r7,0x0
    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    
    lwz r0,sceneStageNum(r3)
    stw r0,heapStageNum(r31)

    lwz r0,sceneMode(r3)
    stw r0,heapMode(r31)

    lwz r0,sceneOpponentCount(r3)
    stw r0,heapEnemyCount(r31)

    lwz r0,sceneAllyCount(r3)
    stw r0,heapAllyCount(r31)

    lwz r0,sceneEnemyOneChar(r3)
    stw r0,heapEnemyOneChar(r31)

    lwz r0,sceneEnemyOneType(r3)
    stw r0,heapEnemyOneType(r31)

    lwz r0,sceneEnemyTwoChar(r3)
    stw r0,heapEnemyTwoChar(r31)

    lwz r0,sceneEnemyTwoType(r3)
    stw r0,heapEnemyTwoType(r31)

    lwz r0,sceneEnemyThreeChar(r3)
    stw r0,heapEnemyThreeChar(r31)

    lwz r0,sceneEnemyThreeType(r3)
    stw r0,heapEnemyThreeType(r31)

    lwz r0,sceneAllyOneChar(r3)
    stw r0,heapAllyOneChar(r31)

    lwz r0,sceneAllyOneType(r3)
    stw r0,heapAllyOneType(r31)

    lwz r0,sceneAllyTwoChar(r3)
    stw r0,heapAllyTwoChar(r31)
    
    lwz r0,sceneAllyTwoType(r3)
    stw r0,heapAllyTwoType(r31)
    
    lwz r31,0xC(r1)
    lwz r0,0x14(r1)
    mtlr r0
    addi r1,r1,0x10
    blr
muIntroTask__loadFiles:
#3 = muIntroTaskObj
    stwu r1,-0xA0(r1)
    mflr r0
    lis r4,0x0                               [R_PPC_ADDR16_HA(13, 5, "charCommonBrresString")]
    li r5,0x2B
    stw r0,0xA4(r1)
    addi r4,r4,0x0                           [R_PPC_ADDR16_LO(13, 5, "charCommonBrresString")]
    li r6,0x0
    li r7,0x0
    stw r31,0x9C(r1)
    mr r31,r3
    addi r3,r3,0xEC
    stw r30,0x98(r1)
    stw r29,0x94(r1)
    stw r28,0x90(r1)
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__readRequest")]
    lwz r0,heapMode(r31)
    cmpwi r0,modeEnumBTT
    beq muIntroTask__loadFiles__end # if target test just exit, no fighter images to load
    cmpwi r0,modeEnumTeam
    bne- muIntroTask__loadFiles__enemys
muIntroTask__loadFiles__enemyTeam:
    # team mode = just load the one enemy fighter and then go to ally loading
    li r8,0x0
    lwz r7,heapEnemyOneChar(r31)
    mr r3,r31
    addi r4,r1,0x48
    addi r5,r1,0x28
    addi r6,r1,0x8
    bl muIntroTask__getEnemyResFileName
    addi r3,r31,0xF0
    addi r4,r1,0x48
    li r5,0x2A
    li r6,0x0
    li r7,0x0
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__readRequest")]
    b muIntroTask__loadFiles__allys
muIntroTask__loadFiles__enemys:
    lwz r30,heapEnemyCount(r31)
loc_A08:
    mr r29,r31
    li r28,0x0
    b loc_AB8
loc_A14:
    lwz r8,heapEnemyType(r29)
    lwz r7,heapEnemyChar(r29)
    mr r3,r31
    addi r4,r1,0x48
    addi r5,r1,0x28
    addi r6,r1,0x8
    bl muIntroTask__getEnemyResFileName
    addi r0,r28,0x2
    addi r4,r1,0x48
    rlwinm r0,r0,2,0,29
    li r5,0x2A
    add r3,r31,r0
    li r6,0x0
    addi r3,r3,0xE8
    li r7,0x0
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__readRequest")]
    addi r29,r29,0x8
    addi r28,r28,0x1
loc_AB8:
    cmpw r28,r30
    blt+ loc_A14
muIntroTask__loadFiles__allys:
    lwz r30,heapAllyCount(r31)
    mr r29,r31
    li r28,0x0
    b loc_B7C
loc_AE4:
    lwz r8,heapAllyType(r29)
    lwz r7,heapAllyChar(r29)
    mr r3,r31
    addi r4,r1,0x48
    addi r5,r1,0x28
    addi r6,r1,0x8
    bl muIntroTask__getEnemyResFileName
    addi r0,r28,0x6
    addi r4,r1,0x48
    rlwinm r0,r0,2,0,29
    li r5,0x2A
    add r3,r31,r0
    li r6,0x0
    addi r3,r3,0xE8
    li r7,0x0
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__readRequest")]
    addi r29,r29,0x8
    addi r28,r28,0x1
loc_B7C:
    cmpw r28,r30
    blt+ loc_AE4
muIntroTask__loadFiles__end:
    lwz r0,0xA4(r1)
    lwz r31,0x9C(r1)
    lwz r30,0x98(r1)
    lwz r29,0x94(r1)
    lwz r28,0x90(r1)
    mtlr r0
    addi r1,r1,0xA0
    blr

muIntroTask__isLoadFinished:
    stwu r1,-0x10(r1)
    mflr r0
    stw r0,0x14(r1)
    stw r31,0xC(r1)
    addi r31,r3,0xE8
    stw r30,0x8(r1)
    li r30,0x0
loc_BC0:
    mr r3,r31
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__isReady")]
    cmpwi r3,0x0
    bne- loc_BD8
    li r3,0x0
    b loc_BEC
loc_BD8:
    addi r30,r30,0x1
    addi r31,r31,0x4
    cmpwi r30,0x8
    blt+ loc_BC0
    bl __unresolved                          [R_PPC_REL24(0, 4, "muMenu__isLoadFinishMenuSound")]
loc_BEC:
    lwz r0,0x14(r1)
    lwz r31,0xC(r1)
    lwz r30,0x8(r1)
    mtlr r0
    addi r1,r1,0x10
    blr

muIntroTask__createCharModel:
    stwu r1,-0xD0(r1)
    mflr r0
    stw r0,0xD4(r1)
    addi r11,r1,0xD0
    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___savegpr_21")]
    li r0,0x0
    lis r30,0x0                              [R_PPC_ADDR16_HA(13, 4, "constSection")]
    addi r30,r30,0x0                         [R_PPC_ADDR16_LO(13, 4, "constSection")]
    stw r0,0x14(r1)
    mr r23,r3
    addi r3,r3,0xEC
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getReturnStatus")]
    cmpwi r3,0x15
    bne- loc_C44
    li r24,0x0
    b loc_C58
loc_C44:
    addi r3,r23,0xEC
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getBuffer")]
    mr r24,r3
    addi r3,r23,0xEC
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__release")]
loc_C58:
    cmpwi r24,0x0
    beq- loc_C6C
    stw r24,0x14(r1)
    addi r3,r1,0x14
    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d7ResFileFv__Init")]
loc_C6C:
    lwz r0,0x14(r1)
    mr r3,r23
    addi r4,r30,0x28 #panelList
    addi r6,r23,0x44
    stw r0,0x44(r23)
    li r5,0x4
    bl muIntroTask__createEnemyMuObject
    li r3,0x2A
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfHeapManager__getMEMAllocator")]
    lwz r6,0x68(r23)
    li r4,0x0
    li r5,0xD
    lwz r6,0x10(r6)
    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d12ScnMdlExpandFP12MEMAlloc__Construct")]
    lwz r0,heapMode(r23)
    stw r3,0xA8(r23)
    cmpwi r0,modeEnumTeam
    bne- loc_E88
    li r24,0xB #team
    b loc_CD4
    bge- loc_CDC
    cmpwi r0,0x0
    bge- loc_CCC
    b loc_CDC
loc_CCC:
    lwz r8,heapEnemyOneType(r23)
    b loc_CE0
loc_CD4:
    li r8,0x0
    b loc_CE0
loc_CDC:
    li r8,0x4
loc_CE0:
    lwz r7,heapEnemyOneChar(r23)
    mr r3,r23
    addi r4,r1,0x60
    addi r5,r1,0x40
    addi r6,r1,0x20
    bl muIntroTask__getEnemyResFileName
    li r0,0x0
    addi r3,r23,0xF0
    stw r0,0x10(r1)
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getReturnStatus")]
    cmpwi r3,0x15
    bne- loc_D18
    li r25,0x0
    b loc_D2C
loc_D18:
    addi r3,r23,0xF0
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getBuffer")]
    mr r25,r3
    addi r3,r23,0xF0
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__release")]
loc_D2C:
    cmpwi r25,0x0
    beq- loc_D40
    stw r25,0x10(r1)
    addi r3,r1,0x10
    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d7ResFileFv__Init")]
loc_D40:
    lwz r0,0x10(r1)
    mr r22,r23
    li r21,0x0
    stw r0,0x48(r23)
loc_D50:
    addi r3,r23,0x48
    subfic r4,r21,0x1C
    li r5,0x0
    li r6,0x0
    li r7,0x2A
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__create1")]
    mr r25,r3
    addi r4,r1,0x40
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeNodeAnimN")]
    lwz r3,0x14(r25)
    lfs f1,0x48(r30)
    lwz r3,0xC(r3)
    lwz r12,0x0(r3)
    lwz r12,0x28(r12)
    mtctr r12
    bctrl
    mr r3,r25
    addi r4,r1,0x40
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeClrAnimN")]
    lwz r3,0x14(r25)
    cmpwi r21,0x0
    lwz r3,0x18(r3)
    bne- loc_DB4
    lfs f1,0x48(r30)
    b loc_DB8
loc_DB4:
    lfs f1,0x4C(r30)
loc_DB8:
    lwz r12,0x0(r3)
    lwz r12,0x28(r12)
    mtctr r12
    bctrl
    mr r3,r25
    addi r4,r1,0x20
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeVisAnimN")]
    lwz r0,heapMode(r23)
    cmpwi r0,0x1
    bne- loc_DE8
    lfs f1,0x50(r30)
    b loc_E4C
loc_DE8:
    cmpwi r0,0x2
    blt- loc_DF8
    li r0,-0x1
    b loc_DFC
loc_DF8:
    lwz r0,heapEnemyCount(r23)
loc_DFC:
    cmpwi r0,0x2
    beq- loc_E28
    bge- loc_E14
    cmpwi r0,0x1
    bge- loc_E20
    b loc_E48
loc_E14:
    cmpwi r0,0x4
    bge- loc_E48
    b loc_E40
loc_E20:
    lfs f1,0x4C(r30)
    b loc_E4C
loc_E28:
    cmpwi r21,0x0
    bne- loc_E38
    lfs f1,0x48(r30)
    b loc_E4C
loc_E38:
    lfs f1,0x54(r30)
    b loc_E4C
loc_E40:
    lfs f1,0x58(r30)
    b loc_E4C
loc_E48:
    lfs f1,0x50(r30)
loc_E4C:
    mr r3,r25
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__setFrameVisible")]
    lwz r3,0x14(r25)
    lfs f1,0x4C(r30)
    lwz r3,0x8(r3)
    lwz r12,0x0(r3)
    lwz r12,0x28(r12)
    mtctr r12
    bctrl
    addi r21,r21,0x1
    stw r25,0x70(r22)
    cmpwi r21,0xB
    addi r22,r22,0x4
    blt+ loc_D50
    b loc_10B4
loc_E88:
    cmpwi r0,0x2
    blt- loc_E98
    li r24,-0x1
    b loc_E9C
loc_E98:
    lwz r24,heapEnemyCount(r23)
loc_E9C:
    mr r26,r23
    mr r27,r23
    addi r28,r23,0x48
    li r25,0x0
    li r31,0x0
    b loc_10AC
loc_EB4:
    addi r0,r25,0x2
    stw r31,0xC(r1)
    rlwinm r0,r0,2,0,29
    add r3,r23,r0
    addi r22,r3,0xE8
    mr r3,r22
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getReturnStatus")]
    cmpwi r3,0x15
    bne- loc_EE0
    li r29,0x0
    b loc_EF4
loc_EE0:
    mr r3,r22
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getBuffer")]
    mr r29,r3
    mr r3,r22
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__release")]
loc_EF4:
    cmpwi r29,0x0
    beq- loc_F08
    stw r29,0xC(r1)
    addi r3,r1,0xC
    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d7ResFileFv__Init")]
loc_F08:
    lwz r0,0xC(r1)
    cmpwi r25,0x0
    stw r0,0x48(r26)
    bge- loc_F40
    lwz r0,heapMode(r23)
    cmpwi r0,modeEnumBTT
    blt- loc_F2C
    li r0,-0x1
    b loc_F30
loc_F2C:
    lwz r0,heapEnemyCount(r23)
loc_F30:
    cmpw r25,r0
    blt- loc_F40
    li r8,0x4
    b loc_F70
loc_F40:
    lwz r0,heapMode(r23)
    cmpwi r0,0x1
    beq- loc_F64
    bge- loc_F6C
    cmpwi r0,0x0
    bge- loc_F5C
    b loc_F6C
loc_F5C:
    lwz r8,heapEnemyOneType(r27)
    b loc_F70
loc_F64:
    li r8,0x0
    b loc_F70
loc_F6C:
    li r8,0x4
loc_F70:
    lwz r7,heapEnemyOneChar(r27)
    mr r3,r23
    addi r4,r1,0x60
    addi r5,r1,0x40
    addi r6,r1,0x20
    bl muIntroTask__getEnemyResFileName
    mr r3,r28
    subfic r4,r25,0x1C
    li r5,0x0
    li r6,0x0
    li r7,0x2A
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__create1")]
    mr r21,r3
    addi r4,r1,0x40
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeNodeAnimN")]
    lwz r3,0x14(r21)
    lfs f1,0x48(r30)
    lwz r3,0xC(r3)
    lwz r12,0x0(r3)
    lwz r12,0x28(r12)
    mtctr r12
    bctrl
    mr r3,r21
    addi r4,r1,0x40
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeClrAnimN")]
    lwz r3,0x14(r21)
    lfs f1,0x48(r30)
    lwz r3,0x18(r3)
    lwz r12,0x0(r3)
    lwz r12,0x28(r12)
    mtctr r12
    bctrl
    mr r3,r21
    addi r4,r1,0x20
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeVisAnimN")]
    lwz r0,heapMode(r23)
    cmpwi r0,modeEnumTeam
    bne- loc_1010
    lfs f1,0x50(r30)
    b loc_1074
loc_1010:
    cmpwi r0,modeEnumBTT
    blt- loc_1020
    li r0,-0x1
    b loc_1024
loc_1020:
    lwz r0,heapEnemyCount(r23)
loc_1024:
    cmpwi r0,0x2
    beq- loc_1050
    bge- loc_103C
    cmpwi r0,0x1
    bge- loc_1048
    b loc_1070
loc_103C:
    cmpwi r0,0x4
    bge- loc_1070
    b loc_1068
loc_1048:
    lfs f1,0x4C(r30)
    b loc_1074
loc_1050:
    cmpwi r25,0x0
    bne- loc_1060
    lfs f1,0x48(r30)
    b loc_1074
loc_1060:
    lfs f1,0x54(r30)
    b loc_1074
loc_1068:
    lfs f1,0x58(r30)
    b loc_1074
loc_1070:
    lfs f1,0x50(r30)
loc_1074:
    mr r3,r21
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__setFrameVisible")]
    lwz r3,0x14(r21)
    lfs f1,0x4C(r30)
    lwz r3,0x8(r3)
    lwz r12,0x0(r3)
    lwz r12,0x28(r12)
    mtctr r12
    bctrl
    stw r21,0x70(r26)
    addi r26,r26,0x4
    addi r27,r27,0x8
    addi r28,r28,0x4
    addi r25,r25,0x1
loc_10AC:
    cmpw r25,r24
    blt+ loc_EB4
loc_10B4:
    lwz r0,heapMode(r23)
    cmpwi r0,modeEnumBTT
    blt- loc_10C8
    li r29,-0x1
    b loc_10CC
loc_10C8:
    lwz r29,heapAllyCount(r23)
loc_10CC:
    mr r28,r23
    mr r27,r23
    addi r26,r23,0x54
    li r25,0x0
    li r31,0x0
    b loc_125C
loc_10E4:
    addi r0,r25,0x6
    stw r31,0x8(r1)
    rlwinm r0,r0,2,0,29
    add r3,r23,r0
    addi r21,r3,0xE8
    mr r3,r21
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getReturnStatus")]
    cmpwi r3,0x15
    bne- loc_1110
    li r22,0x0
    b loc_1124
loc_1110:
    mr r3,r21
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getBuffer")]
    mr r22,r3
    mr r3,r21
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__release")]
loc_1124:
    cmpwi r22,0x0
    beq- loc_1138
    stw r22,0x8(r1)
    addi r3,r1,0x8
    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d7ResFileFv__Init")]
loc_1138:
    lwz r0,0x8(r1)
    cmpwi r25,0x0
    stw r0,0x54(r28)
    bge- loc_1170
    lwz r0,heapMode(r23)
    cmpwi r0,modeEnumBTT
    blt- loc_115C
    li r0,-0x1
    b loc_1160
loc_115C:
    lwz r0,heapAllyCount(r23)
loc_1160:
    cmpw r25,r0
    blt- loc_1170
    li r8,0x4
    b loc_1194
loc_1170:
    lwz r0,heapMode(r23)
    cmpwi r0,modeEnumBTT
    bge- loc_1190
    cmpwi r0,0x0
    bge- loc_1188
    b loc_1190
loc_1188:
    lwz r8,heapAllyType(r27)
    b loc_1194
loc_1190:
    li r8,0x4
loc_1194:
    lwz r7,heapAllyChar(r27)
    mr r3,r23
    addi r4,r1,0x60
    addi r5,r1,0x40
    addi r6,r1,0x20
    bl muIntroTask__getEnemyResFileName
    mr r3,r26
    subfic r4,r25,0x1E
    li r5,0x0
    li r6,0x0
    li r7,0x2A
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__create1")]
    mr r21,r3
    addi r4,r1,0x40
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeNodeAnimN")]
    lwz r3,0x14(r21)
    lfs f1,0x48(r30)
    lwz r3,0xC(r3)
    lwz r12,0x0(r3)
    lwz r12,0x28(r12)
    mtctr r12
    bctrl
    mr r3,r21
    addi r4,r1,0x40
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeClrAnimN")]
    lwz r3,0x14(r21)
    lfs f1,0x48(r30)
    lwz r3,0x18(r3)
    lwz r12,0x0(r3)
    lwz r12,0x28(r12)
    mtctr r12
    bctrl
    mr r3,r21
    addi r4,r1,0x20
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeVisAnimN")]
    lfs f1,0x5C(r30)
    mr r3,r21
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__setFrameVisible")]
    lwz r3,0x14(r21)
    lfs f1,0x4C(r30)
    lwz r3,0x8(r3)
    lwz r12,0x0(r3)
    lwz r12,0x28(r12)
    mtctr r12
    bctrl
    stw r21,0xA0(r28)
    addi r28,r28,0x4
    addi r27,r27,0x8
    addi r26,r26,0x4
    addi r25,r25,0x1
loc_125C:
    cmpw r25,r29
    blt+ loc_10E4
    cmpwi r24,0x2
    beq- loc_1290
    bge- loc_127C
    cmpwi r24,0x1
    bge- loc_1288
    b loc_12A0
loc_127C:
    cmpwi r24,0x4
    bge- loc_12A0
    b loc_1298
loc_1288:
    li r26,0x0
    b loc_12A4
loc_1290:
    li r26,0x1
    b loc_12A4
loc_1298:
    li r26,0x3
    b loc_12A4
loc_12A0:
    li r26,0xA
loc_12A4:
    mr r22,r23
    li r21,0x0
    lis r25,0x0                              [R_PPC_ADDR16_HA(13, 5, "posString")]
    b loc_12E4
loc_12B4:
    addi r3,r1,0x18
    addi r4,r25,0x0                          [R_PPC_ADDR16_LO(13, 5, "posString")]
    add r5,r21,r26
    crclr 6
    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    lwz r4,0x70(r22)
    addi r5,r1,0x18
    lwz r3,0xA8(r23)
    lwz r4,0x10(r4)
    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d12ScnMdlExpandFPQ34nw4r3g3__PushBack1")]
    addi r22,r22,0x4
    addi r21,r21,0x1
loc_12E4:
    cmpw r21,r24
    blt+ loc_12B4
    mr r22,r23
    li r21,0x0
    lis r24,0x0                              [R_PPC_ADDR16_HA(13, 5, "posString")]
    b loc_132C
loc_12FC:
    addi r3,r1,0x18
    addi r4,r24,0x0                          [R_PPC_ADDR16_LO(13, 5, "posString")]
    addi r5,r21,0x1E
    crclr 6
    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    lwz r4,0xA0(r22)
    addi r5,r1,0x18
    lwz r3,0xA8(r23)
    lwz r4,0x10(r4)
    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d12ScnMdlExpandFPQ34nw4r3g3__PushBack1")]
    addi r22,r22,0x4
    addi r21,r21,0x1
loc_132C:
    cmpw r21,r29
    blt+ loc_12FC
    addi r11,r1,0xD0
    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___restgpr_21")]
    lwz r0,0xD4(r1)
    mtlr r0
    addi r1,r1,0xD0
    blr
    
muIntroTask__getEnemyResFileName:
#3 = IntroTaskObj
#4 = string output, /enter/chr00N.brres
#5 = string output, /ItrSimpleChr000N_TopN__0
#6 = string output, /ItrSimpleChr000N_TopN__0, might vary idk
#7 = fighter ID
#8 = fighter Type
    stwu r1,-0x30(r1)
    mflr r0
    stw r0,0x34(r1)
    addi r11,r1,0x30
    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___savegpr_24")]
#    lis r31,0x0                              [R_PPC_ADDR16_HA(13, 5, "dataSection")]
#    addi r31,r31,0x0                         [R_PPC_ADDR16_LO(13, 5, "dataSection")]
    cmpwi r8,0x2
    mr r24,r4
    mr r25,r5
    mr r26,r6
    lis r30,0x0                              [R_PPC_ADDR16_HA(13, 5, "chrString")]
    addi r30,r30,0x0                         [R_PPC_ADDR16_LO(13, 5, "chrString")]
    lis r29,0x0                              [R_PPC_ADDR16_HA(13, 5, "bigChrString")]
    addi r29,r29,0x0                         [R_PPC_ADDR16_LO(13, 5, "bigChrString")]
    beq- loc_13B4
    bge- loc_1398
    cmpwi r8,0x0
    beq- loc_13A4
    bge- loc_13AC
    b loc_13C0
loc_1398:
    cmpwi r8,0x4
    bge- loc_13C0
    b loc_13BC
loc_13A4:
    li r28,0x0
    b loc_13C0
loc_13AC:
    li r28,0x0
    b loc_13C0
loc_13B4:
    li r28,0x1
    b loc_13C0
loc_13BC:
    li r28,0x2
loc_13C0:
    mr r3,r7
    bl __unresolved                          [R_PPC_REL24(0, 4, "loc_800AF600")]
    addi r27,r3,0x1
    mr r3,r24
    mr r5,r30
    
    lis r4,0x0                              [R_PPC_ADDR16_HA(13, 5, "entryString")]
    addi r4,r4,0x0                         [R_PPC_ADDR16_LO(13, 5, "entryString")]

    mr r6,r27
    crclr 6
    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    mr r3,r25
    mr r5,r29
    mr r6,r27
    mr r7,r28
    lis r4,0x0                              [R_PPC_ADDR16_HA(13, 5, "itrSimpleTopNXString")]
    addi r4,r4,0x0                         [R_PPC_ADDR16_LO(13, 5, "itrSimpleTopNXString")]
    crclr 6
    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    mr r3,r26
    mr r5,r29
    mr r6,r27
    lis r4,0x0                              [R_PPC_ADDR16_HA(13, 5, "itrSimpleTopN0String")]
    addi r4,r4,0x0                         [R_PPC_ADDR16_LO(13, 5, "itrSimpleTopN0String")]
    crclr 6
    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    addi r11,r1,0x30
    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___restgpr_24")]
    lwz r0,0x34(r1)
    mtlr r0
    addi r1,r1,0x30
    blr
muIntroTask__createEnemyMuObject:
#3 = muIntroTaskObject
#4 = list of strings
#5 = length of list
#6 = store object here 
    stwu r1,-0x70(r1)
    mflr r0
    stw r0,0x74(r1)
    addi r11,r1,0x70
    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___savegpr_22")]
    mr r22,r3
    mr r26,r4
    mr r23,r5
    mr r24,r6
    li r28,0x0
    lis r30,0x0                              [R_PPC_ADDR16_HA(13, 5, "zeroString")]
    lis r31,0x0                              [R_PPC_ADDR16_HA(13, 4, "zeroAnimUpdateRate")]
    b loc_1500
loc_1464:
    lbz r3,0x5(r26)
    li r29,0x1
    lbz r0,0x4(r26)
    cmplw r0,r3
    bge- loc_147C
    sub r29,r3,r0
loc_147C:
    li r27,0x0
    b loc_14F0
loc_1484:
    lwz r4,0x0(r26)
    mr r3,r24
    lbz r5,0x6(r26)
    li r6,0x0
    li r7,0x2A
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__create")]
    lbz r0,0x4(r26)
    mr r25,r3
    lwz r4,0x0(r26)
    add r0,r0,r27
    rlwinm r0,r0,2,0,29
    add r5,r22,r0
    stw r3,0x60(r5)
    addi r3,r1,0x8
    bl __unresolved                          [R_PPC_REL24(0, 4, "string__strcpy")]
    addi r3,r1,0x8
    addi r4,r30,0x0                          [R_PPC_ADDR16_LO(13, 5, "zeroString")]
    bl __unresolved                          [R_PPC_REL24(0, 4, "string__strcat")]
    mr r3,r25
    addi r4,r1,0x8
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeAnimN")]
    lwz r3,0x14(r25)
    cmpwi r3,0x0
    beq- loc_14EC
    lfs f1,0x0(r31)                         [R_PPC_ADDR16_LO(13, 4, "zeroAnimUpdateRate")]
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfModelAnimation__setUpdateRate")]
loc_14EC:
    addi r27,r27,0x1
loc_14F0:
    cmpw r27,r29
    blt+ loc_1484
    addi r28,r28,0x1
    addi r26,r26,0x8
loc_1500:
    cmpw r28,r23
    blt+ loc_1464
    addi r11,r1,0x70
    bl __unresolved                          [R_PPC_REL24(0, 4, "runtime___restgpr_22")]
    lwz r0,0x74(r1)
    mtlr r0
    addi r1,r1,0x70
    blr
muIntroTask__createObjResFile:
    stwu r1,-0x20(r1)
    mflr r0
    xoris r4,r4,0x8000
    stw r0,0x24(r1)
    lis r0,0x4330
    stw r31,0x1C(r1)
    mr r31,r3
    stw r30,0x18(r1)
    stw r29,0x14(r1)
    stw r4,0xC(r1)
    lis r4,0x0                               [R_PPC_ADDR16_HA(13, 4, "magicIntToDouble")]
    lfd f1,0x0(r4)                          [R_PPC_ADDR16_LO(13, 4, "magicIntToDouble")]
    stw r0,0x8(r1)
    stw r28,0x10(r1)
    lfd f0,0x8(r1)
    lwz r28,0x64(r3)
    fsubs f1,f0,f1
    mr r3,r28
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__setFrameMatCol")]
    lwz r28,0x10(r28)
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    lis r29,0x0                              [R_PPC_ADDR16_HA(13, 5, "scIntroHeader")]
    lis r30,0x0                              [R_PPC_ADDR16_HA(13, 5, "gfSceneHeader")]
    lwz r3,0x4(r3)
    addi r5,r29,0x0                          [R_PPC_ADDR16_LO(13, 5, "scIntroHeader")]
    addi r6,r30,0x0                          [R_PPC_ADDR16_LO(13, 5, "gfSceneHeader")]
    li r4,0x4
    li r7,0x0
    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    lwz r3,0x398(r3)
    mr r5,r28
    lwz r3,0x0(r3)
    lwz r3,0x48(r3)
    lwz r12,0x0(r3)
    lwz r4,0xE4(r3)
    lwz r12,0x34(r12)
    mtctr r12
    bctrl
    lwz r28,0xA8(r31)
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    lwz r3,0x4(r3)
    addi r5,r29,0x0                          [R_PPC_ADDR16_LO(13, 5, "scIntroHeader")]
    addi r6,r30,0x0                          [R_PPC_ADDR16_LO(13, 5, "gfSceneHeader")]
    li r4,0x4
    li r7,0x0
    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    lwz r3,0x398(r3)
    mr r5,r28
    lwz r3,0x0(r3)
    lwz r3,0x48(r3)
    lwz r12,0x0(r3)
    lwz r4,0xE4(r3)
    lwz r12,0x34(r12)
    mtctr r12
    bctrl
    lwz r28,0x68(r31)
    lis r30,0x0                              [R_PPC_ADDR16_HA(13, 4, "defaultAnimUpdateRate")]
    lfs f1,0x0(r30)                         [R_PPC_ADDR16_LO(13, 4, "defaultAnimUpdateRate")]
    lwz r3,0x14(r28)
    lwz r3,0xC(r3)
    lwz r12,0x0(r3)
    lwz r12,0x28(r12)
    mtctr r12
    bctrl
    lwz r3,0x14(r28)
    lfs f1,0x0(r30)                         [R_PPC_ADDR16_LO(13, 4, "defaultAnimUpdateRate")]
    lwz r3,0x18(r3)
    lwz r12,0x0(r3)
    lwz r12,0x28(r12)
    mtctr r12
    bctrl
    lwz r0,heapMode(r31)
    cmpwi r0,modeEnumBTT
    blt- loc_1650
    li r0,-0x1
    b loc_1654
loc_1650:
    lwz r0,heapAllyCount(r31)
loc_1654:
    cmpwi r0,0x0
    ble- loc_16CC
    lwz r29,0x9C(r31)
    lwz r28,0x10(r29)
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    lis r5,0x0                               [R_PPC_ADDR16_HA(13, 5, "scIntroHeader")]
    lis r6,0x0                               [R_PPC_ADDR16_HA(13, 5, "gfSceneHeader")]
    lwz r3,0x4(r3)
    addi r5,r5,0x0                           [R_PPC_ADDR16_LO(13, 5, "scIntroHeader")]
    addi r6,r6,0x0                           [R_PPC_ADDR16_LO(13, 5, "gfSceneHeader")]
    li r4,0x4
    li r7,0x0
    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    lwz r3,0x398(r3)
    mr r5,r28
    lwz r3,0x0(r3)
    lwz r3,0x48(r3)
    lwz r12,0x0(r3)
    lwz r4,0xE4(r3)
    lwz r12,0x34(r12)
    mtctr r12
    bctrl
    lwz r4,0x14(r29)
    lis r3,0x0                               [R_PPC_ADDR16_HA(13, 4, "defaultAnimUpdateRate")]
    lfs f1,0x0(r3)                          [R_PPC_ADDR16_LO(13, 4, "defaultAnimUpdateRate")]
    lwz r3,0xC(r4)
    lwz r12,0x0(r3)
    lwz r12,0x28(r12)
    mtctr r12
    bctrl
loc_16CC:
    lwz r28,0x6C(r31)
    lis r31,0x0                              [R_PPC_ADDR16_HA(13, 4, "defaultAnimUpdateRate")]
    lfs f1,0x0(r31)                         [R_PPC_ADDR16_LO(13, 4, "defaultAnimUpdateRate")]
    lwz r3,0x14(r28)
    lwz r3,0xC(r3)
    lwz r12,0x0(r3)
    lwz r12,0x28(r12)
    mtctr r12
    bctrl
    lwz r3,0x14(r28)
    lfs f1,0x0(r31)                         [R_PPC_ADDR16_LO(13, 4, "defaultAnimUpdateRate")]
    lwz r3,0x18(r3)
    lwz r12,0x0(r3)
    lwz r12,0x28(r12)
    mtctr r12
    bctrl
    lwz r28,0x10(r28)
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    lis r5,0x0                               [R_PPC_ADDR16_HA(13, 5, "scIntroHeader")]
    lis r6,0x0                               [R_PPC_ADDR16_HA(13, 5, "gfSceneHeader")]
    lwz r3,0x4(r3)
    addi r5,r5,0x0                           [R_PPC_ADDR16_LO(13, 5, "scIntroHeader")]
    addi r6,r6,0x0                           [R_PPC_ADDR16_LO(13, 5, "gfSceneHeader")]
    li r4,0x4
    li r7,0x0
    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    lwz r3,0x398(r3)
    mr r5,r28
    lwz r3,0x0(r3)
    lwz r3,0x48(r3)
    lwz r12,0x0(r3)
    lwz r4,0xE4(r3)
    lwz r12,0x34(r12)
    mtctr r12
    bctrl
    lwz r0,0x24(r1)
    lwz r31,0x1C(r1)
    lwz r30,0x18(r1)
    lwz r29,0x14(r1)
    lwz r28,0x10(r1)
    mtlr r0
    addi r1,r1,0x20
    blr
muIntroTask__dispEnemy:
muIntroTask__processDefault:
    stwu r1,-0x40(r1)
    mflr r0
    stw r0,0x44(r1)
    stw r31,0x3C(r1)
    mr r31,r3
    stw r30,0x38(r1)
    stw r29,0x34(r1)
    lbz r0,0x108(r3)
    cmpwi r0,0x0
    bne- loc_1AE8
    addi r29,r3,0xE8
    li r30,0x0
loc_17A8:
    mr r3,r29
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__isReady")]
    cmpwi r3,0x0
    bne- loc_17C0
    li r3,0x0
    b loc_17D4
loc_17C0:
    addi r30,r30,0x1
    addi r29,r29,0x4
    cmpwi r30,0x8
    blt+ loc_17A8
    bl __unresolved                          [R_PPC_REL24(0, 4, "muMenu__isLoadFinishMenuSound")]
loc_17D4:
    cmpwi r3,0x0
    beq- loc_1BA0
    li r0,0x0
    addi r3,r31,0xE8
    stw r0,0x8(r1)
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getReturnStatus")]
    cmpwi r3,0x15
    bne- loc_17FC
    li r30,0x0
    b loc_1810
loc_17FC:
    addi r3,r31,0xE8
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getBuffer")]
    mr r30,r3
    addi r3,r31,0xE8
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__release")]
loc_1810:
    cmpwi r30,0x0
    beq- loc_1824
    stw r30,0x8(r1)
    addi r3,r1,0x8
    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d7ResFileFv__Init")]
loc_1824:
    lwz r0,0x8(r1)
    lis r4,0x0                               [R_PPC_ADDR16_HA(13, 4, "mapFileList")]
    mr r3,r31
    addi r6,r31,0x40 
    stw r0,0x40(r31)
    addi r4,r4,0x0                           [R_PPC_ADDR16_LO(13, 4, "mapFileList")]
    li r5,0x1
    bl muIntroTask__createEnemyMuObject
    lwz r3,heapMode(r31)
    cmpwi r3,modeEnumBTT
    bge- loc_186C
    mr r3,r31
    bl muIntroTask__createCharModel
    b loc_18D8
loc_186C:
    li r0,0x0
    addi r3,r31,0xFC
    stw r0,0xC(r1)
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getReturnStatus")]
    cmpwi r3,0x15
    bne- loc_188C
    li r30,0x0
    b loc_18A0
loc_188C:
    addi r3,r31,0xFC
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__getBuffer")]
    mr r30,r3
    addi r3,r31,0xFC
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfFileIOHandle__release")]
loc_18A0:
    cmpwi r30,0x0
    beq- loc_18B4
    stw r30,0xC(r1)
    addi r3,r1,0xC
    bl __unresolved                          [R_PPC_REL24(0, 4, "nw4r3g3d7ResFileFv__Init")]
loc_18B4:
    lwz r0,0xC(r1)
    addi r3,r31,0x5C
    li r4,0x12
    li r5,0x0
    stw r0,0x5C(r31)
    li r6,0x0
    li r7,0x2A
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__create1")]
    stw r3,0x70(r31)
loc_18D8:
    lis r3,0x0                               [R_PPC_ADDR16_HA(0, 11, "loc_8059FFAC")]
    lwz r3,0x0(r3)                          [R_PPC_ADDR16_LO(0, 11, "loc_8059FFAC")]
    addi r3,r3,0xD0
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfKeepFrameBuffer__endKeepScreen")]
    lwz r5,heapStageNum(r31)
    lis r4,0x0                               [R_PPC_ADDR16_HA(13, 5, "simpleMapTopNXString")]
    lwz r30,0x60(r31)
    addi r3,r1,0x10
    addi r4,r4,0x0                           [R_PPC_ADDR16_LO(13, 5, "simpleMapTopNXString")]
    addi r5,r5,0x1
    crclr 6
    bl __unresolved                          [R_PPC_REL24(0, 4, "printf__sprintf")]
    mr r3,r30
    addi r4,r1,0x10
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeNodeAnimNIf")]
    mr r3,r30
    addi r4,r1,0x10
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeVisAnimNIf")]
    mr r3,r30
    addi r4,r1,0x10
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeTexPatAnimNIf")]
    mr r3,r30
    addi r4,r1,0x10
    bl __unresolved                          [R_PPC_REL24(0, 4, "MuObject__changeClrAnimNIf")]
    
    lis r4,0x0                               [R_PPC_ADDR16_HA(13, 4, "defaultAnimUpdateRate")]
    lwz r3,0x14(r30)
    lfs f1,0x0(r4)                          [R_PPC_ADDR16_LO(13, 4, "defaultAnimUpdateRate")]
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfModelAnimation__setUpdateRate")]
    lwz r30,0x10(r30)
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    lis r5,0x0                               [R_PPC_ADDR16_HA(13, 5, "scIntroHeader")]
    lis r6,0x0                               [R_PPC_ADDR16_HA(13, 5, "gfSceneHeader")]
    lwz r3,0x4(r3)
    addi r5,r5,0x0                           [R_PPC_ADDR16_LO(13, 5, "scIntroHeader")]
    addi r6,r6,0x0                           [R_PPC_ADDR16_LO(13, 5, "gfSceneHeader")]
    li r4,0x4
    li r7,0x0
    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    lwz r3,0x398(r3)
    mr r5,r30
    lwz r3,0x0(r3)
    lwz r3,0x48(r3)
    lwz r12,0x0(r3)
    lwz r4,0xE4(r3)
    lwz r12,0x34(r12)
    mtctr r12
    bctrl
    lwz r3,heapMode(r31)
    cmpwi r3,modeEnumBTT
    bge- loc_19C0
    lwz r4,heapStageNum(r31)
    mr r3,r31
    bl muIntroTask__createObjResFile
    b loc_1A4C
loc_19C0:
    lwz r29,0x70(r31)
    lis r30,0x0                              [R_PPC_ADDR16_HA(13, 4, "defaultAnimUpdateRate")]
    lfs f1,0x0(r30)                         [R_PPC_ADDR16_LO(13, 4, "defaultAnimUpdateRate")]
    lwz r3,0x14(r29)
    lwz r3,0xC(r3)
    lwz r12,0x0(r3)
    lwz r12,0x28(r12)
    mtctr r12
    bctrl
    lwz r3,0x14(r29)
    lfs f1,0x0(r30)                         [R_PPC_ADDR16_LO(13, 4, "defaultAnimUpdateRate")]
    lwz r3,0x18(r3)
    lwz r12,0x0(r3)
    lwz r12,0x28(r12)
    mtctr r12
    bctrl
    lwz r30,0x10(r29)
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    lis r5,0x0                               [R_PPC_ADDR16_HA(13, 5, "scIntroHeader")]
    lis r6,0x0                               [R_PPC_ADDR16_HA(13, 5, "gfSceneHeader")]
    lwz r3,0x4(r3)
    addi r5,r5,0x0                           [R_PPC_ADDR16_LO(13, 5, "scIntroHeader")]
    addi r6,r6,0x0                           [R_PPC_ADDR16_LO(13, 5, "gfSceneHeader")]
    li r4,0x4
    li r7,0x0
    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    lwz r3,0x398(r3)
    mr r5,r30
    lwz r3,0x0(r3)
    lwz r3,0x48(r3)
    lwz r12,0x0(r3)
    lwz r4,0xE4(r3)
    lwz r12,0x34(r12)
    mtctr r12
    bctrl
loc_1A4C:
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    lis r5,0x0                               [R_PPC_ADDR16_HA(13, 5, "scIntroHeader")]
    lis r6,0x0                               [R_PPC_ADDR16_HA(13, 5, "gfSceneHeader")]
    lwz r3,0x4(r3)
    addi r5,r5,0x0                           [R_PPC_ADDR16_LO(13, 5, "scIntroHeader")]
    addi r6,r6,0x0                           [R_PPC_ADDR16_LO(13, 5, "gfSceneHeader")]
    li r4,0x4
    li r7,0x0
    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    lbz r30,0x39D(r3)
    cmpwi r30,0x78
    bne- loc_1A80
    li r30,-0x1
loc_1A80:
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    lis r5,0x0                               [R_PPC_ADDR16_HA(13, 5, "scIntroHeader")]
    lis r6,0x0                               [R_PPC_ADDR16_HA(13, 5, "gfSceneHeader")]
    lwz r3,0x4(r3)
    addi r5,r5,0x0                           [R_PPC_ADDR16_LO(13, 5, "scIntroHeader")]
    addi r6,r6,0x0                           [R_PPC_ADDR16_LO(13, 5, "gfSceneHeader")]
    li r4,0x4
    li r7,0x0
    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    lwz r3,0x394(r3)
    mr r5,r30
    li r4,0x14
    bl __unresolved                          [R_PPC_REL24(0, 4, "muMenu__startRumbleController")]
    lis r3,0x0                               [R_PPC_ADDR16_HA(0, 11, "loc_805A01D0")]
    li r4,0x2B
    lwz r3,0x0(r3)                          [R_PPC_ADDR16_LO(0, 11, "loc_805A01D0")]
    li r5,-0x1
    li r6,0x0
    li r7,0x0
    li r8,-0x1
    bl __unresolved                          [R_PPC_REL24(0, 4, "sndSystem__playSERem")]
    li r3,0x0
    li r0,0x1
    stw r3,0xE4(r31)
    stb r0,0x108(r31)
    b loc_1BA0
loc_1AE8:
#play voice script, check if last sound has "finished" playing to go to next sound
    lwz r0,heapVoiceTimeIntoCurrent(r3)
    lwz r4,heapVoiceScriptCurrent(r3)
    cmpwi r0,0x0
    rlwinm r0,r4,3,0,28
    add r30,r3,r0
    bgt- loc_1B20
#play next sound
    lis r3,0x0                               [R_PPC_ADDR16_HA(0, 11, "loc_805A01D0")]
    lwz r3,0x0(r3)                          [R_PPC_ADDR16_LO(0, 11, "loc_805A01D0")]
    lwz r4,0x10C(r30)
    li r5,-0x1
    li r6,0x0
    li r7,0x0
    li r8,-0x1
    bl __unresolved                          [R_PPC_REL24(0, 4, "sndSystem__playSERem")]
loc_1B20:
    lwz r3,heapVoiceTimeIntoCurrent(r31)
    addi r3,r3,0x1
    stw r3,heapVoiceTimeIntoCurrent(r31)
    lwz r0,0x110(r30)
    cmplw r3,r0
    blt- loc_1B58
    lwz r3,heapVoiceScriptCurrent(r31)
    lwz r0,heapVoiceScriptCount(r31)
    addi r3,r3,0x1
    cmpw r3,r0
    stw r3,heapVoiceScriptCurrent(r31)
    bge- loc_1B58
    li r0,0x0
    stw r0,heapVoiceTimeIntoCurrent(r31)
loc_1B58:
    lwz r3,heapVoiceScriptCurrent(r31)
    lwz r0,heapVoiceScriptCount(r31)
    cmpw r3,r0
    blt- loc_1BA0 #if script is finished then prompt scene change
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    lis r5,0x0                               [R_PPC_ADDR16_HA(13, 5, "scIntroHeader")]
    lis r6,0x0                               [R_PPC_ADDR16_HA(13, 5, "gfSceneHeader")]
    lwz r3,0x4(r3)
    addi r5,r5,0x0                           [R_PPC_ADDR16_LO(13, 5, "scIntroHeader")]
    addi r6,r6,0x0                           [R_PPC_ADDR16_LO(13, 5, "gfSceneHeader")]
    li r4,0x4
    li r7,0x0
    bl __unresolved                          [R_PPC_REL24(0, 4, "MWRTTI____dynamic_cast")]
    bl __unresolved                          [R_PPC_REL24(0, 4, "gfSceneManager__getInstance")]
    li r4,0x0
    li r0,0x2
    stw r4,0x284(r3)
    stw r0,0x288(r3)
loc_1BA0:
    lwz r0,0x44(r1)
    lwz r31,0x3C(r1)
    lwz r30,0x38(r1)
    lwz r29,0x34(r1)
    mtlr r0
    addi r1,r1,0x40
    blr
__entry:
    stwu r1,-0x10(r1)
    mflr r0
    stw r0,0x14(r1)
    stw r31,0xC(r1)
    lis r31,0x0                              [R_PPC_ADDR16_HA(13, 2, "loc_0")]
    addi r31,r31,0x0                         [R_PPC_ADDR16_LO(13, 2, "loc_0")]
    b loc_1BE4
loc_1BD8:
    mtctr r12
    bctrl
    addi r31,r31,0x4
loc_1BE4:
    lwz r12,0x0(r31)
    cmpwi r12,0x0
    bne+ loc_1BD8
    lwz r0,0x14(r1)
    lwz r31,0xC(r1)
    mtlr r0
    addi r1,r1,0x10
    blr
__exit:
    stwu r1,-0x10(r1)
    mflr r0
    stw r0,0x14(r1)
    stw r31,0xC(r1)
    lis r31,0x0                              [R_PPC_ADDR16_HA(13, 3, "loc_0")]
    addi r31,r31,0x0                         [R_PPC_ADDR16_LO(13, 3, "loc_0")]
    b loc_1C2C
loc_1C20:
    mtctr r12
    bctrl
    addi r31,r31,0x4
loc_1C2C:
    lwz r12,0x0(r31)
    cmpwi r12,0x0
    bne+ loc_1C20
    lwz r0,0x14(r1)
    lwz r31,0xC(r1)
    mtlr r0
    addi r1,r1,0x10
    blr
__unresolved:
    lis r3,0x0                               [R_PPC_ADDR16_HA(13, 5, "unresolvedMessage")]
    addi r3,r3,0x0                           [R_PPC_ADDR16_LO(13, 5, "unresolvedMessage")]
    b __unresolved                           [R_PPC_REL24(0, 4, "module__moUnResolvedMessage")]
