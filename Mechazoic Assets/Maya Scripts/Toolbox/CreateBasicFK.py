import maya.cmds as cmds


def CreateBasicFK():
    #Create Groups for Jnts, Ctrls, and CtrlGroups
    jntList = cmds.ls(sl=True)
    ctrlList = []
    ctrlGrpList = []

    i = 0
    for jnt in jntList:

        # Create Ctrl and add it to ctrlList;
        newName = jnt.replace("Jnt", "Ctrl")
        print (jnt)
        print (newName)
        newName = newName.replace("Geo", "Ctrl")
        circles = cmds.circle(c=(0, 0, 0), nr=(0, 1, 0), sw=360, r=1, d=3, ut=0, tol=0.01, s=8, ch=1)
        newName = cmds.rename (circles[0], newName)

        ctrlScale = cmds.joint(jnt, q=True, radius=True)
        cmds.select(newName + ".cv[0:7]")
        cmds.rotate(0, 0, 90, r=True, os=True, fo=True)
        print (ctrlScale)
        cmds.scale(ctrlScale[0], ctrlScale[0], ctrlScale[0])

        ctrlList.append(newName)

        # Create Group and add it too the Group List
        cmds.SelectNone()
        ctrlGrp = cmds.group(newName, n=(newName + "_Grp"))
        ctrlGrpList.append(ctrlGrp)

        # Match Group Control to Joint
        cmds.matchTransform(ctrlGrp, jnt)

        # Contstrain Control to Joint
        cmds.select(ctrlList[i], r=True)
        cmds.select(jntList[i], add=True)
        cmds.parentConstraint(mo=True, weight=1)
        cmds.scaleConstraint(mo=True, weight=1)
        cmds.SelectNone()

        # Parent Controls
        if (i > 0):
            cmds.select(ctrlGrpList[i], r=True)
            cmds.select(ctrlList[i - 1], add=True)
            cmds.parent()

        i += 1
    # Group all Controls under Main Group
    cmds.SelectNone()
    cmds.select(ctrlGrpList[0])
    cmds.group(n=(ctrlGrpList[0] + "_Main"))


CreateBasicFK()