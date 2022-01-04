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
  #r4 = player 1 
  lbz r3, 0xA(r14)
  lis r12, 0x800a
  ori r12, r12, 0xf80c
  mtctr r12 
  bctrl 
  lis r12, 0x800a
  ori r12, r12, 0xf5B4
  mtctr r12 
  bctrl 
  stw r3, 0x368(r31)
  #r4 = player 2
  lbz r3, 0xE(r14)
  lis r12, 0x800a
  ori r12, r12, 0xf80c
  mtctr r12 
  bctrl 
  lis r12, 0x800a
  ori r12, r12, 0xf5B4
  mtctr r12 
  bctrl 
  stw r3, 0x370(r31)
  #r4 = player 3
  lbz r7, 0x12(r14)
  #r4 = player 4
  lbz r8, 0x16(r14)
  mr r3, r31
#  0x35C = stage num
  li r0, 0
  stw r0, 0x35C(r3)
#  0x360 = team "blank" where blank is 
  stw r0, 0x360(r3)

#  0x364 = how many opponents there are
  li r0, 2
  stw r0, 0x364(r3)

#  0x368 = first enemy ID
#  li r0, 2
#  stw r0, 0x368(r3)

#  0x36C = enemy type, 0 | 1 = 1v2, 2 = giant, 3 = metal
  li r0, 0
  stw r0, 0x36C(r3)

##  0x370 = second enemy ID
#  li r0, 1
#  stw r6, 0x370(r3)

#  0x374 = second type
  li r0, 0
  stw r0, 0x374(r3)

#  0x378 = third enemy ID
  stw r0, 0x378(r3)
#  0x37C = third enemy type
  stw r0, 0x37C(r3)
#  0x380 = num of ally
  stw r0, 0x380(r3)
#  0x384 = ally ID
  stw r0, 0x384(r3)
#  0x388 = ally type
  stw r0, 0x388(r3)
#  0x38C = second ally
  stw r0, 0x38C(r3)
#  0x390 = second ally type
  stw r0, 0x390(r3)

  lwz r3, 0x14(r15)
  lis r4, 0x8070
  ori r4, r4, 0x2508 # 0x2508+688
  li r5, 0
  lis r12, 0x8002
  ori r12, r12, 0xD5AC
  mtctr r12
  bctrl
  li r0, 8
  stw r0, 0x8(r15)
return: 
  lis r12, 0x806D
  ori r12, r12, 0xCE70
  mtctr r12 
  bctr 
}
Announcer Time fixes [Eon]
word 0x30300000 @ $804559D4 #knuckles announce time set to 0x30 frames
word 0x30300000 @ $80455894 #mewtwo announce time set to 0x30 frames
word 0x30300000 @ $80455918 #roy announce time set to 0x2A frames
