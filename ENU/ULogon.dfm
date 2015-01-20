object frmLogon: TfrmLogon
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Login Please'
  ClientHeight = 253
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblUsername: TLabel
    Left = 104
    Top = 32
    Width = 52
    Height = 13
    Caption = 'Username:'
  end
  object lblPassword: TLabel
    Left = 104
    Top = 59
    Width = 50
    Height = 13
    Caption = 'Password:'
  end
  object edtPassword: TEdit
    Left = 184
    Top = 59
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
  object btnLogin: TButton
    Left = 184
    Top = 152
    Width = 121
    Height = 25
    Caption = '&Submit'
    Default = True
    TabOrder = 1
    OnClick = btnLoginClick
    OnEnter = btnLoginClick
  end
  object btnExit: TButton
    Left = 184
    Top = 215
    Width = 121
    Height = 25
    Cancel = True
    Caption = '&Exit'
    TabOrder = 2
    OnClick = btnExitClick
  end
  object edtUsername: TEdit
    Left = 184
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object btnChangePassword: TButton
    Left = 184
    Top = 183
    Width = 121
    Height = 26
    Caption = '&Change Password'
    TabOrder = 4
    OnClick = btnChangePasswordClick
  end
end
