On Error Resume Next

Dim myArray(5)

For i = 0 To 10
  myArray(i) = i * 2
Next

If Err.Number <> 0 Then
  MsgBox "Error accessing array element: " & Err.Description & " at index: " & i
  Err.Clear
End If

On Error GoTo 0