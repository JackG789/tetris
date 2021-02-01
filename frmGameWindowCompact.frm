VERSION 5.00
Begin VB.Form frmGameWindow 
   BackColor       =   &H00404040&
   ClientHeight    =   8685
   ClientLeft      =   9720
   ClientTop       =   1140
   ClientWidth     =   7140
   LinkTopic       =   "Form1"
   Picture         =   "frmGameWindowCompact.frx":0000
   ScaleHeight     =   8685
   ScaleWidth      =   7140
   Visible         =   0   'False
   Begin VB.CommandButton cmdSTART 
      BackColor       =   &H0080FF80&
      Caption         =   "Start"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   5880
      Style           =   1  'Graphical
      TabIndex        =   198
      Top             =   120
      Width           =   855
   End
   Begin VB.Timer timer 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   6120
      Top             =   6840
   End
   Begin VB.Label lblrowscleared 
      Alignment       =   2  'Center
      BackColor       =   &H00404040&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   4200
      TabIndex        =   230
      Top             =   360
      Width           =   1455
   End
   Begin VB.Shape Shape1 
      Height          =   7215
      Left            =   1440
      Top             =   1080
      Width           =   3615
   End
   Begin VB.Line Line28 
      X1              =   1440
      X2              =   5040
      Y1              =   7920
      Y2              =   7920
   End
   Begin VB.Line Line27 
      X1              =   1440
      X2              =   5040
      Y1              =   7560
      Y2              =   7560
   End
   Begin VB.Line Line26 
      X1              =   1440
      X2              =   5040
      Y1              =   7200
      Y2              =   7200
   End
   Begin VB.Line Line25 
      X1              =   1440
      X2              =   5040
      Y1              =   6840
      Y2              =   6840
   End
   Begin VB.Line Line24 
      X1              =   1440
      X2              =   5040
      Y1              =   6480
      Y2              =   6480
   End
   Begin VB.Line Line23 
      X1              =   1440
      X2              =   5040
      Y1              =   6120
      Y2              =   6120
   End
   Begin VB.Line Line22 
      X1              =   1440
      X2              =   5040
      Y1              =   5760
      Y2              =   5760
   End
   Begin VB.Line Line21 
      X1              =   1440
      X2              =   5040
      Y1              =   5400
      Y2              =   5400
   End
   Begin VB.Line Line20 
      X1              =   1440
      X2              =   5040
      Y1              =   5040
      Y2              =   5040
   End
   Begin VB.Line Line19 
      X1              =   1440
      X2              =   5040
      Y1              =   4680
      Y2              =   4680
   End
   Begin VB.Line Line18 
      X1              =   1440
      X2              =   5040
      Y1              =   4320
      Y2              =   4320
   End
   Begin VB.Line Line17 
      X1              =   1440
      X2              =   5040
      Y1              =   3960
      Y2              =   3960
   End
   Begin VB.Line Line16 
      X1              =   1440
      X2              =   5040
      Y1              =   3600
      Y2              =   3600
   End
   Begin VB.Line Line15 
      X1              =   1440
      X2              =   5040
      Y1              =   3240
      Y2              =   3240
   End
   Begin VB.Line Line14 
      X1              =   1440
      X2              =   5040
      Y1              =   2880
      Y2              =   2880
   End
   Begin VB.Line Line13 
      X1              =   1440
      X2              =   5040
      Y1              =   2520
      Y2              =   2520
   End
   Begin VB.Line Line12 
      X1              =   1440
      X2              =   5040
      Y1              =   2160
      Y2              =   2160
   End
   Begin VB.Line Line11 
      X1              =   1440
      X2              =   5040
      Y1              =   1800
      Y2              =   1800
   End
   Begin VB.Line Line10 
      X1              =   1440
      X2              =   5040
      Y1              =   1440
      Y2              =   1440
   End
   Begin VB.Line Line9 
      X1              =   4680
      X2              =   4680
      Y1              =   1080
      Y2              =   8280
   End
   Begin VB.Line Line8 
      X1              =   4320
      X2              =   4320
      Y1              =   1080
      Y2              =   8280
   End
   Begin VB.Line Line7 
      X1              =   3960
      X2              =   3960
      Y1              =   1080
      Y2              =   8280
   End
   Begin VB.Line Line6 
      X1              =   3600
      X2              =   3600
      Y1              =   1080
      Y2              =   8280
   End
   Begin VB.Line Line5 
      X1              =   3240
      X2              =   3240
      Y1              =   1080
      Y2              =   8280
   End
   Begin VB.Line Line4 
      X1              =   2880
      X2              =   2880
      Y1              =   1080
      Y2              =   8280
   End
   Begin VB.Line Line3 
      X1              =   2520
      X2              =   2520
      Y1              =   1080
      Y2              =   8280
   End
   Begin VB.Line Line1 
      X1              =   2160
      X2              =   2160
      Y1              =   1080
      Y2              =   8280
   End
   Begin VB.Line Line1Line1Line1 
      X1              =   1800
      X2              =   1800
      Y1              =   1080
      Y2              =   8280
   End
   Begin VB.Line Line2 
      X1              =   0
      X2              =   0
      Y1              =   0
      Y2              =   7200
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   0
      Left            =   1440
      TabIndex        =   229
      Top             =   1080
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   1
      Left            =   1800
      TabIndex        =   228
      Top             =   1080
      Width           =   375
   End
   Begin VB.Label lblEndGame 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "End Game"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   855
      Left            =   5880
      TabIndex        =   227
      Top             =   7440
      Width           =   855
   End
   Begin VB.Label Label13 
      Alignment       =   2  'Center
      BackColor       =   &H00404040&
      Caption         =   "Level"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2880
      TabIndex        =   226
      Top             =   120
      Width           =   615
   End
   Begin VB.Label Label11 
      Alignment       =   2  'Center
      BackColor       =   &H00404040&
      Caption         =   "Score"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   960
      TabIndex        =   224
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label12 
      Caption         =   "full row"
      Height          =   255
      Left            =   17160
      TabIndex        =   222
      Top             =   11040
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblFullRow 
      BackColor       =   &H00FFFFFF&
      Caption         =   "0"
      Height          =   615
      Left            =   17160
      TabIndex        =   221
      Top             =   11280
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label Label8 
      Caption         =   "upper limit"
      Height          =   375
      Left            =   17160
      TabIndex        =   220
      Top             =   8040
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.Label Label7 
      Caption         =   "Random Number"
      Height          =   255
      Left            =   17160
      TabIndex        =   219
      Top             =   7200
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label Label6 
      Caption         =   "Shape Rotation "
      Height          =   375
      Left            =   17160
      TabIndex        =   218
      Top             =   6120
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label Label4 
      Caption         =   "rotation counter"
      Height          =   375
      Left            =   17160
      TabIndex        =   217
      Top             =   4200
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label Label5 
      Caption         =   "Vertical Limit"
      Height          =   375
      Left            =   17160
      TabIndex        =   216
      Top             =   5160
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "move released"
      Height          =   255
      Left            =   17160
      TabIndex        =   215
      Top             =   3360
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "current color"
      Height          =   255
      Left            =   17160
      TabIndex        =   214
      Top             =   2400
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label Label9 
      Caption         =   "horizontal position"
      Height          =   255
      Left            =   17160
      TabIndex        =   213
      Top             =   9120
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "Current Shape"
      Height          =   255
      Left            =   17160
      TabIndex        =   212
      Top             =   1440
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label Label10 
      Caption         =   "Lower Limit"
      Height          =   255
      Left            =   17160
      TabIndex        =   211
      Top             =   360
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblVPosition 
      BackColor       =   &H8000000B&
      Caption         =   "Vertical Position"
      Height          =   255
      Left            =   17160
      TabIndex        =   210
      Top             =   10080
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblVerticalPosition 
      BackColor       =   &H00FFFFFF&
      Caption         =   "0"
      Height          =   615
      Left            =   17160
      TabIndex        =   209
      Top             =   10320
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblHorizontalPosition 
      BackColor       =   &H00FFFFFF&
      Caption         =   "4"
      Height          =   615
      Left            =   17160
      TabIndex        =   208
      Top             =   9360
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblUpperLimit 
      BackColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   17160
      TabIndex        =   207
      Top             =   8400
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblRandomNumber 
      BackColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   17160
      TabIndex        =   206
      Top             =   7440
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblShapeRotation 
      BackColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   17160
      TabIndex        =   205
      Top             =   6480
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblVerticalLimit 
      BackColor       =   &H00FFFFFF&
      Caption         =   "20"
      Height          =   615
      Left            =   17160
      TabIndex        =   204
      Top             =   5520
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblRotationCounter 
      BackColor       =   &H00FFFFFF&
      Caption         =   "0"
      Height          =   615
      Left            =   17160
      TabIndex        =   203
      Top             =   4560
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblMoveReleased 
      BackColor       =   &H00FFFFFF&
      Caption         =   "1"
      Height          =   615
      Left            =   17160
      TabIndex        =   202
      Top             =   3600
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblCurrentColor 
      BackColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   17160
      TabIndex        =   201
      Top             =   2640
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblCurrentShape 
      BackColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   17160
      TabIndex        =   200
      Top             =   1680
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblLowerLimit 
      BackColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   17160
      TabIndex        =   199
      Top             =   720
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   199
      Left            =   4680
      TabIndex        =   197
      Top             =   7920
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   198
      Left            =   4320
      TabIndex        =   196
      Top             =   7920
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   197
      Left            =   3960
      TabIndex        =   195
      Top             =   7920
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   196
      Left            =   3600
      TabIndex        =   194
      Top             =   7920
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   195
      Left            =   3240
      TabIndex        =   193
      Top             =   7920
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   194
      Left            =   2880
      TabIndex        =   192
      Top             =   7920
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   193
      Left            =   2520
      TabIndex        =   191
      Top             =   7920
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   192
      Left            =   2160
      TabIndex        =   190
      Top             =   7920
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   191
      Left            =   1800
      TabIndex        =   189
      Top             =   7920
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   190
      Left            =   1440
      TabIndex        =   188
      Top             =   7920
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   189
      Left            =   4680
      TabIndex        =   187
      Top             =   7560
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   188
      Left            =   4320
      TabIndex        =   186
      Top             =   7560
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   187
      Left            =   3960
      TabIndex        =   185
      Top             =   7560
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   186
      Left            =   3600
      TabIndex        =   184
      Top             =   7560
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   185
      Left            =   3240
      TabIndex        =   183
      Top             =   7560
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   184
      Left            =   2880
      TabIndex        =   182
      Top             =   7560
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   183
      Left            =   2520
      TabIndex        =   181
      Top             =   7560
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   182
      Left            =   2160
      TabIndex        =   180
      Top             =   7560
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   181
      Left            =   1800
      TabIndex        =   179
      Top             =   7560
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   180
      Left            =   1440
      TabIndex        =   178
      Top             =   7560
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   179
      Left            =   4680
      TabIndex        =   177
      Top             =   7200
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   178
      Left            =   4320
      TabIndex        =   176
      Top             =   7200
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   177
      Left            =   3960
      TabIndex        =   175
      Top             =   7200
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   176
      Left            =   3600
      TabIndex        =   174
      Top             =   7200
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   175
      Left            =   3240
      TabIndex        =   173
      Top             =   7200
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   174
      Left            =   2880
      TabIndex        =   172
      Top             =   7200
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   173
      Left            =   2520
      TabIndex        =   171
      Top             =   7200
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   172
      Left            =   2160
      TabIndex        =   170
      Top             =   7200
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   171
      Left            =   1800
      TabIndex        =   169
      Top             =   7200
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   170
      Left            =   1440
      TabIndex        =   168
      Top             =   7200
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   169
      Left            =   4680
      TabIndex        =   167
      Top             =   6840
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   168
      Left            =   4320
      TabIndex        =   166
      Top             =   6840
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   167
      Left            =   3960
      TabIndex        =   165
      Top             =   6840
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   166
      Left            =   3600
      TabIndex        =   164
      Top             =   6840
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   165
      Left            =   3240
      TabIndex        =   163
      Top             =   6840
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   164
      Left            =   2880
      TabIndex        =   162
      Top             =   6840
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   163
      Left            =   2520
      TabIndex        =   161
      Top             =   6840
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   162
      Left            =   2160
      TabIndex        =   160
      Top             =   6840
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   161
      Left            =   1800
      TabIndex        =   159
      Top             =   6840
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   160
      Left            =   1440
      TabIndex        =   158
      Top             =   6840
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   159
      Left            =   4680
      TabIndex        =   157
      Top             =   6480
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   158
      Left            =   4320
      TabIndex        =   156
      Top             =   6480
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   157
      Left            =   3960
      TabIndex        =   155
      Top             =   6480
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   156
      Left            =   3600
      TabIndex        =   154
      Top             =   6480
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   155
      Left            =   3240
      TabIndex        =   153
      Top             =   6480
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   154
      Left            =   2880
      TabIndex        =   152
      Top             =   6480
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   153
      Left            =   2520
      TabIndex        =   151
      Top             =   6480
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   152
      Left            =   2160
      TabIndex        =   150
      Top             =   6480
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   151
      Left            =   1800
      TabIndex        =   149
      Top             =   6480
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   150
      Left            =   1440
      TabIndex        =   148
      Top             =   6480
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   149
      Left            =   4680
      TabIndex        =   147
      Top             =   6120
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   148
      Left            =   4320
      TabIndex        =   146
      Top             =   6120
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   147
      Left            =   3960
      TabIndex        =   145
      Top             =   6120
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   146
      Left            =   3600
      TabIndex        =   144
      Top             =   6120
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   145
      Left            =   3240
      TabIndex        =   143
      Top             =   6120
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   144
      Left            =   2880
      TabIndex        =   142
      Top             =   6120
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   143
      Left            =   2520
      TabIndex        =   141
      Top             =   6120
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   142
      Left            =   2160
      TabIndex        =   140
      Top             =   6120
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   141
      Left            =   1800
      TabIndex        =   139
      Top             =   6120
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   140
      Left            =   1440
      TabIndex        =   138
      Top             =   6120
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   139
      Left            =   4680
      TabIndex        =   137
      Top             =   5760
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   138
      Left            =   4320
      TabIndex        =   136
      Top             =   5760
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   137
      Left            =   3960
      TabIndex        =   135
      Top             =   5760
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   136
      Left            =   3600
      TabIndex        =   134
      Top             =   5760
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   135
      Left            =   3240
      TabIndex        =   133
      Top             =   5760
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   134
      Left            =   2880
      TabIndex        =   132
      Top             =   5760
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   133
      Left            =   2520
      TabIndex        =   131
      Top             =   5760
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   132
      Left            =   2160
      TabIndex        =   130
      Top             =   5760
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   131
      Left            =   1800
      TabIndex        =   129
      Top             =   5760
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   130
      Left            =   1440
      TabIndex        =   128
      Top             =   5760
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   129
      Left            =   4680
      TabIndex        =   127
      Top             =   5400
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   128
      Left            =   4320
      TabIndex        =   126
      Top             =   5400
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   127
      Left            =   3960
      TabIndex        =   125
      Top             =   5400
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   126
      Left            =   3600
      TabIndex        =   124
      Top             =   5400
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   125
      Left            =   3240
      TabIndex        =   123
      Top             =   5400
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   124
      Left            =   2880
      TabIndex        =   122
      Top             =   5400
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   123
      Left            =   2520
      TabIndex        =   121
      Top             =   5400
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   122
      Left            =   2160
      TabIndex        =   120
      Top             =   5400
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   121
      Left            =   1800
      TabIndex        =   119
      Top             =   5400
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   120
      Left            =   1440
      TabIndex        =   118
      Top             =   5400
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   119
      Left            =   4680
      TabIndex        =   117
      Top             =   5040
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   118
      Left            =   4320
      TabIndex        =   116
      Top             =   5040
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   117
      Left            =   3960
      TabIndex        =   115
      Top             =   5040
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   116
      Left            =   3600
      TabIndex        =   114
      Top             =   5040
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   115
      Left            =   3240
      TabIndex        =   113
      Top             =   5040
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   114
      Left            =   2880
      TabIndex        =   112
      Top             =   5040
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   113
      Left            =   2520
      TabIndex        =   111
      Top             =   5040
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   112
      Left            =   2160
      TabIndex        =   110
      Top             =   5040
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   111
      Left            =   1800
      TabIndex        =   109
      Top             =   5040
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   110
      Left            =   1440
      TabIndex        =   108
      Top             =   5040
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   109
      Left            =   4680
      TabIndex        =   107
      Top             =   4680
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   108
      Left            =   4320
      TabIndex        =   106
      Top             =   4680
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   107
      Left            =   3960
      TabIndex        =   105
      Top             =   4680
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   106
      Left            =   3600
      TabIndex        =   104
      Top             =   4680
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   105
      Left            =   3240
      TabIndex        =   103
      Top             =   4680
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   104
      Left            =   2880
      TabIndex        =   102
      Top             =   4680
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   103
      Left            =   2520
      TabIndex        =   101
      Top             =   4680
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   102
      Left            =   2160
      TabIndex        =   100
      Top             =   4680
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   101
      Left            =   1800
      TabIndex        =   99
      Top             =   4680
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   100
      Left            =   1440
      TabIndex        =   98
      Top             =   4680
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   99
      Left            =   4680
      TabIndex        =   97
      Top             =   4320
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   98
      Left            =   4320
      TabIndex        =   96
      Top             =   4320
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   97
      Left            =   3960
      TabIndex        =   95
      Top             =   4320
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   96
      Left            =   3600
      TabIndex        =   94
      Top             =   4320
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   95
      Left            =   3240
      TabIndex        =   93
      Top             =   4320
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   94
      Left            =   2880
      TabIndex        =   92
      Top             =   4320
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   93
      Left            =   2520
      TabIndex        =   91
      Top             =   4320
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   92
      Left            =   2160
      TabIndex        =   90
      Top             =   4320
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   91
      Left            =   1800
      TabIndex        =   89
      Top             =   4320
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   90
      Left            =   1440
      TabIndex        =   88
      Top             =   4320
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   89
      Left            =   4680
      TabIndex        =   87
      Top             =   3960
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   88
      Left            =   4320
      TabIndex        =   86
      Top             =   3960
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   87
      Left            =   3960
      TabIndex        =   85
      Top             =   3960
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   86
      Left            =   3600
      TabIndex        =   84
      Top             =   3960
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   85
      Left            =   3240
      TabIndex        =   83
      Top             =   3960
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   84
      Left            =   2880
      TabIndex        =   82
      Top             =   3960
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   83
      Left            =   2520
      TabIndex        =   81
      Top             =   3960
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   82
      Left            =   2160
      TabIndex        =   80
      Top             =   3960
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   81
      Left            =   1800
      TabIndex        =   79
      Top             =   3960
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   80
      Left            =   1440
      TabIndex        =   78
      Top             =   3960
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   79
      Left            =   4680
      TabIndex        =   77
      Top             =   3600
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   78
      Left            =   4320
      TabIndex        =   76
      Top             =   3600
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   77
      Left            =   3960
      TabIndex        =   75
      Top             =   3600
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   76
      Left            =   3600
      TabIndex        =   74
      Top             =   3600
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   75
      Left            =   3240
      TabIndex        =   73
      Top             =   3600
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   74
      Left            =   2880
      TabIndex        =   72
      Top             =   3600
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   73
      Left            =   2520
      TabIndex        =   71
      Top             =   3600
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   72
      Left            =   2160
      TabIndex        =   70
      Top             =   3600
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   71
      Left            =   1800
      TabIndex        =   69
      Top             =   3600
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   70
      Left            =   1440
      TabIndex        =   68
      Top             =   3600
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   69
      Left            =   4680
      TabIndex        =   67
      Top             =   3240
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   68
      Left            =   4320
      TabIndex        =   66
      Top             =   3240
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   67
      Left            =   3960
      TabIndex        =   65
      Top             =   3240
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   66
      Left            =   3600
      TabIndex        =   64
      Top             =   3240
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   65
      Left            =   3240
      TabIndex        =   63
      Top             =   3240
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   64
      Left            =   2880
      TabIndex        =   62
      Top             =   3240
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   63
      Left            =   2520
      TabIndex        =   61
      Top             =   3240
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   62
      Left            =   2160
      TabIndex        =   60
      Top             =   3240
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   61
      Left            =   1800
      TabIndex        =   59
      Top             =   3240
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   60
      Left            =   1440
      TabIndex        =   58
      Top             =   3240
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   59
      Left            =   4680
      TabIndex        =   57
      Top             =   2880
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   58
      Left            =   4320
      TabIndex        =   56
      Top             =   2880
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   57
      Left            =   3960
      TabIndex        =   55
      Top             =   2880
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   56
      Left            =   3600
      TabIndex        =   54
      Top             =   2880
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   55
      Left            =   3240
      TabIndex        =   53
      Top             =   2880
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   54
      Left            =   2880
      TabIndex        =   52
      Top             =   2880
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   53
      Left            =   2520
      TabIndex        =   51
      Top             =   2880
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   52
      Left            =   2160
      TabIndex        =   50
      Top             =   2880
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   51
      Left            =   1800
      TabIndex        =   49
      Top             =   2880
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   50
      Left            =   1440
      TabIndex        =   48
      Top             =   2880
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   49
      Left            =   4680
      TabIndex        =   47
      Top             =   2520
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   48
      Left            =   4320
      TabIndex        =   46
      Top             =   2520
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   47
      Left            =   3960
      TabIndex        =   45
      Top             =   2520
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   46
      Left            =   3600
      TabIndex        =   44
      Top             =   2520
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   45
      Left            =   3240
      TabIndex        =   43
      Top             =   2520
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   44
      Left            =   2880
      TabIndex        =   42
      Top             =   2520
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   43
      Left            =   2520
      TabIndex        =   41
      Top             =   2520
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   42
      Left            =   2160
      TabIndex        =   40
      Top             =   2520
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   41
      Left            =   1800
      TabIndex        =   39
      Top             =   2520
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   40
      Left            =   1440
      TabIndex        =   38
      Top             =   2520
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   39
      Left            =   4680
      TabIndex        =   37
      Top             =   2160
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   38
      Left            =   4320
      TabIndex        =   36
      Top             =   2160
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   37
      Left            =   3960
      TabIndex        =   35
      Top             =   2160
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   36
      Left            =   3600
      TabIndex        =   34
      Top             =   2160
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   35
      Left            =   3240
      TabIndex        =   33
      Top             =   2160
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   34
      Left            =   2880
      TabIndex        =   32
      Top             =   2160
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   33
      Left            =   2520
      TabIndex        =   31
      Top             =   2160
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   32
      Left            =   2160
      TabIndex        =   30
      Top             =   2160
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   31
      Left            =   1800
      TabIndex        =   29
      Top             =   2160
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   30
      Left            =   1440
      TabIndex        =   28
      Top             =   2160
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   29
      Left            =   4680
      TabIndex        =   27
      Top             =   1800
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   28
      Left            =   4320
      TabIndex        =   26
      Top             =   1800
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   27
      Left            =   3960
      TabIndex        =   25
      Top             =   1800
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   26
      Left            =   3600
      TabIndex        =   24
      Top             =   1800
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   25
      Left            =   3240
      TabIndex        =   23
      Top             =   1800
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   24
      Left            =   2880
      TabIndex        =   22
      Top             =   1800
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   23
      Left            =   2520
      TabIndex        =   21
      Top             =   1800
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   22
      Left            =   2160
      TabIndex        =   20
      Top             =   1800
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   21
      Left            =   1800
      TabIndex        =   19
      Top             =   1800
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   20
      Left            =   1440
      TabIndex        =   18
      Top             =   1800
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   19
      Left            =   4680
      TabIndex        =   17
      Top             =   1440
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   18
      Left            =   4320
      TabIndex        =   16
      Top             =   1440
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   17
      Left            =   3960
      TabIndex        =   15
      Top             =   1440
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   16
      Left            =   3600
      TabIndex        =   14
      Top             =   1440
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   15
      Left            =   3240
      TabIndex        =   13
      Top             =   1440
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   14
      Left            =   2880
      TabIndex        =   12
      Top             =   1440
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   13
      Left            =   2520
      TabIndex        =   11
      Top             =   1440
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   12
      Left            =   2160
      TabIndex        =   10
      Top             =   1440
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   11
      Left            =   1800
      TabIndex        =   9
      Top             =   1440
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   10
      Left            =   1440
      TabIndex        =   8
      Top             =   1440
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   9
      Left            =   4680
      TabIndex        =   7
      Top             =   1080
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   8
      Left            =   4320
      TabIndex        =   6
      Top             =   1080
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   7
      Left            =   3960
      TabIndex        =   5
      Top             =   1080
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   6
      Left            =   3600
      TabIndex        =   4
      Top             =   1080
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   5
      Left            =   3240
      TabIndex        =   3
      Top             =   1080
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   4
      Left            =   2880
      TabIndex        =   2
      Top             =   1080
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   3
      Left            =   2520
      TabIndex        =   1
      Top             =   1080
      Width           =   375
   End
   Begin VB.Label lblBlock 
      BackColor       =   &H00808080&
      Height          =   375
      Index           =   2
      Left            =   2160
      TabIndex        =   0
      Top             =   1080
      Width           =   375
   End
   Begin VB.Label lblCurrentScore 
      Alignment       =   2  'Center
      BackColor       =   &H00404040&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   960
      TabIndex        =   223
      Top             =   360
      Width           =   1215
   End
   Begin VB.Label lblCurrentLevel 
      Alignment       =   2  'Center
      BackColor       =   &H00404040&
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   2880
      TabIndex        =   225
      Top             =   360
      Width           =   615
   End
   Begin VB.Label Label15 
      Alignment       =   2  'Center
      BackColor       =   &H00404040&
      Caption         =   "Rows Cleared"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   4200
      TabIndex        =   231
      Top             =   120
      Width           =   1455
   End
   Begin VB.Shape Shape2 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   7455
      Left            =   1320
      Top             =   960
      Width           =   3855
   End
   Begin VB.Image Image1 
      Height          =   8850
      Left            =   0
      Picture         =   "frmGameWindowCompact.frx":2779
      Stretch         =   -1  'True
      Top             =   0
      Width           =   7935
   End
End
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

