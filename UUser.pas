unit UUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UMain, Data.DB, Vcl.StdCtrls,
  Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmUser = class(TForm)
    dsUsers: TDataSource;
    btnNewSession: TButton;
    btnChange: TButton;
    dsQuery: TDataSource;
    qryActivity: TADOQuery;
    DBGrid1: TDBGrid;
    btnPrint: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNewSessionClick(Sender: TObject);
    procedure btnChangeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUser: TfrmUser;

implementation

{$R *.dfm}

uses ULogon, UTraining, UPassChange, UPrint;

procedure TfrmUser.btnChangeClick(Sender: TObject);
begin
  frmChangePassword.ShowModal;
end;

procedure TfrmUser.btnNewSessionClick(Sender: TObject);
begin
  frmTraining.ShowModal;
end;

procedure TfrmUser.btnPrintClick(Sender: TObject);
begin
  frmPrint.ShowModal;
end;

procedure TfrmUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfrmUser.FormShow(Sender: TObject);
begin
   qryActivity.Active:=true;
end;

end.
