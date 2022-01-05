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
Announcer Time fixes [Eon]
word 0x30300000 @ $804559D4 #knuckles announce time set to 0x30 frames
word 0x30300000 @ $80455894 #mewtwo announce time set to 0x30 frames
word 0x30300000 @ $80455918 #roy announce time set to 0x2A frames
