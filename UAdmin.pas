unit UAdmin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UMain, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.DB, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmAdmin = class(TForm)
    dsUsers: TDataSource;
    DBGrid1: TDBGrid;
    btnFirst: TButton;
    btnNext: TButton;
    btnPrevious: TButton;
    btnLast: TButton;
    dbeUsername: TDBEdit;
    dbePassword: TDBEdit;
    dbeTown: TDBEdit;
    dbeEMail: TDBEdit;
    dbeFName: TDBEdit;
    dbeAddress2: TDBEdit;
    dbeMobNum: TDBEdit;
    dbeLevel: TDBEdit;
    dbeAddress1: TDBEdit;
    dbeTelNum: TDBEdit;
    dbeStateProvince: TDBEdit;
    dbePCode: TDBEdit;
    dbeGender: TDBEdit;
    dbeDOB: TDBEdit;
    dbeSName: TDBEdit;
    btnDelete: TButton;
    btnSave: TButton;
    btnNew: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    btnPrint: TButton;
    btnManager: TButton;
    btnUser: TButton;
    btnChangePassword: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFirstClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPreviousClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnManagerClick(Sender: TObject);
    procedure btnUserClick(Sender: TObject);
    procedure btnChangePasswordClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdmin: TfrmAdmin;

implementation

{$R *.dfm}

uses ULogon, UPrint, UManager, UUser, UPassChange;


procedure TfrmAdmin.btnChangePasswordClick(Sender: TObject);
begin
  frmChangePassword.ShowModal;
end;

procedure TfrmAdmin.btnDeleteClick(Sender: TObject);
begin
  frmMain.ADOTableUsers.Delete;
end;

procedure TfrmAdmin.btnFirstClick(Sender: TObject);
begin
  frmMain.ADOTableUsers.First;
  ShowMessage('First Record');
end;

procedure TfrmAdmin.btnLastClick(Sender: TObject);
begin
  frmMain.ADOTableUsers.Last;
  ShowMessage('Last Record');
end;

procedure TfrmAdmin.btnManagerClick(Sender: TObject);
begin
  frmManager.ShowModal;
  frmAdmin.Visible := false;
end;

procedure TfrmAdmin.btnNewClick(Sender: TObject);
begin
  frmMain.ADOTableUsers.Append;
end;

procedure TfrmAdmin.btnNextClick(Sender: TObject);
begin
  frmMain.ADOTableUsers.Next;
  ShowMessage('Next Record');
end;

procedure TfrmAdmin.btnPreviousClick(Sender: TObject);
begin
  frmMain.ADOTableUsers.Prior;
  ShowMessage('Previous Record');
end;

procedure TfrmAdmin.btnPrintClick(Sender: TObject);
begin
  frmPrint.ShowModal;
end;

procedure TfrmAdmin.btnSaveClick(Sender: TObject);
begin
  frmMain.ADOTableUsers.Post;
end;

procedure TfrmAdmin.btnUserClick(Sender: TObject);
begin
  frmUser.ShowModal;
  frmAdmin.Visible := false;
end;

procedure TfrmAdmin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
