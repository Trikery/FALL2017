import maya.cmds as cmds
import SequentialRenamer
import ControlColorWindow
import AddSuffixPrefix
import CreateControlsWindow
import LocatorCreator
import AddAttributes
import ConstraintTools
import TrikOutliner
import CreateFollow

def TrikToolbox():
    mWindow = "Toolbox_Window"

    if cmds.window(mWindow, exists=True):
        cmds.deleteUI(mWindow)

    mWindow = cmds.window (mWindow, title =  "Trikery's Toolbox", iconName = "Trik ToolBox", sizeable = False)
    frame = cmds.frameLayout (label = "Tools", bv = True)
    mainColumn = cmds.columnLayout (adj = True, parent = frame, co = ("both", 10))

    cmds.text(h=10, label=" ", parent=mainColumn)
    renameButton = cmds.button (parent = mainColumn, label = "Sequential Renamer", h = 30, c = lambda *args: SequentialRenamer.SequentialRenamer())
    cmds.text(h=10, label="  ", parent=mainColumn)
    controlsButton = cmds.button(parent=mainColumn, label="Control Creator", h=30, c = lambda *args: CreateControlsWindow.CreateControlsWindow())
    cmds.text(h=10, label="   ", parent=mainColumn)
    colorButton = cmds.button(parent=mainColumn, label="Control Color Changer", h=30, c = lambda *args: ControlColorWindow.ControlColorWindow())
    cmds.text(h=10, label="    ", parent=mainColumn)
    presufButton = cmds.button(parent=mainColumn, label="Add Suffix/Prefix", h=30, c = lambda *args: AddSuffixPrefix.AddSuffixPrefix())
    cmds.text(h=10, label="     ", parent=mainColumn)
    locatorButton = cmds.button(parent=mainColumn, label="Create Locator", h=30, c = lambda *args: LocatorCreator.LocatorCreator())
    cmds.text(h=10, label="      ", parent=mainColumn)
    attrButton = cmds.button(parent=mainColumn, label="Add Attributes", h=30, c = lambda *args: AddAttributes.AddAttributes())
    cmds.text(h=10, label="       ", parent=mainColumn)
    constrButton = cmds.button(parent=mainColumn, label="Constraint Tools", h=30, c = lambda *args: ConstraintTools.ConstraintTools())
    cmds.text(h=10, label="        ", parent=mainColumn)
    followButton = cmds.button(parent=mainColumn, label="Create Follow", h=30, c=lambda *args: CreateFollow.CreateFollow())
    cmds.text(h=10, label="         ", parent=mainColumn)
    outlinerButton = cmds.button(parent=mainColumn, label="Custom Outliner", h=30,c=lambda *args: TrikOutliner.TrikOutliner())

    cmds.showWindow(mWindow)
