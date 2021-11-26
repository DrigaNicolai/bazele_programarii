Program valoarea;

Procedure functie(pos1, pos2, step :integer; var rez: integer);
var
  i: integer;
begin
  for i:= pos1 to pos2 do begin
    rez:= rez + (3*i*i+i+2);
  end;
  write(rez);
end;

var
  pos1, pos2, h, rez: integer;
 
begin
  pos1:= -2;
  pos2:= 5;
  h:= 1;
  rez:= 0;
  write('Значение функции = ');
  functie(pos1, pos2, h, rez);
end.