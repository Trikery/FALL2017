import maya.cmds as cmds

def ControlColorWindow():
    mWindow = "Control_Color_Window"

    if cmds.window(mWindow, exists=True):
        cmds.deleteUI(mWindow)

    mWindow = cmds.window(
        mWindow,
        title="Change Drawing Override Color",
        iconName="Change Color",
        widthHeight=(375, 150))

    mainColumn = cmds.columnLayout(adj=True, parent=mWindow)
    cmds.text(h=10, label=" ", parent=mainColumn)
    cmds.separator(h=30)
    colorSlider = cmds.colorIndexSliderGrp(label = "Select Color     ",
    min = 0,
    max = 20,
    value = 5)

    buttonFormLayout = cmds.formLayout(p=mainColumn, numberOfDivisions=100)
    createButton = cmds.button(label="Create",
                               command= lambda *args: CreateAndCloseCcol(colorSlider, mWindow),
                               rs=True,
                               p=buttonFormLayout)
    applyButton = cmds.button(label="Apply",
                              command= lambda *args: CurveColor(colorSlider),
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

def CreateAndCloseCcol(color, whichWindow):
    CurveColor(color)
    cmds.deleteUI(window=whichWindow)

def CurveColor (color):
    sels = cmds.ls(sl=True)

    colorIndex = cmds.colorIndexSliderGrp (color, q = True, value = True)
    finalColor = colorIndex - 1

    for sel in sels:
        shapes = cmds.listRelatives (sel, c=True, s=True,)
        for shape in shapes:
            cmds.setAttr(" % s.overrideEnabled" % shape, 1)
            cmds.setAttr(" % s.overrideColor" % shape, finalColor)