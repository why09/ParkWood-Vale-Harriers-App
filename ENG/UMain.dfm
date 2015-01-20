object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 527
  ClientWidth = 815
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  ScreenSnap = True
  WindowState = wsMaximized
  OnClick = FormClick
  PixelsPerInch = 96
  TextHeight = 13
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.15.0;Data Source=dbUsers.accdb;Pers' +
      'ist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.15.0'
    Left = 40
    Top = 32
  end
  object ADOTableUsers: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tblUsers'
    Left = 40
    Top = 92
    object ADOTableUsersUserID: TIntegerField
      FieldName = 'UserID'
    end
    object ADOTableUsersUsername: TWideStringField
      FieldName = 'Username'
      Size = 50
    end
    object ADOTableUsersPassword: TWideStringField
      FieldName = 'Password'
      Size = 255
    end
    object ADOTableUsersLevel: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'Level'
    end
    object ADOTableUsersFName: TWideStringField
      FieldName = 'FName'
      Size = 255
    end
    object ADOTableUsersSName: TWideStringField
      FieldName = 'SName'
      Size = 255
    end
    object ADOTableUsersDOB: TDateTimeField
      FieldName = 'DOB'
    end
    object ADOTableUsersGender: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'Gender'
    end
    object ADOTableUsersAddress1: TWideStringField
      FieldName = 'Address1'
      Size = 255
    end
    object ADOTableUsersAddress2: TWideStringField
      FieldName = 'Address2'
      Size = 255
    end
    object ADOTableUsersTown: TWideStringField
      FieldName = 'Town'
      Size = 255
    end
    object ADOTableUsersPCode: TWideStringField
      FieldName = 'PCode'
      Size = 255
    end
    object ADOTableUsersStateProvince: TWideStringField
      FieldName = 'State/Province'
      Size = 255
    end
    object ADOTableUsersTelephoneNumber: TWideStringField
      FieldName = 'Telephone Number'
      Size = 255
    end
    object ADOTableUsersMobileNumber: TWideStringField
      FieldName = 'Mobile Number'
      Size = 255
    end
    object ADOTableUsersEMailAddress: TWideStringField
      FieldName = 'EMail Address'
      Size = 255
    end
  end
  object ADOTableLevel: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tblLevel'
    Left = 40
    Top = 144
  end
  object ADOTableTrain: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tblTrain'
    Left = 40
    Top = 200
  end
  object ADOTableActivity: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tblActivity'
    Left = 40
    Top = 256
  end
end
