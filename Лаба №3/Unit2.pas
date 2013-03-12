unit Unit2;

interface
function iterac(var x0,e:real):real;
function FunX(o:real):real;
       function f(x: real): real;
       function proizv(x, toch: real): real;
       procedure secut(var x: real; var it: byte; toch, gra, grb: real);



implementation

uses math,unit1;

 var
 fx,fxp:real;

function FunX(o:real):real;
begin
     fx:=sqr(sqr(o))*o-3*sqr(o)+1;           //функция f(x)
     fxp:=5*sqr(sqr(o))-6*o;                 //производная f'(x)
     end;
function f(x: real): real;
begin
  //f:=exp(1/3*ln(0.07))-2*x+arctan(sqrt(x));
   f:=(1/(1.2*tan(x)+sqrt(x+1)))-1;
end;

function proizv(x, toch: real): real;
begin
  proizv:=(f(x+toch/2)-f(x-toch/2))/toch;
end;

procedure secut(var x: real; var it: byte; toch, gra, grb: real);
var fl: boolean;
begin
  fl:=true;
  it:=0;
  while fl and (it<50) do
    begin
    inc(it);
    x:=(gra+grb)/2;
    if f(x)*f(grb) > 0 then grb:=x else gra:=x;
    if abs(grb-gra)<toch then fl:=false;
    end;
  x:=(gra+grb)/2
end;


  {fl:=true;
  it:=0;
  x:=(gra+grb)/2;
  while fl and (it<50) do
    begin
    inc(it);
    x2:=x-f(x)/proizv(x, toch);
    if abs(x2-x) < toch then fl:=false;
    x:=x2;
    end;  }

function iterac(var x0,e:real;ololo:integer):real;
var n:integer;delta:real;
begin   {
 n:=0;
 writeln('Промежуточныe значения метода итераций');
 repeat
 delta:=abs(x0-proizv(x0));
 write('x', n:1, ' = ',x0:8:5,' fi(x',n:1, ')=', proizv(x0):8:5,' eps=',delta:8:5);
 x0:=proizv(x0);
 n:=n+1; readln;
 until (n=ololo);
 writeln('Число итераций =',n);
 iterac:= x0
end;
begin
 clrscr;
 write('Начальное значение корня = ');readln(x0);
 write('Точность вычисления корня = ');readln(eps);
 x1:=iterac(x0,eps);
 writeln('Приближенное значение корня с точностью ',eps:7:5);
 writeln('x = ',x1:8:6);
 readln  }


end;

end.
