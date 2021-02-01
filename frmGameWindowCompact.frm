VERSION 5.00

Attribute VB_Name = "frmGameWindow"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ArrayGrid(19, 9) As Label

Private Sub cmdSTART_Click()
'hide start button so key inputs can be registered
cmdSTART.Visible = False
'start the timer for moving the shapes down the screen
timer.Enabled = True
i = 0

'initialize the 2d array for displaying shapes with labels
For row = 0 To 19
    For Column = 0 To 9
        Set ArrayGrid(row, Column) = lblBlock(i)
        i = i + 1
    Next Column
Next row
            
'generate the random shape
Call randomShape

End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'When the "d" key is pressed and the horizontal position of the centre is less than the limit depending on the shape
If KeyCode = vbKeyD And lblMoveReleased.Caption = "1" And lblHorizontalPosition.Caption < lblUpperLimit.Caption Then
    Select Case lblRotationCounter.Caption
        'if the rotation counter is 0 then
        Case Is = 0
            Select Case lblCurrentShape.Caption
                'if triangle is the current shape then
                Case Is = "triangle"
                    'check if the spaces to the right that the shape will move to are clear
                    If ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 2).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 Then
                        'clear the current shape displayed
                        Call ClearTriangle0
                        'move the centre point of the shape over to the right by one
                        lblHorizontalPosition.Caption = lblHorizontalPosition.Caption + 1
                        'display shape in the new position
                        Call Triangle0
                    End If
                    
                'if block is the current shape then
                Case Is = "block"
                    'check if the spaces to the right that the shape will move into are clear
                    If ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 2).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 2).BackColor = &H808080 Then
                        'clear the current shape displayed
                        Call clearBlock0
                        'move the centre point of the shape over to the right by one
                        lblHorizontalPosition.Caption = lblHorizontalPosition.Caption + 1
                        'display shape in the new position
                        Call Block0
                    End If
                    
                'if the block is the current shape then
                Case Is = "longline"
                    'check if the spaces to the right that the shape will move into are clear
                    If ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 2).BackColor = &H808080 Then
                        'clear the current shape displayed
                        Call clearLongLine0
                        'move the centre point of the shape over to the right by one
                        lblHorizontalPosition.Caption = lblHorizontalPosition.Caption + 1
                        'display shape in the new position
                        Call LongLine0
                    End If
                    
                Case Is = "longl"
                    If ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 2).BackColor = &H808080 Then
                        Call ClearLongL0
                        lblHorizontalPosition.Caption = lblHorizontalPosition.Caption + 1
                        Call LongL0
                    End If
            End Select
            
        'if the shape has been rotated once
        Case Is = 1
            Select Case lblCurrentShape.Caption
                Case Is = "triangle"
                    If ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 2).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 Then
                        Call ClearTriangle1
                        lblHorizontalPosition.Caption = lblHorizontalPosition.Caption + 1
                        Call Triangle1
                    End If
                Case Is = "longline"
                    If ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 Then
                        Call clearLongLine1
                        lblHorizontalPosition.Caption = lblHorizontalPosition.Caption + 1
                        Call LongLine1
                    End If
                Case Is = "longl"
                        If ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 Then
                            Call ClearLongL1
                            lblHorizontalPosition.Caption = lblHorizontalPosition.Caption + 1
                            Call LongL1
                        End If
            End Select
                
        'if the shape has been rotated twice
        Case Is = 2
            Select Case lblCurrentShape.Caption
                Case Is = "triangle"
                    If ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 2).BackColor = &H808080 Then
                        Call ClearTriangle2
                        lblHorizontalPosition.Caption = lblHorizontalPosition.Caption + 1
                        Call Triangle2
                    End If
                Case Is = "longl"
                    If ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption + 2).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 2).BackColor = &H808080 Then
                        Call ClearLongL2
                        lblHorizontalPosition.Caption = lblHorizontalPosition.Caption + 1
                        Call LongL2
                    End If
            End Select
            
        'if the shape has been rotated three times
        Case Is = 3
            Select Case lblCurrentShape.Caption
                Case Is = "triangle"
                    If ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 Then
                        Call ClearTriangle3
                        lblHorizontalPosition.Caption = lblHorizontalPosition.Caption + 1
                        Call Triangle3
                    End If
                Case Is = "longl"
                    If ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 2).BackColor = &H808080 Then
                        Call ClearLongL3
                        lblHorizontalPosition.Caption = lblHorizontalPosition.Caption + 1
                        Call LongL3
                    End If
                End Select
    End Select
End If

'if "a" key has been pressed and the horizontal position of the centre is less than the limit depending on the shape
If KeyCode = vbKeyA And lblMoveReleased.Caption = "1" And lblHorizontalPosition.Caption > lblLowerLimit.Caption Then
Select Case lblRotationCounter.Caption
    Case Is = 0
        Select Case lblCurrentShape.Caption
            Case Is = "triangle"
                If ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 2).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 Then
                    Call ClearTriangle0
                    lblHorizontalPosition.Caption = lblHorizontalPosition.Caption - 1
                    Call Triangle0
                End If
            Case Is = "block"
                If ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 Then
                    Call clearBlock0
                    lblHorizontalPosition.Caption = lblHorizontalPosition.Caption - 1
                    Call Block0
                End If
            Case Is = "longline"
                If ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 2).BackColor = &H808080 Then
                    Call clearLongLine0
                    lblHorizontalPosition.Caption = lblHorizontalPosition.Caption - 1
                    Call LongLine0
                End If
            Case Is = "longl"
                If ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 2).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption - 2).BackColor = &H808080 Then
                    Call ClearLongL0
                    lblHorizontalPosition.Caption = lblHorizontalPosition.Caption - 1
                    Call LongL0
                End If
        End Select
        
    Case Is = 1
        Select Case lblCurrentShape.Caption
            Case Is = "triangle"
                If ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 Then
                    Call ClearTriangle1
                    lblHorizontalPosition.Caption = lblHorizontalPosition.Caption - 1
                    Call Triangle1
                End If
            Case Is = "longline"
                If ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 Then
                    Call clearLongLine1
                    lblHorizontalPosition.Caption = lblHorizontalPosition.Caption - 1
                    Call LongLine1
                End If
            Case Is = "longl"
                If ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption - 2).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 Then
                    Call ClearLongL1
                    lblHorizontalPosition.Caption = lblHorizontalPosition.Caption - 1
                    Call LongL1
                End If
        End Select
    Case Is = 2
        Select Case lblCurrentShape.Caption
            Case Is = "triangle"
                If ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 2).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 Then
                    Call ClearTriangle2
                    lblHorizontalPosition.Caption = lblHorizontalPosition.Caption - 1
                    Call Triangle2
                End If
            Case Is = "longl"
                If lblHorizontalPosition.Caption <> lblLowerLimit Then
                    If ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 2).BackColor = &H808080 Then
                        Call ClearLongL2
                        lblHorizontalPosition.Caption = lblHorizontalPosition.Caption - 1
                        Call LongL2
                    End If
                End If
        End Select
    Case Is = 3
        Select Case lblCurrentShape.Caption
            Case Is = "triangle"
                If ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 2).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 Then
                    Call ClearTriangle3
                    lblHorizontalPosition.Caption = lblHorizontalPosition.Caption - 1
                    Call Triangle3
                End If
            Case Is = "longl"
                If ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 Then
                    Call ClearLongL3
                    lblHorizontalPosition.Caption = lblHorizontalPosition.Caption - 1
                    Call LongL3
                End If
        End Select
End Select
End If

'if the "s" key is pressed then the timer gap is reduced to increase the speed of the falling shape
If KeyCode = vbKeyS And lblMoveReleased.Caption = "1" Then
    timer.Interval = 50
End If

'if the "r" key is pressed, the shape has moved down a line already and is not the block then
If KeyCode = vbKeyR And lblMoveReleased.Caption = "1" And lblVerticalPosition.Caption > 0 And lblCurrentShape.Caption <> "block" Then
Select Case lblRotationCounter.Caption
    ' If the shape has not been rotated
    Case Is = 0
        Select Case lblCurrentShape.Caption
            'if the current shape is the triangle
            Case Is = "triangle"
                'If the shape is clear to rotate then
                If ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption).BackColor = &H808080 Then
                    'clear the current displayed shape
                    Call ClearTriangle0
                    'add 1 to the rotation counter
                    lblRotationCounter.Caption = lblRotationCounter.Caption + 1
                    'display the rotated triangle
                    Call Triangle1
                End If
                
            'if the current shape is the line
            Case Is = "longline"
                If lblVerticalPosition.Caption <> lblVerticalLimit.Caption Then
                    'if the shape is clear to rotate then
                    If ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = &H808080 Then
                        'clear the current displayed shape
                        Call clearLongLine0
                        'add 1 to the rotation counter
                        lblRotationCounter.Caption = lblRotationCounter.Caption + 1
                        'display the rotated line
                        Call LongLine1
                    End If
                End If
            
            'if the current shape is the L
            Case Is = "longl"
                'If the shape is clear to rotate then
                If ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 Then
                    'clear the current displayed shape
                    Call ClearLongL0
                    'add 1 to the rotation counter
                    lblRotationCounter.Caption = lblRotationCounter.Caption + 1
                    'display the rotated triangle
                    Call LongL1
                End If
            End Select
    
    'If the shape has been rotated once
    Case Is = 1
        Select Case lblCurrentShape.Caption
            'if the current shape is the triangle
            Case Is = "triangle"
                'if the shape is clear to rotate
                If lblHorizontalPosition.Caption <> 0 Then
                    If ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = &H808080 Then
                        'clear the current displayed shape
                        Call ClearTriangle1
                        'add 1 to the counter
                        lblRotationCounter.Caption = lblRotationCounter.Caption + 1
                        'display the new triangle
                        Call Triangle2
                    End If
                End If
                
            'if the current shape is the line
            Case Is = "longline"
                'if the shape is clear to rotate
                If lblHorizontalPosition.Caption <> 0 And lblHorizontalPosition.Caption <> 9 Then
                    If ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = &H808080 Then
                        'clear the current displayed shape
                        Call clearLongLine1
                        'reset the counter
                        lblRotationCounter.Caption = 0
                        'display the new shape
                        Call LongLine0
                    End If
                End If
                
            'if the current shape is the L
            Case Is = "longl"
                If lblHorizontalPosition.Caption <> lblUpperLimit.Caption Then
                    'If the shape is clear to rotate then
                    If ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 Then
                        'clear the current displayed shape
                        Call ClearLongL1
                        'add 1 to the rotation counter
                        lblRotationCounter.Caption = lblRotationCounter.Caption + 1
                        'display the rotated triangle
                        Call LongL2
                    End If
                End If
            End Select
    ' if the shape has been rotated twice
    Case Is = 2
        Select Case lblCurrentShape.Caption
            Case Is = "triangle"
                If lblVerticalPosition <> lblVerticalLimit Then
                    If ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = &H808080 Then
                        Call ClearTriangle2
                        If lblRotationCounter.Caption >= 3 Then
                            lblRotationCounter.Caption = 0
                        Else
                            lblRotationCounter.Caption = lblRotationCounter.Caption + 1
                        End If
                        Call Triangle3
                    End If
                End If
                
            'if the current shape is the L
            Case Is = "longl"
                If lblVerticalPosition.Caption <> lblVerticalLimit.Caption Then
                    'If the shape is clear to rotate then
                    If ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = &H808080 Then
                        'clear the current displayed shape
                        Call ClearLongL2
                        'add 1 to the rotation counter
                        lblRotationCounter.Caption = lblRotationCounter.Caption + 1
                        'display the rotated triangle
                        Call LongL3
                    End If
                End If
        End Select
        
    'if the shape has been rotated 3 times
    Case Is = 3
        Select Case lblCurrentShape.Caption
            Case Is = "triangle"
                If lblHorizontalPosition.Caption <> 9 Then
                    If ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = &H808080 Then
                        Call ClearTriangle3
                            lblRotationCounter.Caption = 0
                        Call Triangle0
                    End If
                End If
            
            'if the current shape is the L
            Case Is = "longl"
                If lblHorizontalPosition.Caption <> lblLowerLimit.Caption Then
                    'If the shape is clear to rotate then
                    If ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = &H808080 Then
                        'clear the current displayed shape
                        Call ClearLongL3
                        'add 1 to the rotation counter
                        lblRotationCounter.Caption = 0
                        'display the rotated triangle
                        Call LongL0
                    End If
                End If
        End Select
    End Select
lblShapeRotation.Caption = lblCurrentShape.Caption & lblRotationCounter.Caption
End If
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
'when the keys are un-pressed reset the timer interval
lblMoveReleased.Caption = "1"

'Reset the interval depending on what level the player is on
If KeyCode = vbKeyS Then
Select Case lblCurrentLevel.Caption
    Case Is = 1
        timer.Interval = 350
    Case Is = 2
        timer.Interval = 250
    Case Is = 3
        timer.Interval = 200
    Case Is = 4
        timer.Interval = 150
    Case Is = 5
        timer.Interval = 125
    Case Is = 6
        timer.Interval = 100
    Case Is = 7
        timer.Interval = 75
End Select
End If
End Sub



Private Sub Image1_Click()

End Sub

Private Sub lblEndGame_Click()
End
End Sub

Private Sub timer_Timer()
    'if the shape isnt on its vertical limit
    If lblVerticalPosition.Caption <> lblVerticalLimit.Caption Then
        Select Case lblCurrentShape.Caption
            'if current shape is a block
            Case Is = "block"
                'if the shape is clear to move into the spaces below then
                If ArrayGrid(lblVerticalPosition.Caption + 2, lblHorizontalPosition.Caption).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 2, lblHorizontalPosition.Caption + 1).BackColor = &H808080 Then
                        'clear the current block
                        Call clearBlock0
                        'add 1 to the vertical position
                        lblVerticalPosition.Caption = lblVerticalPosition.Caption + 1
                        'display block in the new space
                        Call Block0
                'if the shape is at the bottom of the screen then
                Else
                        'check the whole table for any full rows
                        Call checkLine
                        'reset the horizontal, vertical and rotation values
                        lblHorizontalPosition.Caption = 4
                        lblVerticalPosition.Caption = 0
                        lblRotationCounter.Caption = 0
                        'generate and display the next shape
                        Call randomShape
                End If
            'if the current shape is triangle
            Case Is = "triangle"
                        Select Case lblRotationCounter.Caption
                            'if the shape has not been rotated
                            Case Is = 0
                                'if the shape is clear to move into the spaces below
                                If ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 2, lblHorizontalPosition.Caption).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 Then
                                    'clear the current shape
                                    Call ClearTriangle0
                                    'add 1 to the vertical position
                                    lblVerticalPosition.Caption = lblVerticalPosition.Caption + 1
                                    'display shape in the new space
                                    Call Triangle0
                                Else
                                    'check the whole table for any full rows
                                    Call checkLine
                                    'reset the horizontal, vertical and rotation values
                                    lblHorizontalPosition.Caption = 4
                                    lblVerticalPosition.Caption = 0
                                    lblRotationCounter.Caption = 0
                                    'generate and display the next shape
                                    Call randomShape
                                End If
                                
                            'if the shape has been rotated once
                            Case Is = 1
                                If ArrayGrid(lblVerticalPosition.Caption + 2, lblHorizontalPosition.Caption).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 Then
                                    Call ClearTriangle1
                                    lblVerticalPosition.Caption = lblVerticalPosition.Caption + 1
                                    Call Triangle1
                                Else
                                    Call checkLine
                                    lblHorizontalPosition.Caption = 4
                                    lblVerticalPosition.Caption = 0
                                    lblRotationCounter.Caption = 0
                                    Call randomShape
                                End If
                                
                            'if the shape has been rotated twice
                            Case Is = 2
                                If ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 Then
                                    Call ClearTriangle2
                                    lblVerticalPosition.Caption = lblVerticalPosition.Caption + 1
                                    Call Triangle2
                                Else
                                    Call checkLine
                                    lblHorizontalPosition.Caption = 4
                                    lblVerticalPosition.Caption = 0
                                    lblRotationCounter.Caption = 0
                                    Call randomShape
                                End If
                                
                            'if the shape has been rotated three times
                            Case Is = 3
                                If ArrayGrid(lblVerticalPosition.Caption + 2, lblHorizontalPosition.Caption).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 Then
                                    Call ClearTriangle3
                                    lblVerticalPosition.Caption = lblVerticalPosition.Caption + 1
                                    Call Triangle3
                                Else
                                    Call checkLine
                                    lblHorizontalPosition.Caption = 4
                                    lblVerticalPosition.Caption = 0
                                    lblRotationCounter.Caption = 0
                                    Call randomShape
                                End If
                            End Select
                
            'if the current shape is the line
            Case Is = "longline"
                        Select Case lblRotationCounter.Caption
                            'if the shape has not been rotated
                            Case Is = 0
                                If ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 Then
                                    Call clearLongLine0
                                    lblVerticalPosition.Caption = lblVerticalPosition.Caption + 1
                                    Call LongLine0
                                Else
                                    Call checkLine
                                    lblHorizontalPosition.Caption = 4
                                    lblVerticalPosition.Caption = 0
                                    lblRotationCounter.Caption = 0
                                    Call randomShape
                                End If
                                
                            'if the shape has been rotated
                            Case Is = 1
                                If ArrayGrid(lblVerticalPosition.Caption + 2, lblHorizontalPosition.Caption).BackColor = &H808080 Then
                                    Call clearLongLine1
                                    lblVerticalPosition.Caption = lblVerticalPosition.Caption + 1
                                    Call LongLine1
                                Else
                                    Call checkLine
                                    lblHorizontalPosition.Caption = 4
                                    lblVerticalPosition.Caption = 0
                                    lblRotationCounter.Caption = 0
                                    Call randomShape
                                End If
                        End Select
                        
                Case Is = "longl"
                        Select Case lblRotationCounter.Caption
                            'if the shape has not been rotated
                            Case Is = 0
                                'if the shape is clear to move into the spaces below
                                If ArrayGrid(lblVerticalPosition.Caption + 2, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 Then
                                    'clear the current shape
                                    Call ClearLongL0
                                    'add 1 to the vertical position
                                    lblVerticalPosition.Caption = lblVerticalPosition.Caption + 1
                                    'display shape in the new space
                                    Call LongL0
                                Else
                                    'check the whole table for any full rows
                                    Call checkLine
                                    'reset the horizontal, vertical and rotation values
                                    lblHorizontalPosition.Caption = 4
                                    lblVerticalPosition.Caption = 0
                                    lblRotationCounter.Caption = 0
                                    'generate and display the next shape
                                    Call randomShape
                                End If
                                
                            'if the shape has been rotated once
                            Case Is = 1
                                If ArrayGrid(lblVerticalPosition.Caption + 2, lblHorizontalPosition.Caption).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = &H808080 Then
                                    Call ClearLongL1
                                    lblVerticalPosition.Caption = lblVerticalPosition.Caption + 1
                                    Call LongL1
                                Else
                                    Call checkLine
                                    lblHorizontalPosition.Caption = 4
                                    lblVerticalPosition.Caption = 0
                                    lblRotationCounter.Caption = 0
                                    Call randomShape
                                End If
                            'if the shape has been rotated twice
                            Case Is = 2
                                If ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080 Then
                                    Call ClearLongL2
                                    lblVerticalPosition.Caption = lblVerticalPosition.Caption + 1
                                    Call LongL2
                                Else
                                    Call checkLine
                                    lblHorizontalPosition.Caption = 4
                                    lblVerticalPosition.Caption = 0
                                    lblRotationCounter.Caption = 0
                                    Call randomShape
                                End If
                                
                            'if the shape has been rotated three times
                            Case Is = 3
                                If ArrayGrid(lblVerticalPosition.Caption + 2, lblHorizontalPosition.Caption).BackColor = &H808080 And ArrayGrid(lblVerticalPosition.Caption + 2, lblHorizontalPosition.Caption + 1).BackColor = &H808080 Then
                                    Call ClearLongL3
                                    lblVerticalPosition.Caption = lblVerticalPosition.Caption + 1
                                    Call LongL3
                                Else
                                    Call checkLine
                                    lblHorizontalPosition.Caption = 4
                                    lblVerticalPosition.Caption = 0
                                    lblRotationCounter.Caption = 0
                                    Call randomShape
                                End If
                            End Select
            End Select
    'if the shape is at the bottom of the screen
    Else
        Call checkLine
        lblHorizontalPosition.Caption = 4
        lblVerticalPosition.Caption = 0
        lblRotationCounter.Caption = 0
        Call randomShape
    End If
End Sub
Private Sub randomShape()

'generate a new random number
Randomize
lblRandomNumber.Caption = Int(Rnd * 4) + 1

'assign a shape depending on the number chosen
Select Case lblRandomNumber.Caption
    Case Is = 1
        lblCurrentShape.Caption = "block"
    Case Is = 2
        lblCurrentShape.Caption = "triangle"
    Case Is = 3
        lblCurrentShape.Caption = "longline"
    Case Is = 4
        lblCurrentShape.Caption = "longl"
End Select

Counter = 0
'check if the 2x3 area for shapes starting is clear
For i = 0 To 1
    For j = 3 To 5
        If ArrayGrid(i, j).BackColor <> &H808080 Then
            Counter = Counter + 1
        End If
    Next j
Next i
'if one or more boxes are not empty then
If Counter >= 1 Then
    'end the game
    Call endGame
End If

Select Case lblCurrentShape.Caption
    Case Is = "block"
        Call Block0
    Case Is = "triangle"
        Call Triangle0
    Case Is = "longline"
        Call LongLine0
    Case Is = "longl"
        Call LongL0
End Select

lblShapeRotation.Caption = lblCurrentShape.Caption & lblRotationCounter.Caption
End Sub
Private Sub checkLine()
        'set counter to 0
        Counter = 0
        'for each line
        For i = 0 To 19
            'for each block in a line
            For j = 0 To 9
                'if the back color of the selected box is not white then
                If ArrayGrid(i, j).BackColor <> &H808080 Then
                    'add 1 to the counter
                    Counter = Counter + 1
                End If
            Next j
            
            'if every box in the row is not white then
            If Counter = 10 Then
                'save the row number
                lblFullRow.Caption = i
                'clear the line
                Call FullLine
            End If
            'reset the counter for the next line
            Counter = 0
        Next i
End Sub
Private Sub FullLine()
'set each box in the row to white
For i = 0 To 9
    ArrayGrid(lblFullRow.Caption, i).BackColor = &H808080
Next i

'get the row above the cleared row
z = lblFullRow.Caption - 1
Do
    'for each box in the row above the cleared row
    For j = 0 To 9
        'if the box is not white then
        If ArrayGrid(z, j).BackColor <> wbWhite Then
            'save the color of the box
            ShapeColor = ArrayGrid(z, j).BackColor
            'color the box directly below as the saved color
            ArrayGrid(z + 1, j).BackColor = ShapeColor
        End If
    Next j
'work up the screen until the top row is reached
z = z - 1
Loop Until z = 0

'add 100 score
lblCurrentScore.Caption = lblCurrentScore.Caption + 100
'add 1 to rows cleared
lblrowscleared.Caption = lblrowscleared.Caption + 1
'set the current difficulty level and speed depending on the score
If lblCurrentScore.Caption <= 750 Then
    timer.Interval = 350
    lblCurrentLevel.Caption = "1"
End If

If lblCurrentScore.Caption > 750 And lblCurrentScore.Caption <= 1500 Then
    timer.Interval = 250
    lblCurrentLevel.Caption = "2"
End If

If lblCurrentScore.Caption > 1500 And lblCurrentScore.Caption <= 2250 Then
    timer.Interval = 200
    lblCurrentLevel.Caption = "3"
End If

If lblCurrentScore.Caption > 2250 And lblCurrentScore.Caption <= 3000 Then
    timer.Interval = 150
    lblCurrentLevel.Caption = "4"
End If

If lblCurrentScore.Caption > 3000 And lblCurrentScore.Caption <= 3750 Then
    timer.Interval = 125
    lblCurrentLevel.Caption = "5"
End If

If lblCurrentScore.Caption > 3750 And lblCurrentScore.Caption <= 4500 Then
    timer.Interval = 100
    lblCurrentLevel.Caption = "6"
End If

If lblCurrentScore.Caption > 4500 Then
    timer.Interval = 75
    lblCurrentLevel.Caption = "7"
End If

End Sub
Private Sub endGame()
'stop any more blocks from falling
timer.Enabled = False

'if the player cleared one or more lines
If lblCurrentScore.Caption > 0 Then
    'loop until string length is <= 20
    Do
        'get the player name from an input box
        playerName = InputBox("Game Over, please enter your name(Less than 20 characters)")
    Loop Until Len(playerName) <= 20 And Len(playerName) > 0
    'save the final score from the game in a variable to be added to the csv file
    playerFinalScore = lblCurrentScore.Caption
    
    'open the csv file to add the new score
    FileName = App.Path & "\playerScores.csv"
    Open FileName For Append As #1
        Write #1, playerName, playerFinalScore
    Close #1
    
    'open and read the counter for the number of records in the csv file
    Open App.Path & "\csvCounter.txt" For Input As #1
        Input #1, csvCounter
    Close #1
    
    csvCounter = csvCounter + 1
    
    'open and add 1 to the counter for the number of records in the csv file
    Open App.Path & "\csvCounter.txt" For Output As #1
        Write #1, csvCounter
    Close #1
    
    End
'if the player didnt clear any lines
Else
    MsgBox ("Game Over")
    End
End If


End Sub
'--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Private Sub ClearTriangle0()
'clear the shape
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = &H808080
End Sub
Private Sub Triangle0()
'create the shape
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = vbCyan
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = vbCyan
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = vbCyan
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = vbCyan

'set the limits for the specific shape
        lblLowerLimit.Caption = 1
        lblUpperLimit.Caption = 8
        lblVerticalLimit.Caption = 18
End Sub
'--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Private Sub ClearTriangle1()
'clear the shape
        ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = &H808080
End Sub
Private Sub Triangle1()
'create the shape
        ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption).BackColor = vbCyan
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = vbCyan
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = vbCyan
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = vbCyan
        
'set the limits for the specific shape
        lblLowerLimit.Caption = 0
        lblUpperLimit.Caption = 8
        lblVerticalLimit.Caption = 18
End Sub
'--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Private Sub ClearTriangle2()
'clear the shape
        ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = &H808080
End Sub
Private Sub Triangle2()
'create the shape
        ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption).BackColor = vbCyan
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = vbCyan
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = vbCyan
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = vbCyan
        
'set the limits for the specific shape
        lblLowerLimit.Caption = 1
        lblUpperLimit.Caption = 8
        lblVerticalLimit.Caption = 19
End Sub
'--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Private Sub ClearTriangle3()
'clear the shape
        ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = &H808080
End Sub
Private Sub Triangle3()
'create the shape
        ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption).BackColor = vbCyan
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = vbCyan
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = vbCyan
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = vbCyan
        
'set the limits for the specific shape
        lblLowerLimit.Caption = 1
        lblUpperLimit.Caption = 9
        lblVerticalLimit.Caption = 18
End Sub
'--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Private Sub clearBlock0()
'clear the shape
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080
End Sub
Private Sub Block0()
'create the shape
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = vbRed
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = vbRed
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = vbRed
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 1).BackColor = vbRed
        
'set the limits for the specific shape
        lblLowerLimit.Caption = 0
        lblUpperLimit.Caption = 8
        lblVerticalLimit.Caption = 18
End Sub
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Private Sub clearLongLine0()
'clear the shape
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = &H808080
End Sub
Private Sub LongLine0()
'create the shape
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = vbGreen
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = vbGreen
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = vbGreen
        
'set the limits for the specific shape
        lblLowerLimit.Caption = 1
        lblUpperLimit.Caption = 8
        lblVerticalLimit.Caption = 19
End Sub
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Private Sub clearLongLine1()
'clear the shape
        ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = &H808080
End Sub
Private Sub LongLine1()
'create the shape
        ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption).BackColor = vbGreen
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = vbGreen
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = vbGreen
        
'set the limits for the specific shape
        lblLowerLimit.Caption = 0
        lblUpperLimit.Caption = 9
        lblVerticalLimit.Caption = 18
End Sub
Private Sub ClearLongL0()
'clear the shape
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = &H808080
End Sub
Private Sub LongL0()
'clear the shape
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption - 1).BackColor = vbBlue
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = vbBlue
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = vbBlue
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = vbBlue
        
'set the limits for the specific shape
        lblLowerLimit.Caption = 1
        lblUpperLimit.Caption = 8
        lblVerticalLimit.Caption = 18
End Sub
Private Sub ClearLongL3()
'clear the shape
        ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080
End Sub
Private Sub LongL3()
'clear the shape
        ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption).BackColor = vbBlue
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = vbBlue
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = vbBlue
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption + 1).BackColor = vbBlue
        
'set the limits for the specific shape
        lblLowerLimit.Caption = 0
        lblUpperLimit.Caption = 8
        lblVerticalLimit.Caption = 18
End Sub

Private Sub ClearLongL2()
'clear the shape
        ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption + 1).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = &H808080
End Sub
Private Sub LongL2()
'clear the shape
        ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption + 1).BackColor = vbBlue
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption - 1).BackColor = vbBlue
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = vbBlue
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption + 1).BackColor = vbBlue
        
'set the limits for the specific shape
        lblLowerLimit.Caption = 1
        lblUpperLimit.Caption = 8
        lblVerticalLimit.Caption = 19
End Sub
Private Sub ClearLongL1()
'clear the shape
        ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption - 1).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = &H808080
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = &H808080
End Sub
Private Sub LongL1()
'clear the shape
        ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption - 1).BackColor = vbBlue
        ArrayGrid(lblVerticalPosition.Caption - 1, lblHorizontalPosition.Caption).BackColor = vbBlue
        ArrayGrid(lblVerticalPosition.Caption, lblHorizontalPosition.Caption).BackColor = vbBlue
        ArrayGrid(lblVerticalPosition.Caption + 1, lblHorizontalPosition.Caption).BackColor = vbBlue
        
'set the limits for the specific shape
        lblLowerLimit.Caption = 1
        lblUpperLimit.Caption = 9
        lblVerticalLimit.Caption = 18
End Sub

