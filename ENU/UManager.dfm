object frmManager: TfrmManager
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Manager Options'
  ClientHeight = 318
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btnChange: TButton
    Left = 8
    Top = 285
    Width = 97
    Height = 25
    Caption = 'Change Password'
    TabOrder = 0
    OnClick = btnChangeClick
  end
  object DBGrid1: TDBGrid
    Left = 104
    Top = 16
    Width = 320
    Height = 120
    DataSource = dsTraining
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dsActivity: TDataSource
    DataSet = frmMain.ADOTableActivity
    Left = 24
    Top = 16
  end
  object dsTraining: TDataSource
    DataSet = frmMain.ADOTableTrain
    Left = 24
    Top = 72
  end
end
