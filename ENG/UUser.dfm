object frmUser: TfrmUser
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'User Interface'
  ClientHeight = 270
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnNewSession: TButton
    Left = 24
    Top = 32
    Width = 145
    Height = 25
    Caption = 'Add New Training Session'
    TabOrder = 0
    OnClick = btnNewSessionClick
  end
  object btnChange: TButton
    Left = 312
    Top = 32
    Width = 97
    Height = 25
    Caption = 'Change Password'
    TabOrder = 1
    OnClick = btnChangeClick
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 96
    Width = 320
    Height = 120
    DataSource = dsQuery
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnPrint: TButton
    Left = 200
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 3
    OnClick = btnPrintClick
  end
  object dsUsers: TDataSource
    DataSet = frmMain.ADOTableUsers
    Left = 440
    Top = 32
  end
  object dsQuery: TDataSource
    DataSet = qryActivity
    Left = 440
    Top = 96
  end
  object qryActivity: TADOQuery
    Connection = frmMain.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tblTrain.SDate, tblTrain.STime, tblActivity.ActivityName,' +
        ' tblTrain.Distance, tblTrain.TimeTaken, tblTrain.CaloriesBurned,' +
        ' [distance]/[timetaken] AS speed'
      
        'FROM tblUsers INNER JOIN (tblActivity INNER JOIN tblTrain ON tbl' +
        'Activity.ActivityID = tblTrain.ActivityID) ON tblUsers.UserID = ' +
        'tblTrain.MemberID'
      'ORDER BY [distance]/[timetaken] DESC;')
    Left = 440
    Top = 160
  end
end
