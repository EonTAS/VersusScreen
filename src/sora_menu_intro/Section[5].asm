dataSection:
commonBrresString:
.string "/menu/intro/enter/cmn.brres"
.p2align 2
miniBrresString:
.string "/menu/intro/enter/mini%d.brres"
.p2align 2
introString:
.string "Intro"
.p2align 2
charCommonBrresString:
.string "/menu/intro/enter/chrcmn.brres"
.p2align 2
ItrSimpleMapString:
.string "ItrSimpleMap0000_TopN"
.p2align 3
ItrSimplPanel00String:
.string "ItrSimplePanel0000_TopN"
.p2align 2
ItrSimplPanel01String:
.string "ItrSimplePanel0001_TopN"
.p2align 2
ItrSimplPanel02String:
.string "ItrSimplePanel0002_TopN"
.p2align 2
ItrSimplPanel10String:
.string "ItrSimplePanel0010_TopN"
.p2align 2

posString:
.string "pos%02d"
.p2align 2
chrString:
.string "chr"
.p2align 2
bigChrString:
.string "Chr"
.p2align 2
entryString:
.string "/menu/intro/enter/%s%04d.brres"
.p2align 2
itrSimpleTopNXString:
.string "ItrSimple%s%04d_TopN__%d"
.p2align 3
itrSimpleTopN0String:
.string "ItrSimple%s%04d_TopN__0"
.p2align 2
zeroString:
.string "__0"
.p2align 2
simpleMapTopNXString:
.string "ItrSimpleMap0000_TopN__%d"
.p2align 2

scIntroName:
.string "scIntro"
.p2align 2
scIntroInheritance:
        .4byte 0x00000000         [R_PPC_ADDR32(13, 5, "gfSceneHeader")]
        .4byte 0x00000000
        .4byte 0x00000000         [R_PPC_ADDR32(13, 5, "muMenuHeader")]
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000

scIntroHeader:
        .4byte 0x00000000         [R_PPC_ADDR32(13, 5, "scIntroName")]
        .4byte 0x00000000         [R_PPC_ADDR32(13, 5, "scIntroInheritance")]
        
muMenuName:
.string "muMenu"
.p2align 2
muMenuInheritance:
        .4byte 0x00000000         [R_PPC_ADDR32(13, 5, "gfSceneHeader")]
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
muMenuHeader:
        .4byte 0x00000000         [R_PPC_ADDR32(13, 5, "muMenuName")]
        .4byte 0x00000000         [R_PPC_ADDR32(13, 5, "muMenuInheritance")]
gfSceneName:
.string "gfScene"
.p2align 2
gfSceneHeader:
        .4byte 0x00000000         [R_PPC_ADDR32(13, 5, "gfSceneName")]
        .4byte 0x00000000
muIntroTaskObj:
        .4byte 0x00000000         [R_PPC_ADDR32(13, 5, "muIntroTaskHeader")]
        .4byte 0x00000000
        .4byte 0x00000000         [R_PPC_ADDR32(13, 1, "muIntroTask__processDefault")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__processBegin")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__processAnim")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__processUpdate")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__processPreMapCorrection")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__processMapCorrection")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__processFixPosition")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__processPreCollision")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__processCollision")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__processCatch")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__processHit")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__processCamera")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__processFixCamera")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__processEffect")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__processGameProc")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__processEnd")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__renderPre")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__renderOpa")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__renderXlu")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__processDebug")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__renderDebug")]
        .4byte 0x00000000         [R_PPC_ADDR32(0, 4, "gfTask__init")]
        .4byte 0x00000000         [R_PPC_ADDR32(13, 1, "muIntroTask____dt")]
muIntroTaskName:
.string "muIntroTask"
.p2align 2
muIntroTaskInheritance:
        .4byte 0x00000000         [R_PPC_ADDR32(13, 5, "gfTaskHeader")]
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
muIntroTaskHeader:
        .4byte 0x00000000         [R_PPC_ADDR32(13, 5, "muIntroTaskName")]
        .4byte 0x00000000         [R_PPC_ADDR32(13, 5, "muIntroTaskInheritance")]
gfTaskName:
.string "gfTask"
.p2align 2
gfTaskHeader:
        .4byte 0x00000000         [R_PPC_ADDR32(13, 5, "gfTaskName")]
        .4byte 0x00000000
unresolvedMessage:
.string "mo_menu.cpp"