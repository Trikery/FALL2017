import maya.cmds as cmds
import maya.mel as mel

def AddAttributes():
    mWindow = "Attribute_Window"

    if cmds.window(mWindow, exists=True):
        cmds.deleteUI(mWindow)

    mWindow = cmds.window (mWindow, title =  "Add Attributes Tools", iconName = "Attributes", widthHeight = (150, 300), sizeable = False)
    frame = cmds.frameLayout (label = "Add Attributes", bv = True)
    mainColumn = cmds.columnLayout (adj = True, parent = frame, co = ("both", 10))

    cmds.text(h=10, label=" ", parent=mainColumn)
    brokenFKButton = cmds.button (parent = mainColumn, label = "Basic Follow", h = 30, c =  lambda *args: FollowAttr())
    cmds.text(h=10, label="  ", parent=mainColumn)
    parScaleButton = cmds.button (parent = mainColumn, label = "Follow Translate/Rotate", h = 30, c =  lambda *args: FollowTranRot())
    cmds.text(h=10, label="   ", parent=mainColumn)
    parScaleButton = cmds.button (parent = mainColumn, label = "IKFK Switch", h = 30, c =  lambda *args: IKFKSwitch())
    cmds.showWindow(mWindow)


def FollowAttr():
    sels = cmds.ls (sl=True)
    cmds.addAttr (sels[0], ln = "Follow",  at = "enum", en = "World:Transform:COG:")
    cmds.setAttr ("%s.Follow" %sels[0], e = True, keyable = True)

def FollowTranRot():
    sels = cmds.ls (sl=True)
    cmds.addAttr (sels[0], ln = "FollowTranslate", at = "double", min = 0, max = 1, dv = 0)
    cmds.setAttr ("%s.FollowTranslate" %sels[0], e = True, keyable = True)
    cmds.addAttr (sels[0], ln = "FollowRotate", at = "double", min = 0, max = 1, dv = 0)
    cmds.setAttr ("%s.FollowRotate" %sels[0], e = True, keyable = True)

def IKFKSwitch():
    sels = cmds.ls (sl=True)
    cmds.addAttr (sels[0], ln = "IKFKSwitch", at = "double", min = 0, max = 1, dv = 0)
    cmds.setAttr ("%s.IKFKSwitch" %sels[0], e = True, keyable = True)
