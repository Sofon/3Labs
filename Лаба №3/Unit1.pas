unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TeeProcs, TeEngine, Chart, Grids, ComCtrls,
  Series,math,unit2;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    Edit4: TEdit;
    UpDown1: TUpDown;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    UpDown2: TUpDown;
    Button3: TButton;
    Label6: TLabel;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Series1Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}





procedure TForm1.FormCreate(Sender: TObject);
var
  i,n: integer;
  e: double;
begin
  StringGrid1.Cells[0,0]:='X';
  StringGrid1.Cells[0,1]:='Y';

  StringGrid2.Cells[0,0]:='  E';
  StringGrid2.Cells[1,0]:='������ I';
  StringGrid2.Cells[2,0]:='��������';
  StringGrid2.Cells[3,0]:='������ II';
  StringGrid2.Cells[4,0]:='��������';

  n:=UpDown1.Position; e:=0.1;
  for i:=1 to n do
  begin
    StringGrid2.Cells[0,i]:=FloatToStrF(e, ffFixed, i+2, i);
    e:=e/10;
  end;
end;


procedure TForm1.Button2Click(Sender: TObject);
var
 i,k:byte;
 a,b,x,dx,y: double;
begin
 a:=StrToFloat(Edit1.Text);
 b:=StrToFloat(Edit2.Text);
 k:=100;

 x:=a;
 dx:=(b-a)/(k-1);
 Series1.Clear;
 Series2.Clear;
 Series3.Clear;

 for i:=1 to k do
 begin
   y:=f(x);
   Series1.AddXY(x,y);  // ����� �������
   Series2.AddXY(x,0);  // ��� OX ������ �����
   Series3.AddXY(0,y);  // ��� OY ������ �����
   x:=x+dx;
 end;
 end;


procedure TForm1.Series1Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowMessage(Format('��������� ����� (%5.3f; %6.3f)',
                     [Series1.XValue[ValueIndex], Series1.YValue[ValueIndex]]));


end;


procedure TForm1.Button1Click(Sender: TObject);
  var
  i,eps:integer;
  it: byte;
  a,b,x,n,n2,x0,j:real;
  fl,f2,xl,x2:Real;
begin
  N:=0.1;
  a:= StrToFloat(Edit1.Text);
  b:=  StrToFloat(Edit2.Text);
  StringGrid2.RowCount:=strtoint(Edit3.Text)+1;
  if (a>0.517) or (b<0.5179) then ShowMessage('������� ������ ����� ��� �������') else
  for i:=1 to strtoint(Edit3.Text) do
    begin
    StringGrid2.Cells[0,i]:=FloatToStrF(n,ffFixed,i+2,i+1);
    secut(x, it, n, a, b);
    StringGrid2.Cells[1,i]:=FloatToStrF(x,ffFixed,i+2,i+1);
    StringGrid2.Cells[2,i]:=FloatToStrF(it,ffFixed,2, 0);
   { casat(x, it, n, a, b);
    StringGrid2.Cells[3,i]:=FloatToStrF(x,ffFixed,i+2,i+1);
    StringGrid2.Cells[4,i]:=FloatToStrF(it,ffFixed,2, 0);
    n:=n/10;  }
   n2:=0;
   j:=1;
   eps:=0;
 //writeln('������������e �������� ������ ��������');
 eps:=strtoint(Edit3.Text)+1;
 repeat
 eps:=eps+1;
 repeat
 x0:=x;
 x:=abs(x-proizv(x));
 inc(j);


 x:=proizv(x);
 n2:=n2+1; readln;

 until (abs(x-x0)<=eps);
 //writeln('����� �������� =',n);
 //iterac:= x
 StringGrid2.Cells[3,j]:=FloatToStrF(x,ffFixed,j+2,j+1);
 StringGrid2.Cells[4,i]:=FloatToStrF(n2,ffFixed,2, 0);
 until eps=strtoint(Edit3.Text)+1;
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
a,b,x,dx,y: real;
k,i: integer;
begin
  a:= StrToFloat(Edit1.Text);
  b:=  StrToFloat(Edit2.Text);
  k:= UpDown2.Position;
  x:=a;
  dx := (b-a)/(k+1);
  StringGrid1.ColCount:=K+1;
  for i:=1 to k do
  begin
    y:=f(x);
    StringGrid1.Cells[i,0]:=FloatToStrF(x,ffFixed,9,7);
     StringGrid1.Cells[i,1]:=FloatToStrF(y,ffFixed,9,7);
    x:=x+dx
  end;
end;

procedure TForm1.Edit1Exit(Sender: TObject);
begin
   try
   if (StrToFloat(Edit1.Text)>StrToFloat(Edit2.Text))
   or (StrToFloat(Edit1.Text)<0.01)
   then begin ShowMessage('������ ���� ��������� �����������: 0,01<=A<B<=1,99');
   Edit1.Text:='0,01'; Edit2.Text:='1,99'; end
  except
    ShowMessage('������ ���� ������� �����, ��� ����� . ������ ,');
   Edit1.Text:='0,01'; Edit2.Text:='1,99';
  end;
end;

procedure TForm1.Edit2Exit(Sender: TObject);
begin
  try
   if (StrToFloat(Edit1.Text)>StrToFloat(Edit2.Text))
   or (StrToFloat(Edit2.Text)>1.99)
   then begin ShowMessage('������ ���� ��������� �����������: 0,01<=A<B<=1,99');
   Edit1.Text:='0,01'; Edit2.Text:='1,99'; end
  except
    ShowMessage('������ ���� ������� �����, ��� ����� . ������ ,');
   Edit1.Text:='0,01'; Edit2.Text:='1,99';
  end;
end;

end.

