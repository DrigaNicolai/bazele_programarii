Program length;
var
 l:integer;
 s:1..5;
 rez:real;
begin
  writeln('Введите длину: ');
  readln(l);
  writeln('Введите номер сегмента');
  readln(s);
  case s of
    1:
        begin
          rez:=l/10;
          writeln(l, 'дм = ', rez, 'м');
        end;
    2:
        begin
          rez:=l*1000;
          writeln(l, 'км = ', rez, 'м');
        end;
    3:
        begin
          rez:=l;
          writeln(l, 'м = ', rez, 'м');
        end;
    4:
        begin
          rez:=l/1000;
          writeln(l, 'мм = ', rez, 'м');
        end;
    5:
        begin
          rez:=l/100;
          writeln(l, 'см = ', rez, 'м');
        end;
  end;
end.