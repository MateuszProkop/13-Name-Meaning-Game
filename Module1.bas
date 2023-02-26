Attribute VB_Name = "Module1"
Sub playNameGame()

start:
nameInput = Application.InputBox("Enter a name: ")

If IsNumeric(nameInput) Then
    GoTo start:
End If

'looking for provided name

LR = Sheet1.Cells(Rows.Count, 1).End(xlUp).Row

On Error Resume Next
nameDef = Application.WorksheetFunction.VLookup(nameInput, Sheet1.Range("a2:b" & LR), 2, 0)

If nameDef = Empty Then
    newDef = InputBox("I don't know the meaning of that one. What does it mean?")
    Sheet1.Cells(LR + 1, 1) = nameInput
    Sheet1.Cells(LR + 1, 2) = newDef
Else
    MsgBox "Name '" & nameInput & "' means '" & nameDef & "'."
End If
End Sub
