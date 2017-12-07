import maya.cmds as cmds


def SequentialRenamer():
    mWindow = "Control_Color_Window"

    if cmds.window(mWindow, exists=True):
        cmds.deleteUI(mWindow)

    mWindow = cmds.window(
        mWindow,
        title="Rename Sequentially",
        iconName="Change Name",
        widthHeight=(375, 200),
        sizeable = False)

    mainColumn = cmds.columnLayout(adj=True, parent=mWindow)
    cmds.text(h=30, label=" ", parent=mainColumn)
    nameField = cmds.textFieldGrp(parent=mainColumn, label="Name", placeholderText="Enter name")

    suffixField = cmds.textFieldGrp(parent=mainColumn, label="Suffix Name", placeholderText="Enter suffix")
    cmds.separator(h=30)

    buttonFormLayout = cmds.formLayout(p=mainColumn, numberOfDivisions=100)
    createButton = cmds.button(label="Create",
                               command= lambda *args: CreateAndCloseRenam(nameField, suffixField, mWindow),
                               rs=True,
                               p=buttonFormLayout)
    applyButton = cmds.button(label="Apply",
                              command= lambda *args: RenameList(nameField, suffixField),
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


def CreateAndCloseRenam(nameInput, suffixInput, whichWindow):
    RenameList(nameInput, suffixInput)
    cmds.deleteUI(window=whichWindow)


def RenameList(nameInput, suffixInput):
    sels = cmds.ls(sl=True)

    getName = cmds.textFieldGrp(nameInput, q=True, text=True)
    getSuffix = cmds.textFieldGrp(suffixInput, q=True, text=True)
    num = 0

    for sel in sels:
        num += 1
        if (num < 10):
            cmds.rename(sel, getName + "_" + "0" + str(num) + "_" + getSuffix)

        else:
            cmds.rename(sel, getName + "_" + str(num) + "_" + getSuffix)

