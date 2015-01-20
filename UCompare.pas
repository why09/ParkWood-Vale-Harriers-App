unit UCompare;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCompare = class(TForm)
    btnTeam: TButton;
    edtTeam: TEdit;
    procedure btnTeamClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompare: TfrmCompare;

implementation

{$R *.dfm}

uses ULogon, UFunc_Proc;


procedure TfrmCompare.btnTeamClick(Sender: TObject);
var
  Team          : integer;
  PointArray    : TRealPointArray;
  PositionData  : TPositionData;
  M, B, r       : extended;
begin
  M             := 0;
  B             := 0;
  r             := 0;
  PointArray    := UFunc_Proc.PointArrayCreator();
  PositionData  := UFunc_Proc.LinearRegression(PointArray, M, B, r);
  Team          := UFunc_Proc.Positon(PositionData);
  case team of
    1: edtTeam.Text := 'You are selected for the team!!! For now...';
    0: edtTeam.Text := 'You are not on the team yet... Keep trying!';
  end;
end;

end.
