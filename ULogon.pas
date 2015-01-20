unit ULogon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UMain;

type
  TfrmLogon = class(TForm)
    edtPassword: TEdit;
    btnLogin: TButton;
    btnExit: TButton;
    edtUsername: TEdit;
    lblUsername: TLabel;
    lblPassword: TLabel;
    btnChangePassword: TButton;
    procedure btnExitClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnChangePasswordClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogon:             TfrmLogon;
  ID, status :          Integer;
  username, password :  String;

implementation

{$R *.dfm}

uses UAdmin, UManager, UUser, UPassChange;

procedure TfrmLogon.btnChangePasswordClick(Sender: TObject);
begin
  frmLogon.Visible := False;
  frmChangePassword.ShowModal;
end;

procedure TfrmLogon.btnExitClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TfrmLogon.btnLoginClick(Sender: TObject);
var
  userFound : Boolean;

begin
  userFound := false;
  frmMain.ADOTableUsers.First;
  while (not frmMain.ADOTableUsers.Eof) and (not userFound = true) do
  begin
    if frmMain.ADOTableUsers['Username'] <> edtUsername.Text then
      frmMain.ADOTableUsers.Next
    else
    begin
      userFound  := true;
      username   := frmMain.ADOTableUsers['Username'];
      password   := frmMain.ADOTableUsers['Password'];
      status     := frmMain.ADOTableUsers['Level'];
      ID         := frmMain.ADOTableUsers['UserID'];
    end;
  end;
  if userFound = false then
    ShowMessage('User does not exist on system, please contact the Admin.')
  else
    if password <> edtPassword.Text then
      ShowMessage('Incorrect Password')
    else
    begin
      frmLogon.Visible := false;
      case status of
      1: frmAdmin.ShowModal;
      2: frmManager.ShowModal;
      3: frmUser.ShowModal;
      end;
    end;
end;

procedure TfrmLogon.FormShow(Sender: TObject);
begin
  edtUsername.Text := '';
  edtPassword.Text := '';
end;

end.
