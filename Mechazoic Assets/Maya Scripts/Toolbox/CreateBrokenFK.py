import maya.cmds as cmds
import maya.mel as mel


def CreateBrokenFK():
    jntList = cmds.ls(sl=True)
    ctrlList = []
    ctrlGrpList = []
    transParList = []
    rotParList = []

    mainName = jntList[0].replace("_Jnt", "")
    mainName = mainName.replace("_01", "")
    mainName = mainName.replace("_1", "")
    # print (mainName)

    # Establishes Scale factor for majority of objects
    jntScale = cmds.joint(jntList[0], q=True, radius=True)

    # Create FK Ctrl Grp
    fk_Group = cmds.CreateEmptyGroup()
    fk_Group = cmds.rename(fk_Group, (mainName + "_FK_Ctrl_Grp"))
    cmds.matchTransform(fk_Group, jntList[0])

    # Create FK Ctrl Grp Main
    main_Group = cmds.duplicate(rr=True)
    main_Group = cmds.rename(main_Group, (mainName) + "_Ctrl_Main")

    # Create Master Ctrl
    masterCtrl = cmds.spaceLocator(p=(0, 0, 0), name=(mainName + "_Master_Ctrl"))
    cmds.matchTransform(masterCtrl, main_Group)
    cmds.setAttr(mainName + "_Master_Ctrl" + "Shape.localScaleX", (jntScale[0] * 2))
    cmds.setAttr(mainName + "_Master_Ctrl" + "Shape.localScaleY", (jntScale[0] * 2))
    cmds.setAttr(mainName + "_Master_Ctrl" + "Shape.localScaleZ", (jntScale[0] * 2))

    # Group Such Accordingly
    cmds.parent(fk_Group, main_Group)
    cmds.parent(masterCtrl, main_Group)

    i = 0
    for jnt in jntList:
        # Create Ctrl and add it to ctrlList
        newName = jnt.replace("Jnt", "")
        newName = (newName + "_Ctrl")
        cmds.circle(c=(0, 0, 0), nr=(0, 1, 0), sw=360, r=1, d=3, ut=0, tol=0.01, s=8, ch=1, n=newName)
        ctrlScale = cmds.joint(jnt, q=True, radius=True)
        cmds.select(newName + ".cv[0:7]")
        cmds.rotate(0, 0, 90, r=True, os=True, fo=True)
        cmds.scale(ctrlScale[0], ctrlScale[0], ctrlScale[0])
        ctrlList.append(newName)

        # Add Rotate and Translate Attributes
        if i > 0:
            cmds.addAttr(newName, ln="FollowTranslate", at="double", min=0, max=1, dv=0)
            cmds.setAttr("%s.FollowTranslate" % newName, e=True, keyable=True)
            cmds.addAttr(newName, ln="FollowRotate", at="double", min=0, max=1, dv=0)
            cmds.setAttr("%s.FollowRotate" % newName, e=True, keyable=True)

        # Create Group and add it too the Group List
        cmds.SelectNone()
        ctrlGrp = cmds.group(newName, n=(newName + "_Grp"))
        ctrlGrpList.append(ctrlGrp)

        # Match Group Control to Joint
        cmds.matchTransform(ctrlGrp, jnt)
        cmds.parent(ctrlGrp, fk_Group)

        # Add Rotate and Translate Contraints  (inside and if statement to skip first)
        cmds.SelectNone()
        if i > 0:
            cmds.select(ctrlList[i - 1], r=True)
            cmds.select(ctrlGrpList[i], add=True)
            transpar = cmds.parentConstraint(mo=True, skipRotate=("x", "y", "z"), weight=1)
            transParList.append(transpar)
            rotpar = cmds.parentConstraint(mo=True, skipTranslate=("x", "y", "z"), weight=1)
            rotParList.append(rotpar)
            cmds.select(transpar, r=True)
            mel.eval('searchReplaceNames "parentConstraint1" "parentConstraint_Translate" hierarchy')
            cmds.select(rotpar, r=True)
            mel.eval('searchReplaceNames "parentConstraint2" "parentConstraint_Rotate" hierarchy')

            # Connect Rotate and Translate Nodes (inside an if statement to skip first)

            cmds.connectAttr((ctrlList[i] + ".FollowTranslate"),
                             (ctrlGrpList[i] + "_parentConstraint_Translate." + ctrlList[i - 1] + "W0"), f=True)
            cmds.connectAttr((ctrlList[i] + ".FollowRotate"),
                             (ctrlGrpList[i] + "_parentConstraint_Rotate." + ctrlList[i - 1] + "W0"), f=True)

        i += 1

        # Constrain Master Ctrl Grps
        cmds.select(masterCtrl, r=True)
        cmds.select(ctrlGrpList[0], add=True)
        cmds.parentConstraint(mo=True, weight=1)
        cmds.select(masterCtrl, r=True)
        cmds.select(fk_Group, add=True)
        cmds.scaleConstraint(mo=True, weight=1)

        # In the Event that I have the Time to finish my Follow Script, I'll add it here as well.  Window will have to come first though

        # Completed with Everything that Has to be done with Non-Follow Attributes

        # We'll need information on what the "COG" is (Whatever this FK Grp is suppossed to be Constrained to.

        # Add Follow Attribute to Master Ctrl

        # Constrain Scale COG

        # Constrain World, Transform, COG

        # Set Driven Keys for Master Ctrl


CreateBrokenFK()