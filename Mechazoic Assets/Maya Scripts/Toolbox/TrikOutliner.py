import maya.cmds as cmds


def TrikOutliner():
    mWindow = "Trikery's Outliner"

    if cmds.window(mWindow, exists=True):
        cmds.deleteUI(mWindow)

    sels = cmds.ls(sl=True)

    mWindow = cmds.window(mWindow, title="Trikery's Outliner", iconName="Trik Outliner", sizeable=True)

    mainForm = cmds.formLayout(parent=mWindow, numberOfDivisions=100)

    cmds.text(h=10, l=" ")
    buttonFormLayout = cmds.formLayout(p=mainForm, numberOfDivisions=100)
    addButton = cmds.button(label="Add",
                            command=lambda *args: Add(scroll_List),
                            rs=True,
                            p=buttonFormLayout)
    removeButton = cmds.button(label="Remove",
                               command=lambda *args: Remove(scroll_List),
                               rs=True,
                               p=buttonFormLayout)
    clearButton = cmds.button(label="Clear",
                              command=lambda *args: Clear(scroll_List),
                              rs=True,
                              p=buttonFormLayout)
    sortButton = cmds.button(label="Sort",
                             command=lambda *args: Sort(scroll_List),
                             rs=True,
                             p=buttonFormLayout)
    cmds.formLayout(buttonFormLayout, edit=True, attachPosition=[
        (addButton, "left", 5, 0),
        (addButton, "right", 5, 25),
        (removeButton, "left", 0, 25),
        (removeButton, "right", 0, 50),
        (clearButton, "left", 5, 50),
        (clearButton, "right", 5, 75),
        (sortButton, "left", 0, 75),
        (sortButton, "right", 5, 100)])

    sepr_one = cmds.separator(h=10, p=mainForm)

    orgButtonFormLayout = cmds.formLayout(p=mainForm, numberOfDivisions=100)
    upButton = cmds.button(label="Up",
                           command=lambda *args: Up(scroll_List),
                           rs=True,
                           p=orgButtonFormLayout,
                           h=25)
    downButton = cmds.button(label = "Down",
                             command=lambda *args: Down(scroll_List),
                             rs = True,
                             p=orgButtonFormLayout,
                             h=25)
    cmds.formLayout(orgButtonFormLayout, edit=True, attachPosition=[
        (upButton, "left", 5, 0),
        (upButton, "right", 0, 50),
        (downButton, "left", 5, 50),
        (downButton, "right", 5, 100)])

    scrollFormLayout = cmds.formLayout(p=mainForm, numberOfDivisions=100)

    scroll_List = cmds.textScrollList(allowMultiSelection=True,
                                      append=sels, selectCommand=lambda *args: MakeSelection(scroll_List),
                                      showIndexedItem=1, parent=scrollFormLayout)
    cmds.formLayout(scrollFormLayout, edit=True, attachPosition=[
        (scroll_List, "left", 5, 0),
        (scroll_List, "right", 5, 100),
        (scroll_List, "top", 0, 0),
        (scroll_List, "bottom", 5, 100)])

    sepr_two = cmds.separator(h=10, p=mainForm)

    cmds.formLayout(mainForm, edit=True, attachPosition=[
        (buttonFormLayout, "left", 5, 0),
        (buttonFormLayout, "right", 5, 100),
        (buttonFormLayout, "top", 10, 0),
        (sepr_one, "left", 10, 0),
        (sepr_one, "right", 10, 100),
        (orgButtonFormLayout, "left", 5, 0),
        (orgButtonFormLayout, "right", 5, 100),
        (scrollFormLayout, "left", 5, 0),
        (scrollFormLayout, "right", 5, 100),
        (sepr_two, "bottom", 0, 100)], attachControl=[
        (sepr_one, "top", 2, buttonFormLayout),
        (orgButtonFormLayout, "top", 2, sepr_one),
        (scrollFormLayout, "top", 0, orgButtonFormLayout),
        (scrollFormLayout, "bottom", 0, sepr_two)])

    cmds.showWindow()


def MakeSelection(scroll):
    selection = cmds.textScrollList(scroll, q=True, selectItem=True)
    cmds.select(selection, r=True)


def Add(scroll):
    sels = cmds.ls(sl=True)
    selection = cmds.textScrollList(scroll, q=True, ai=True)

    if not selection:
        cmds.textScrollList(scroll, e=True, append=sels)
    else:
        for sel in sels:
            if sel not in selection:
                cmds.textScrollList(scroll, e=True, append=sel)


def Remove(scroll):
    sels = cmds.ls(sl=True)
    cmds.textScrollList(scroll, e=True, removeItem=sels)


def Clear(scroll):
    cmds.textScrollList(scroll, e=True, removeAll=True)


def Sort(scroll):
    selection = cmds.textScrollList(scroll, q=True, ai=True)
    ordered = sorted(selection)
    cmds.textScrollList(scroll, e=True, removeAll=True)
    cmds.textScrollList(scroll, e=True, append=ordered)


def Up(scroll):
    sels = cmds.ls(sl=True)
    selection = cmds.textScrollList(scroll, q=True, ai=True)
    for i, item in enumerate(selection):
        if i != 0:
            if item in sels:
                cmds.textScrollList(scroll, e=True, removeItem=item)
                cmds.textScrollList(scroll, e=True, appendPosition = [i, item])
    if sels[0] == selection[0]:
        cmds.textScrollList(scroll, e=True, removeItem=sels[0])
        cmds.textScrollList(scroll, e=True, appendPosition = [1, sels[0]])
    cmds.textScrollList(scroll, e=True, selectItem=sels)
    cmds.select(sels, r=True)


def Down(scroll):
    sels = cmds.ls(sl=True)
    selection = cmds.textScrollList(scroll, q=True, ai=True)
    for i, item in enumerate(selection):
        if i != -1:
            if item in sels:
                cmds.textScrollList(scroll, e=True, removeItem=item)
                cmds.textScrollList(scroll, e=True, appendPosition=[i+2, item])
    if sels[-1] == selection[-1]:
        cmds.textScrollList(scroll, e=True, removeItem=sels[-1])
        last_position = selection.index(selection[-1])
        cmds.textScrollList(scroll, e=True, appendPosition=[last_position+1, sels[-1]])
    cmds.textScrollList(scroll, e=True, selectItem=sels)
    cmds.select(sels, r = True)
