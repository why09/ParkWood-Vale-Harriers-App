object frmPrint: TfrmPrint
  Left = 0
  Top = 0
  Caption = 'Print:'
  ClientHeight = 588
  ClientWidth = 808
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbgTrain: TDBGrid
    Left = 128
    Top = 32
    Width = 320
    Height = 120
    DataSource = dsTrain
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgUsers: TDBGrid
    Left = 128
    Top = 192
    Width = 320
    Height = 120
    DataSource = dsUser
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object prdProj: TPrintDialog
    Left = 24
    Top = 24
  end
  object dsTrain: TDataSource
    DataSet = frmMain.ADOTableTrain
    Left = 24
    Top = 96
  end
  object dsUser: TDataSource
    DataSet = frmMain.ADOTableUsers
    Left = 24
    Top = 168
  end
end
