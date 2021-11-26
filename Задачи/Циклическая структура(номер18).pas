program Ex18;
var 
  i, m, num, del, kd: integer;
{m - граница интервала чисел;
num - проверяемые числа;
del - делители;
kd - количество делителей;
i - считает количество чисел в строке}
begin
writeln('Введите число m: '); 
readln(m);
i:= 0;

for num:= 1 to m do
  begin
    kd:= 0; 
    for del:= 1 to num do
      if (num mod del) = 0 then kd:= kd+1;
      if kd = 2 then begin 
        write(num:6);
        i:= i+1;
        if i = 10 then begin
          writeln;
          i:= 0;
        end;
      end;
  end;
end.