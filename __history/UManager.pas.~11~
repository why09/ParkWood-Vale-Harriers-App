unit UManager;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UMain, Data.DB, Data.Win.ADODB,
  Vcl.StdCtrls, Vcl.DBLookup, Vcl.Grids, Vcl.DBGrids;

type
  TfrmManager = class(TForm)
    dsActivity: TDataSource;
    dsTraining: TDataSource;
    btnChange: TButton;
    DBGrid1: TDBGrid;
    btnUser: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnChangeClick(Sender: TObject);
    procedure btnUserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManager: TfrmManager;

implementation

{$R *.dfm}

uses ULogon, UPassChange, UUser;

procedure TfrmManager.btnChangeClick(Sender: TObject);
begin
  frmChangePassword.ShowModal;
end;

procedure TfrmManager.btnUserClick(Sender: TObject);
begin
  frmUser.ShowModal;
  frmManager.Visible := false;
end;

procedure TfrmManager.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
