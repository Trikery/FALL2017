import maya.cmds as cmds
import maya.mel as mel

def CreateFollow():
    mWindow = "Create_Follow_Switch"

    if cmds.window(mWindow, exists=True):
        cmds.deleteUI(mWindow)

    mWindow = cmds.window(
        mWindow,
        title="Create Follow Switch",
        iconName="Follow",
        widthHeight=(375, 300),
        sizeable=False)

    mainColumn = cmds.columnLayout(adj=True, parent=mWindow)

    cmds.text(h=20, label=" ", parent=mainColumn)
    #check = cmds.checkBoxGrp(numberOfCheckBoxes=1, label='Add Follow: ', cal=(1, "right"), value1 = True,
    #                         changeCommand=lambda *args: CheckShowControls(check, worldField, transformField, cogField))
    #cmds.text(h=10, label="  ", parent=mainColumn)
    cmds.text(h=15, label="Drag and Drop:", parent=mainColumn)
    cmds.text(h=5, label="   ", parent=mainColumn)
    worldField = cmds.textFieldGrp(parent=mainColumn, label="World:", pht="World")
    transformField = cmds.textFieldGrp(parent=mainColumn, label="Transform:", pht="Transform_Ctrl")
    cogField = cmds.textFieldGrp(parent=mainColumn, label="COG", pht="COG_Ctrl")
    cmds.text(h=10, label="     ", parent=mainColumn)
    cmds.text(h=10, label="   Select Ctrl, Select Group", al="left")
    cmds.text(h=10, label="    ", parent=mainColumn)
    cmds.separator(h=30)

    buttonFormLayout = cmds.formLayout(p=mainColumn, numberOfDivisions=100)
    createButton = cmds.button(label="Create",
                               command=lambda *args: CreateAndCloseFol(worldField, transformField, cogField, mWindow),
                               rs=True,
                               p=buttonFormLayout)
    applyButton = cmds.button(label="Apply",
                              command=lambda *args: ApplyFollowSwitch(worldField, transformField, cogField),
                              rs=True,
                              p=buttonFormLayout)
    closeButton = cmds.button(label="Close",
                              command=lambda *args: cmds.deleteUI(mWindow, window=True),
                              rs=True,
                              p=buttonFormLayout)
    cmds.formLayout(buttonFormLayout, edit=True,
                    attachPosition=[
                        (createButton, "left", 5, 0),
                        (createButton, "right", 5, 33),
                        (applyButton, "left", 0, 33),
                        (applyButton, "right", 0, 67),
                        (closeButton, "left", 5, 67),
                        (closeButton, "right", 5, 100)])

    cmds.showWindow(mWindow)

# This Function is used for Making the textFields disable and enable when a checkbox is marked or unmarked
def CheckShowControls(check, worldField, transformField, cogField):
    checkBool = cmds.checkBoxGrp(check, q=True, value1=True)
    if checkBool:
        cmds.textFieldGrp(worldField, e=True, enable=True)
        cmds.textFieldGrp(transformField, e=True, enable=True)
        cmds.textFieldGrp(cogField, e=True, enable=True)
    elif not checkBool:
        cmds.textFieldGrp(worldField, e=True, enable=False)
        cmds.textFieldGrp(transformField, e=True, enable=False)
        cmds.textFieldGrp(cogField, e=True, enable=False)
    else:
        cmds.error("You Broke Something...")
    print (checkBool)

# Activates main Function and then closes window
def CreateAndCloseFol(worldField, transformField, cogField, whichWindow):
    worldName = cmds.textFieldGrp(worldField, q=True, text=True)
    if worldName == "":
        worldName = "World"
    else:
        worldName = worldName.rpartition('|')
        worldName = worldName[-1]
    transName = cmds.textFieldGrp(transformField, q=True, text=True)
    if transName == "":
        transName = "Transform_Ctrl"
    else:
        transName = transName.rpartition('|')
        transName = transName[-1]
    cogName = cmds.textFieldGrp(cogField, q=True, text=True)
    if cogName == "":
        cogName = "COG_Ctrl"
    else:
        cogName = cogName.rpartition('|')
        cogName = cogName[-1]

    if cmds.objExists(worldName):
        if cmds.objExists(transName):
            if cmds.objExists(cogName):
                ApplyFollowSwitch(worldField, transformField, cogField)
                cmds.deleteUI(whichWindow, window=True)
            else:
                cmds.error("Obj: " + cogName + " Does not Exist")
        else:
            cmds.error("Obj: " + transName + " Does not Exist")
    else:
        cmds.error("Obj: " + worldName + " Does not Exist")

# The Meat
def ApplyFollowSwitch(worldField, transformField, cogField):
    print ("Apply")
    worldName = cmds.textFieldGrp(worldField, q=True, text=True)
    if worldName == "":
        worldName = "World"
    else:
        worldName = worldName.rpartition('|')
        worldName = worldName[-1]
    transName = cmds.textFieldGrp(transformField, q=True, text=True)
    if transName == "":
        transName = "Transform_Ctrl"
    else:
        transName = transName.rpartition('|')
        transName = transName[-1]
    cogName = cmds.textFieldGrp(cogField, q=True, text=True)
    if cogName == "":
        cogName = "COG_Ctrl"
    else:
        cogName = cogName.rpartition('|')
        cogName = cogName[-1]




    # Check for Name Existance
    if cmds.objExists(worldName):
        if cmds.objExists(transName):
            if cmds.objExists(cogName):
                sels = cmds.ls(sl=True)

                # Add Follow Attribute to Master Ctrl
                new_COG_name = cogName.replace("_Ctrl", "")
                cmds.select (sels[0], r = True)
                cmds.addAttr(sels[0], ln="Follow", at="enum", en="World:Transform:"+ new_COG_name + ":")
                cmds.setAttr("%s.Follow" % sels[0], e=True, keyable=True)

                # Constrain World, Transform, COG
                cmds.select(worldName, r=True)
                cmds.select(transName, add=True)
                cmds.select(cogName, add=True)
                cmds.select(sels[1], add=True)
                parcon = cmds.parentConstraint(mo=True, weight=1)
                scalecon = cmds.scaleConstraint(mo=True, weight=1)

                cons = [worldName, transName, cogName]
                vals = [1, 0, 0]

                for i, val in enumerate(vals):
                    cmds.setAttr("%s.Follow" % sels[0], i)
                    for j, con in enumerate(cons):
                        cmds.setAttr(sels[1] + "_parentConstraint1." + con + "W" + str(j), vals[j])
                    for j, con in enumerate(cons):
                        cmds.setAttr(sels[1] + "_scaleConstraint1." + con + "W" + str(j), vals[j])
                    for j, con in enumerate(cons):
                        cmds.setDrivenKeyframe((sels[1] + "_parentConstraint1." + con + "W" + str(j)),
                                               cd=(sels[0] + ".Follow"))
                    for j, con in enumerate(cons):
                        cmds.setDrivenKeyframe((sels[1] + "_scaleConstraint1." + con + "W" + str(j)),
                                               cd=(sels[0] + ".Follow"))

                    if val != vals[-1]:
                        vals[i] = 0
                        vals[i + 1] = 1

                # for Loop (for i, val in enumerate(vals) does this --v
                '''
                # Change Attributes
                cmds.setAttr("%s.Follow" % sels[0], 0)
                cmds.setAttr(sels[1] + "_parentConstraint1." + worldName + "W0", 1)
                cmds.setAttr(sels[1] + "_parentConstraint1." + transName + "W1", 0)
                cmds.setAttr(sels[1] + "_parentConstraint1." + cogName + "W2", 0)
                cmds.setAttr(sels[1] + "_scaleConstraint1." + worldName + "W0", 1)
                cmds.setAttr(sels[1] + "_scaleConstraint1." + transName + "W1", 0)
                cmds.setAttr(sels[1] + "_scaleConstraint1." + cogName + "W2", 0)

                # Set Driven Keys for World
                cmds.setDrivenKeyframe((sels[1] + "_parentConstraint1." + worldName + "W0"), cd=(sels[0] + ".Follow"))
                cmds.setDrivenKeyframe((sels[1] + "_parentConstraint1." + transName + "W1"), cd=(sels[0] + ".Follow"))
                cmds.setDrivenKeyframe((sels[1] + "_parentConstraint1." + cogName + "W2"), cd=(sels[0] + ".Follow"))
                cmds.setDrivenKeyframe((sels[1] + "_scaleConstraint1." + worldName + "W0"), cd=(sels[0] + ".Follow"))
                cmds.setDrivenKeyframe((sels[1] + "_scaleConstraint1." + transName + "W1"), cd=(sels[0] + ".Follow"))
                cmds.setDrivenKeyframe((sels[1] + "_scaleConstraint1." + cogName + "W2"), cd=(sels[0] + ".Follow"))

                # Change Attributes
                cmds.setAttr("%s.Follow" % sels[0], 1)
                cmds.setAttr(sels[1] + "_parentConstraint1." + worldName + "W0", 0)
                cmds.setAttr(sels[1] + "_parentConstraint1." + transName + "W1", 1)
                cmds.setAttr(sels[1] + "_parentConstraint1." + cogName + "W2", 0)
                cmds.setAttr(sels[1] + "_scaleConstraint1." + worldName + "W0", 0)
                cmds.setAttr(sels[1] + "_scaleConstraint1." + transName + "W1", 1)
                cmds.setAttr(sels[1] + "_scaleConstraint1." + cogName + "W2", 0)

                # Set Driven Keys for Transform
                cmds.setDrivenKeyframe((sels[1] + "_parentConstraint1." + worldName + "W0"), cd=(sels[0] + ".Follow"))
                cmds.setDrivenKeyframe((sels[1] + "_parentConstraint1." + transName + "W1"), cd=(sels[0] + ".Follow"))
                cmds.setDrivenKeyframe((sels[1] + "_parentConstraint1." + cogName + "W2"), cd=(sels[0] + ".Follow"))
                cmds.setDrivenKeyframe((sels[1] + "_scaleConstraint1." + worldName + "W0"), cd=(sels[0] + ".Follow"))
                cmds.setDrivenKeyframe((sels[1] + "_scaleConstraint1." + transName + "W1"), cd=(sels[0] + ".Follow"))
                cmds.setDrivenKeyframe((sels[1] + "_scaleConstraint1." + cogName + "W2"), cd=(sels[0] + ".Follow"))

                # Change Attributes
                cmds.setAttr("%s.Follow" % sels[0], 2)
                cmds.setAttr(sels[1] + "_parentConstraint1." + worldName + "W0", 0)
                cmds.setAttr(sels[1] + "_parentConstraint1." + transName + "W1", 0)
                cmds.setAttr(sels[1] + "_parentConstraint1." + cogName + "W2", 1)
                cmds.setAttr(sels[1] + "_scaleConstraint1." + worldName + "W0", 0)
                cmds.setAttr(sels[1] + "_scaleConstraint1." + transName + "W1", 0)
                cmds.setAttr(sels[1] + "_scaleConstraint1." + cogName + "W2", 1)

                # Set Driven Keys for Transform
                cmds.setDrivenKeyframe((sels[1] + "_parentConstraint1." + worldName + "W0"), cd=(sels[0] + ".Follow"))
                cmds.setDrivenKeyframe((sels[1] + "_parentConstraint1." + transName + "W1"), cd=(sels[0] + ".Follow"))
                cmds.setDrivenKeyframe((sels[1] + "_parentConstraint1." + cogName + "W2"), cd=(sels[0] + ".Follow"))
                cmds.setDrivenKeyframe((sels[1] + "_scaleConstraint1." + worldName + "W0"), cd=(sels[0] + ".Follow"))
                cmds.setDrivenKeyframe((sels[1] + "_scaleConstraint1." + transName + "W1"), cd=(sels[0] + ".Follow"))
                cmds.setDrivenKeyframe((sels[1] + "_scaleConstraint1." + cogName + "W2"), cd=(sels[0] + ".Follow"))

                '''


            else:
                cmds.error("Obj: " + cogName + " Does not Exist")
        else:
            cmds.error("Obj: " + transName + " Does not Exist")
    else:
        cmds.error("Obj: " + worldName + " Does not Exist")

    # a Last Little Warning System in case the Objects aren't scales correctly
    w_scale = cmds.xform(worldName, q=True, ws=True, s=True)
    t_scale = cmds.xform(transName, q=True, ws=True, s=True)
    c_scale = cmds.xform(cogName, q=True, ws=True, s=True)

    if w_scale != [1.0, 1.0, 1.0]:
        cmds.warning ("object: " + worldName + ".Scale has non-single values which may cause undesired scaling. Scale Values should be [1,1,1]")
    if t_scale != [1.0, 1.0, 1.0]:
        cmds.warning ("object: " + transName + ".Scale has non-single values which may cause undesired scaling. Scale Values should be [1,1,1]")
    if c_scale != [1.0, 1.0, 1.0]:
        cmds.warning ("object: " + cogName + ".Scale has non-single values which may cause undesired scaling. Scale Values should be [1,1,1]")