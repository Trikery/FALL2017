import maya.cmds as cmds


def AddSuffixPrefix():
    mWindow = "Suffix_Prefix_Window"

    if cmds.window(mWindow, exists=True):
        cmds.deleteUI(mWindow)

    mWindow = cmds.window(
        mWindow,
        title="Add Suffix/Prefix",
        iconName="PreSuf",
        widthHeight=(375, 200),
        sizeable=False)

    mainColumn = cmds.columnLayout(adj=True, parent=mWindow)
    cmds.text(h=20, label=" ", parent=mainColumn)
    checkboxes = cmds.checkBoxGrp(numberOfCheckBoxes=2, label='Add: ', label1='Prefix', label2='Suffix', vertical=True,
                                  cl2=("right", "center"))
    cmds.separator(h=30)
    checkbox = cmds.checkBox( label='One' )
    prefixField = cmds.textFieldGrp(parent=mainColumn, label="Prefix Name", placeholderText="Enter Prefix")
    suffixField = cmds.textFieldGrp(parent=mainColumn, label="Suffix Name", placeholderText="Enter Suffix")
    cmds.separator(h=30)

    buttonFormLayout = cmds.formLayout(p=mainColumn, numberOfDivisions=100)
    createButton = cmds.button(label="Create",
                               command= lambda *args: CreateAndCloseSuf(prefixField, suffixField, checkboxes, mWindow),
                               rs=True,
                               p=buttonFormLayout)
    applyButton = cmds.button(label="Apply",
                              command= lambda *args: RenameSufList(prefixField, suffixField, checkboxes),
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


def CreateAndCloseSuf(prefixField, suffixInput, checkboxInput, whichWindow):
    RenameSufList(prefixField, suffixInput, checkboxInput)
    cmds.deleteUI(window=whichWindow)


def RenameSufList(prefixField, suffixInput, checkboxInput):
    sels = cmds.ls(sl=True)

    getPrefix = cmds.textFieldGrp(prefixField, q=True, text=True)
    getSuffix = cmds.textFieldGrp(suffixInput, q=True, text=True)

    isPrefix = cmds.checkBoxGrp(checkboxInput, q=True, value1=True)
    isSuffix = cmds.checkBoxGrp(checkboxInput, q=True, value2=True)

    if isSuffix == True:
        for sel in sels:
            cmds.rename(sel, (sel + "_" + getSuffix))

    if isPrefix == True:
        for sel in sels:
            cmds.rename(sel, (getPrefix + "_" + sel))

