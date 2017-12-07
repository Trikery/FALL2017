import maya.cmds as cmds


def LocatorCreator():
    mWindow = "Center_Locator_Window"

    if cmds.window(mWindow, exists=True):
        cmds.deleteUI(mWindow)

    mWindow = cmds.window(
        mWindow,
        title="Center Locator",
        iconName="Midloc",
        widthHeight=(200, 200),
        sizeable=False)
    mainColumn = cmds.columnLayout(adj=True, parent=mWindow)
    cmds.text(h=20, label=" ", parent=mainColumn)
    radioField = cmds.radioButtonGrp(numberOfRadioButtons=2,
                                     label='Create Locator: ',
                                     vertical=True,
                                     labelArray2=['For Group', 'For Each'],
                                     cl2=("center", "left"),
                                     select=1,
                                     p=mainColumn)

    cmds.separator(h=30)
    buttonFormLayout = cmds.formLayout(p=mainColumn, numberOfDivisions=100)
    createButton = cmds.button(label="Create",
                               command= lambda *args: CreateAndCloseLoc(radioField, mWindow),
                               rs=True,
                               p=buttonFormLayout)
    applyButton = cmds.button(label="Apply",
                              command= lambda *args: CenterLocatorCommand(radioField),
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


def CreateAndCloseCreCon(radioField, whichWindow):
    CenterLocatorCommand(radioField)
    cmds.deleteUI(window=whichWindow)


def CenterLocatorCommand(whichRadio):
    getRadio = cmds.radioButtonGrp(whichRadio, q=True, select=True)
    if getRadio == 1:
        CreateLocatorSingle()
    if getRadio == 2:
        CreateLocatorAll()


def CreateLocatorSingle():
    sels = cmds.ls(sl=True)
    clust = cmds.cluster()
    loc = cmds.spaceLocator(n=(sels[0] + "_Loc"), p=(0, 0, 0))
    cmds.matchTransform(loc, clust)
    cmds.delete(clust)
    cmds.select(cl=True)


def CreateLocatorAll():
    sels = cmds.ls(sl=True)

    for sel in sels:
        cmds.select(sel, r=True)
        clust = cmds.cluster()
        loc = cmds.spaceLocator(n=(sel + "_Loc"), p=(0, 0, 0))
        cmds.matchTransform(loc, clust)
        cmds.delete(clust)
        cmds.select(cl=True)

