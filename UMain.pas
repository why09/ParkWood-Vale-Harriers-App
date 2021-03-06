unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB;

type
  TfrmMain = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTableUsers: TADOTable;
    ADOTableLevel: TADOTable;
    ADOTableTrain: TADOTable;
    ADOTableActivity: TADOTable;
    ADOTableUsersUserID: TIntegerField;
    ADOTableUsersUsername: TWideStringField;
    ADOTableUsersPassword: TWideStringField;
    ADOTableUsersLevel: TIntegerField;
    ADOTableUsersFName: TWideStringField;
    ADOTableUsersSName: TWideStringField;
    ADOTableUsersDOB: TDateTimeField;
    ADOTableUsersGender: TIntegerField;
    ADOTableUsersAddress1: TWideStringField;
    ADOTableUsersAddress2: TWideStringField;
    ADOTableUsersTown: TWideStringField;
    ADOTableUsersPCode: TWideStringField;
    ADOTableUsersStateProvince: TWideStringField;
    ADOTableUsersTelephoneNumber: TWideStringField;
    ADOTableUsersMobileNumber: TWideStringField;
    ADOTableUsersEMailAddress: TWideStringField;
    ADOTableTrainTrainID: TAutoIncField;
    ADOTableTrainMemberID: TIntegerField;
    ADOTableTrainSDate: TDateTimeField;
    ADOTableTrainSTime: TDateTimeField;
    ADOTableTrainActivityID: TIntegerField;
    ADOTableTrainDistance: TFloatField;
    ADOTableTrainTimeTaken: TIntegerField;
    ADOTableTrainCaloriesBurned: TIntegerField;
    ADOTableTrainStyle: TIntegerField;
    ADOTableTrainPoints: TSmallintField;
    ADOTableLevelLevelID: TAutoIncField;
    ADOTableLevelTitle: TWideStringField;
    ADOTableLevelDescription: TWideStringField;
    ADOTableActivityActivityID: TAutoIncField;
    ADOTableActivityActivityName: TWideStringField;
    ADOTableActivityActivityType: TWideStringField;
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declerations  }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses ULogon;



procedure TfrmMain.FormClick(Sender: TObject);
begin
  if frmLogon.Visible=false then
     frmLogon.Visible := true
end;

end.
