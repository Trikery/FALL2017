import maya.cmds as cmds
import maya.mel as mel


def CreateControlsWindow():
    mWindow = "Control_Creator_Window"

    if cmds.window(mWindow, exists=True):
        cmds.deleteUI(mWindow)

    mWindow = cmds.window(
        mWindow,
        title="Create Controls",
        iconName="Controls",
        widthHeight=(375, 200),
        sizeable = False)

    mainColumn = cmds.columnLayout(adj=True, parent=mWindow)
    cmds.text(h=30, label=" ", parent=mainColumn)
    sizeInput = cmds.floatSliderGrp (label = "Control Size", field = True, minValue = 1.0, maxValue = 15.0, fieldMinValue = 0.1, fieldMaxValue = 20, value = 1)
    cmds.separator(h=30)
    rotationInput = cmds.floatFieldGrp (numberOfFields =  3, label = "Rotation XYZ:", value1 = 0.0, value2 = 0.0, value3 = 0.0)
    cmds.separator(h=30)

    buttonFormLayout = cmds.formLayout(p=mainColumn, numberOfDivisions=100)
    createButton = cmds.button(label="Create",
                               command= lambda *args: CreateAndCloseCreCon(sizeInput, rotationInput, mWindow),
                               rs=True,
                               p=buttonFormLayout)
    applyButton = cmds.button(label="Apply",
                              command= lambda *args: AddControls(sizeInput, rotationInput),
                              rs=True,
                              p=buttonFormLayout)
    closeButton = cmds.button(label="Close",
                              command= lambda *args: cmds.deleteUI(mWindow, window=True),
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

def CreateAndCloseCreCon(sizeInput, rotationInput, whichWindow):
    AddControls(sizeInput, rotationInput)
    cmds.deleteUI(window=whichWindow)

def AddControls (sizeInput, rotationInput):
    getSize = cmds.floatSliderGrp (sizeInput, q = True, value = True)
    getX = cmds.floatFieldGrp (rotationInput, q = True, value1 = True)
    getY = cmds.floatFieldGrp (rotationInput, q = True, value2 = True)
    getZ = cmds.floatFieldGrp (rotationInput, q = True, value3 = True)

    sels = cmds.ls(sl=True)

    for sel in sels:
        circles = cmds.circle(c=(0, 0, 0), nr=(0, 1, 0), sw=360, r=1, d=3, ut=0, tol=0.01, s=8, ch=1)
        newName = cmds.rename(circles[0], (sel + "_Ctrl"))
        cmds.select(newName + ".cv[0:7]")
        cmds.rotate(getX, getY, getZ, r=True, os=True, fo=True)
        cmds.scale(getSize, getSize, getSize)
        cmds.SelectNone()
        ctrlGrp = cmds.group(newName, n=(newName + "_Grp"))
        cmds.matchTransform(ctrlGrp, sel)
        mel.eval('searchReplaceNames "_Jnt" "" hierarchy')
        mel.eval('searchReplaceNames "_Geo" "" hierarchy')

