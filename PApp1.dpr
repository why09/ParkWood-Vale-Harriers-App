program PApp1;



uses
  Vcl.Forms,
  UMain in 'UMain.pas' {frmMain},
  ULogon in 'ULogon.pas' {frmLogon},
  UAdmin in 'UAdmin.pas' {frmAdmin},
  UManager in 'UManager.pas' {frmManager},
  UUser in 'UUser.pas' {frmUser},
  UPassChange in 'UPassChange.pas' {frmChangePassword},
  UTraining in 'UTraining.pas' {frmTraining},
  UPrint in 'UPrint.pas' {frmPrint},
  UFunc_Proc in 'UFunc_Proc.pas',
  UCompare in 'UCompare.pas' {frmCompare};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmLogon, frmLogon);
  Application.CreateForm(TfrmAdmin, frmAdmin);
  Application.CreateForm(TfrmManager, frmManager);
  Application.CreateForm(TfrmUser, frmUser);
  Application.CreateForm(TfrmChangePassword, frmChangePassword);
  Application.CreateForm(TfrmTraining, frmTraining);
  Application.CreateForm(TfrmPrint, frmPrint);
  Application.CreateForm(TfrmCompare, frmCompare);
  Application.Run;
end.
