Intro Scene Opened on stage select [Eon]
op li r14, 0x11 @ $806dcb20
HOOK @ $806DCB58
{
  cmplwi r0, 0x11
  blt %end%
  bne %end%

loadIntroScene:
  #lbz r3, #getChrKind
  #lis r12, 0x800A
  #ori r12, r12, 0xF5B4
  
  lwz r3, 0x14(r15)
  lis r4, 0x8070
  ori r4, r4, 0x2508 # 0x2508+688
  lis r12, 0x8002
  ori r12, r12, 0xD3F4
  mtctr r12
  bctrl
  mr r31, r3
  #80685b3c reference hook
  lis r14, 0x805A
  lwz r14, 0xE0(r14)
  lwz r14, 0x10(r14)
#  0x364 = how many opponents there are
  li r0, 0
  stw r0, 0x364(r3)
#  0x380 = num of ally
  stw r0, 0x380(r3)
player1:
  lbz r3, 0xA(r14)
  cmpwi r3, 0x29 #random = just give up
  beq player2
  lis r12, 0x800a
  ori r12, r12, 0xf80c
  mtctr r12 
  bctrl 
  lis r12, 0x800a
  ori r12, r12, 0xf5B4
  mtctr r12 
  bctrl 
  stw r3, 0x368(r31)
  lwz r3, 0x364(r31)
  addi r0, r3, 1
  stw r0, 0x364(r31)
player2:
  lbz r3, 0xE(r14)
  cmpwi r3, 0x29 #random = just give up
  beq player3
  lis r12, 0x800a
  ori r12, r12, 0xf80c
  mtctr r12 
  bctrl 
  lis r12, 0x800a
  ori r12, r12, 0xf5B4
  mtctr r12 
  bctrl 
  stw r3, 0x384(r31)
  lwz r3, 0x380(r31)
  addi r0, r3, 1
  stw r0, 0x380(r31)
player3:
  lbz r3, 0x12(r14)
  cmpwi r3, 0x29 #random = just give up
  beq player4
  lis r12, 0x800a
  ori r12, r12, 0xf80c
  mtctr r12 
  bctrl 
  lis r12, 0x800a
  ori r12, r12, 0xf5B4
  mtctr r12 
  bctrl 
  stw r3, 0x38C(r31)
  lwz r3, 0x380(r31)
  addi r0, r3, 1
  stw r0, 0x380(r31)
player4:
  lbz r3, 0x16(r14)
  cmpwi r3, 0x29 #random = just give up
  beq end
  lis r12, 0x800a
  ori r12, r12, 0xf80c
  mtctr r12 
  bctrl 
  lis r12, 0x800a
  ori r12, r12, 0xf5B4
  mtctr r12 
  bctrl 
  stw r3, 0x370(r31)
  lwz r3, 0x364(r31)
  addi r0, r3, 1
  stw r0, 0x364(r31)
end:
#  0x35C = stage num
  li r0, 0x0
  stw r0, 0x35C(r31)
#  0x360 = team "blank" where blank is 
  li r0, 0
  stw r0, 0x360(r31)
  

  lwz r3, 0x14(r15)
  lis r4, 0x8070
  ori r4, r4, 0x2508 # 0x2508+688
  li r5, 0
  lis r12, 0x8002
  ori r12, r12, 0xD5AC
  mtctr r12
  bctrl
  li r0, 7
  stw r0, 0x8(r15)
return: 
  lis r12, 0x806D
  ori r12, r12, 0xCE70
  mtctr r12 
  bctr 
}
!Announcer Time fixes [Eon]
word 0x30300000 @ $804559D4 #knuckles announce time set to 0x30 frames
word 0x30300000 @ $80455894 #mewtwo announce time set to 0x30 frames
word 0x30300000 @ $80455918 #roy announce time set to 0x2A frames

Loop over all slots and get costumes from actual model files, can use this logic to actually render them to the scene later 
{
  
#getSlotManager
  li r31, 0
  b slotLoopStart
slotLoop:
  lwz r4, 0x50(r3) #getSlotNo/[soHeapModuleImpl]
  cmpwi r4, -1
  beq slotLoopNext
  lbz r3, 0x5a(r3) #getFighterId actual id you know that 0x110 thing
  lis r12, 0x800a
  ori r12, r12, 0xf80c
  mtctr r12 
  bctrl 
  lis r12, 0x800a
  ori r12, r12, 0xf5B4
  mtctr r12 
  bctrl 

  lis r3, 0x80B9
  lwz r3, -0x5930(r3)
  mulli r0, r31, 4
  lwzx r3, r3, r0
  lwz r4, 0x50(r3) #getSlotNo/[soHeapModuleImpl]
  #lbz r5, 0x5a(r3) #getFighterId actual id you know that 0x110 thing
  lbz r6, 0x5b(r3) #getFighterColour

  lis r3, 0x80B8
  addi r3, r3, 0x7fcc
  lis r12, 0x8085
  ori r12, r12, 0x0144
  mtctr r12 
  bctrl #    bl getModelResId/[ftCommonDataAccesser]
  cmplwi r3, 0xFFFF
  mr r30, r3
  beq slotLoopNext
  li r3, 0
  lis r12, 0x8077
  ori r12, r12, 0xA894
  mtctr r12 
  bctrl #    bl 0x8077A894 #getManager/[soArchiveDb]
  mr r4, r30
  li r5, 2 
  li r6, 0 #getResourceIdAccesser.getMdlResIndex
  li r7, 0 # always set to 0 # getGroupNo/[soResourceModuleImpl](1) #getResGroupNo/[ftFighterBuildData] #8089d7c8
  li r8, -1    
  lis r12, 0x8004
  ori r12, r12, 0x65F0
  mtctr r12 
  bctrl #    bl 0x800465F0 #getResFileFromId/[utArchiveManager]

slotLoopNext:
  #stLoaderManager
  addi r31, r31, 1
slotLoopStart:
  cmpwi r31, 4
  mulli r0, r31, 4
  lis r3, 0x80B9
  lwz r3, -0x5930(r3)
  lwzx r3, r3, r0
  bne slotLoop
slotLoopEnd:
}