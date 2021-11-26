Program OddOrEven;
Procedure even(num: integer);
  begin
    if num mod 2 = 0 then write('True')
    else
      write('False');
  end;

var
  num: integer;
begin
  writeln('Введите число: ');
  readln(num);
  write('Четное: ');
  even(num);
end.