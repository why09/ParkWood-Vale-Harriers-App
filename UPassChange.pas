unit UPassChange;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UMain, Vcl.StdCtrls, ULogon;

type
  TfrmChangePassword = class(TForm)
    lblOldPassword: TLabel;
    lblNewPassword: TLabel;
    lblRepeatNewPassword: TLabel;
    edtOldPassword: TEdit;
    edtNewPassword: TEdit;
    edtRepeatNewPassword: TEdit;
    btnChange: TButton;
    btnExit: TButton;
    procedure btnExitClick(Sender: TObject);
    procedure btnChangeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChangePassword: TfrmChangePassword;

implementation

{$R *.dfm}

uses UAdmin, UManager, UUser;


procedure TfrmChangePassword.btnChangeClick(Sender: TObject);
begin
  if edtOldPassword.Text <> password then
    Showmessage('Incorrect Password')
  else
    if edtNewPassword.Text <> edtRepeatNewPassword.Text then
      ShowMessage ('Passwords do not match')
    else
      if not frmMain.ADOTableUsers.Locate('Username', username, []) then
        ShowMessage('User Not Found')
      else
      begin
        frmMain.ADOTableUsers.Edit;
        frmMain.ADOTableUsers['Password'] := edtNewPassword.Text;
        password := edtNewPassword.Text;
        frmMain.ADOTableUsers.Post;
        showMessage('Password has been changed');
        close;
      end;
end;

procedure TfrmChangePassword.btnExitClick(Sender: TObject);
begin
  close;
end;

end.
