unit MinionsSupermarket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMinionsSupermarketForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    EditSize: TEdit;
    EditNum: TEdit;
    BtnStart: TButton;
    BtnStop: TButton;
    BtnFAQ: TButton;
    MemoDetail: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    MemoResult: TMemo;
    Label5: TLabel;
    procedure BtnStartClick(Sender: TObject);
    procedure BtnStopClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type
  TMyThread = class(TThread)
  public
    procedure Execute; override;
    procedure DoWork (numberI : integer);
  end;

var
  MinionsSupermarketForm: TMinionsSupermarketForm;
  min: integer; //переменная количества миньонов
  minP: array [0..6] of integer; //переменная приоритетов миньонов
  minN: array [0..65535] of integer; //переменная количества продуктов миньонов
  minNT: array [0..65535] of TMyThread; //переменная количества продуктов миньонов
  prod: integer; //объем корзины
  minprod: integer; //общее количество продуктов в корзине
  n: array [0..65535] of integer;
  MinNB: array [0..65535] of Boolean;

implementation

{$R *.dfm}

function MinPString(Num : integer) : string;
begin
  if Num = 0 then Result := 'фоновый режим'
  else if Num = 1 then Result := 'нижайший поток'
  else if Num = 2 then Result := 'низкий поток'
  else if Num = 3 then Result := 'нормальный поток'
  else if Num = 4 then Result := 'высокий поток'
  else if Num = 5 then Result := 'высочайший поток'
  else if Num = 6 then Result := 'критический поток';
end;

procedure TMyThread.DoWork (numberI : integer);
var
  I, J :integer;
begin
  for J := 1 to min do
  if J = numberI then
  begin
  if prod <= minprod then

    begin
      sleep (50);
      minN[numberI] :=  prod - minprod;
      minprod := minprod + minN[numberI];
      n[J] := n[J] + minN[numberI];
      MinionsSupermarketForm.MemoDetail.Lines.Add('Миньон ['+IntToStr(numberI)+'] - '+IntToStr(minN[numberI])+' товаров;');
      MinionsSupermarketForm.Label5.Caption := 'Заполненность корзины - '+FloatToStr(100.0*minprod/prod)+'%'+sLineBreak+'('+IntToStr(minprod)+' из '+IntToStr(prod)+') шт';
      for I := 1 to min do
        begin
          minNT[I].Terminate;
        end;
    end else
    begin
      sleep (50);
      minN[numberI] := minN[numberI] + 1;
      minprod := minprod + minN[numberI];
      n[J] := n[J] + minN[numberI];
      MinionsSupermarketForm.MemoDetail.Lines.Add('Миньон ['+IntToStr(numberI)+'] - '+IntToStr(minN[numberI])+' товаров;');
      MinionsSupermarketForm.Label5.Caption := 'Заполненность корзины - '+FloatToStr(100.0*minprod/prod)+'%'+sLineBreak+'('+IntToStr(minprod)+' из '+IntToStr(prod)+') шт';
    end;
  end;
end;

procedure TMyThread.Execute;
var
  I, J: Integer;
begin
  while not Terminated do
    for I := 1 to min do
    begin
      DoWork(I);
    end;
    for I := 1 to min do
    if minNB[I] = false then
    begin
      minNB[I] := true;
      if n[I] < 0 then
      MinionsSupermarketForm.MemoResult.Lines.Add('Миньон ['+IntToStr(I)+'], '+MinPString(minP[I])+' - ('+IntToStr(n[I])+') выкинул излишек товаров;')
      else
      MinionsSupermarketForm.MemoResult.Lines.Add('Миньон ['+IntToStr(I)+'], '+MinPString(minP[I])+' - '+IntToStr(n[I])+' товаров;');
    end;
    MinionsSupermarketForm.btnStop.Enabled := false;
end;

procedure TMinionsSupermarketForm.BtnStartClick(Sender: TObject);
var
  I: Integer;
begin
  prod := StrToInt(MinionsSupermarketForm.EditSize.Text);
  minprod := 0;
  min := StrToInt(MinionsSupermarketForm.EditNum.Text);
  MemoResult.Lines.Clear;
  MemoDetail.Lines.Clear;
  for I := 1 to min do
  begin
    n[I] := 0;
    minN[I] := 0;
    minP[I] := Random(7);
    minNB[i] := false;
    minNT[I] := TMyThread.Create(true);
    minNT[I].freeonterminate := true;
    minNT[I].priority := TThreadPriority(minP[I]);
    minNT[I].Resume;
  end;
  btnStop.Enabled := true;
end;

procedure TMinionsSupermarketForm.BtnStopClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 1 to min do
  begin
    minNT[I].Terminate;
  end;
  btnStop.Enabled := false;
end;

end.
