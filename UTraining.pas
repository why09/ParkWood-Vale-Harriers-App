unit UTraining;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.Samples.Calendar, Vcl.ComCtrls, Vcl.Mask;

type
  TfrmTraining = class(TForm)
    btnPost         : TButton;
    dsActivity      : TDataSource;
    dsTrain         : TDataSource;
    btnCalCalc      : TButton;
    btnCancel       : TButton;
    DBEdit1         : TDBEdit;
    DBEdit3         : TDBEdit;
    DBEdit4         : TDBEdit;
    DBEdit5         : TDBEdit;
    lblInstruct2: TLabel;
    lblInstruct4: TLabel;
    lblInstruct3: TLabel;
    lblInstruct5: TLabel;
    lblInstruct6: TLabel;
    DateTimePicker1 : TDateTimePicker;
    cldToday: TCalendar;
    Edit1           : TEdit;
    btnPoints: TButton;
    Edit2: TEdit;
    lblInstruct7: TLabel;
    procedure btnCalCalcClick(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPointsClick(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTraining                   : TfrmTraining;
  distance, time, speed         : real;
  calories, teampoints, style   : integer;

implementation

{$R *.dfm}

uses UMain, ULogon, UFunc_Proc;



procedure TfrmTraining.btnCalCalcClick(Sender: TObject);
var
  speedwhole : integer;
  outofrange : boolean;
begin
  speedwhole:=Trunc(speed*100);
  outofrange:=false;
  if Edit2.Text='Running' then
    case speedwhole of
      500..599   :  calories := 472;
      600..699   :  calories := 590;
      700..799   :  calories := 679;
      800..899   :  calories := 797;
      900..999   :  calories := 885;
      1000..1099 :  calories := 944;
  else
      outofrange:=true;
  end;

  if Edit2.Text='Cycling' then
    case speedwhole of
      0..999     :  calories := 236;
      1000..1199 :  calories := 354;
      1200..1399 :  calories := 472;
      1400..1599 :  calories := 590;
      1600..2000 :  calories := 708;
      2001..4000 :  calories := 944;
  else
     outofrange:=true;
  end;

   if Edit2.Text='Swimming' then
     case speedwhole of
       1 :  calories := 413;
       2 :  calories := 590;
       3 :  calories := 413;
       4 :  calories := 590;
       5 :  calories := 649;
   else
     outofrange:=true;
   end;

  if outofrange then
    ShowMessage('Inputs will not calculate a calorie count for this session.')
  else
    DBEdit5.Text:=INTTOSTR(calories);
end;

procedure TfrmTraining.btnCancelClick(Sender: TObject);
begin
  FRMmain.ADOTableTrain.Cancel;
  close;
  ShowMessage('Training session Discarded.');
end;

procedure TfrmTraining.btnPointsClick(Sender: TObject);
begin
  teampoints := 0;
  style := 0;
  style := UFunc_Proc.StyleToInteger(Edit2.Text);
  if style = (1 or 2 or 3 or -1) then
    case style of
      1  : teampoints := UFunc_Proc.PointsAllocator(speed, 1);
      2  : teampoints := UFunc_Proc.PointsAllocator(speed, 2);
      3  : teampoints := UFunc_Proc.PointsAllocator(speed, 3);
      -1 : ShowMessage('Make sure you have spelt the style correctly!')
    end
  else
    begin
    ShowMessage('Make sure you have filled in all the fields!');
    end;
end;

procedure TfrmTraining.btnPostClick(Sender: TObject);
var
  points : integer;
begin
  points := frmMain.ADOTableTrain['Points'];
  if points = 0 then
    ShowMessage('You need to calculate points first!!!')
  else
  begin
    frmMain.ADOTableTrain.Post;
    close;
    ShowMessage('Training Session Saved');
  end;
end;

procedure TfrmTraining.DateTimePicker1Change(Sender: TObject);
begin
   DBEdit1.Text := DateToStr(DateTimepicker1.Date);
end;

procedure TfrmTraining.DBEdit4Change(Sender: TObject);
var
  hour, min, sec, msec : word;
begin
  distance   := StrToFloat(DBEdit3.Text);
  DecodeTime(StrToTime(DBEdit4.Text), hour, min, sec ,msec);
  time       := (hour + (min/60) + (sec/360));
  speed      := distance/time;
  edit1.Text := FloatToStrf(speed, ffGeneral, 5, 2);
end;

procedure TfrmTraining.DBLookupComboBox1Click(Sender: TObject);
begin
  style := StrToInt(Edit2.Text);
end;

procedure TfrmTraining.Edit1Change(Sender: TObject);
begin
  speed := StrToFloat(Edit1.Text);
end;

procedure TfrmTraining.FormCreate(Sender: TObject);
begin
  frmMain.ADOTableTrain.Edit;
end;

procedure TfrmTraining.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date := date;
  frmMain.ADOTableTrain.append;
  frmMain.ADOTableTrain['MemberID']    := ID;
  frmMain.ADOTableTrain['SDate']       := date;
  frmMain.ADOTableTrain['ActivityID']  := 1;
end;

end.
