import maya.cmds as cmds
import maya.mel as mel


def ConstraintTools():
    mWindow = "Constraint_Tools"

    if cmds.window(mWindow, exists=True):
        cmds.deleteUI(mWindow)

    mWindow = cmds.window(mWindow, title="Constraint Tools", iconName="Constrains", widthHeight=(300, 150),
                          sizeable=True)
    frame = cmds.frameLayout(label="Constainer Tools", bv=True)
    mainColumn = cmds.columnLayout(adj=True, parent=frame, co=("both", 10))
    cmds.text(h=10, label=" ", parent=mainColumn)
    cmds.text(h=20, label="  Selection Type:", al="left", parent=mainColumn)
    rad = cmds.radioButtonGrp(labelArray2=['Alternating', 'Two Groups'], cat=(1, "both", 70), numberOfRadioButtons=2,
                              vertical=True,
                              an1="Selecting Constrainer, then Constrainee, back and forth, Back, Forth, etc. You get it, right?",
                              an2="Select All Constrainers (IN ORDER), then Select All Constrainees (IN SAME ORDER)",
                              sl=1)

    cmds.text(h=10, label="  ", parent=mainColumn)
    brokenFKButton = cmds.button(parent=mainColumn, label="BrokenFK Constraint", h=30,
                                 c=lambda *args: BrokenFKCons(rad))
    cmds.text(h=10, label="   ", parent=mainColumn)
    parScaleButton = cmds.button(parent=mainColumn, label="Parent/Scale Constraint", h=30,
                                 c=lambda *args: ParentScaleCons(rad))

    cmds.showWindow(mWindow)


def MakeSelection(rads):
    get_rad = cmds.radioButtonGrp(rads, q=True, sl=True)
    sels = cmds.ls(sl=True)

    targets, nodes = [], []

    # Check if the array has an Even Value of Elements
    if len(sels) % 2:
        cmds.error("You Need to selet an Even Number of Objects")

    if get_rad == 1:
        # split targets from constraint nodes
        targets = sels[0::2]
        nodes = sels[1::2]

    elif get_rad == 2:
        targets = sels[:len(sels) / 2]
        nodes = sels[len(sels) / 2:]

    else:
        cmds.error("You did something that's not supposed to possible.  Congratulations :( ")

    return (targets, nodes)



def BrokenFKCons(rad):
    targets, nodes = MakeSelection(rad)

    print (targets)
    print (nodes)

    for i, element in enumerate(targets):
        cmds.select (targets[i], r = True)
        cmds.select(nodes[i], add=True)
        transpar = cmds.parentConstraint(mo=True, skipRotate=("x", "y", "z"), weight=1)
        rotpar = cmds.parentConstraint(mo=True, skipTranslate=("x", "y", "z"), weight=1)
        cmds.select(transpar, r=True)
        mel.eval('searchReplaceNames "parentConstraint1" "parentConstraint_Translate" hierarchy')
        cmds.select(rotpar, r=True)
        mel.eval('searchReplaceNames "parentConstraint2" "parentConstraint_Rotate" hierarchy')


def ParentScaleCons(rad):
    targets, nodes = MakeSelection(rad)
    for i, element in enumerate(targets):
        cmds.parentConstraint(targets[i], nodes[i], mo=True, weight=1)
        cmds.scaleConstraint(targets[i], nodes[i], mo=True, weight=1)

