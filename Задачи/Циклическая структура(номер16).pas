var
 n, k, i, num: integer;
begin
 writeln('Введите делимое: ');
 readln(n);
 writeln('Введите делитель: ');
 readln(k);
 
 num:= n;
 i:= 0;
 
 if (n >= k) then
  repeat
    n:= n-k;
    i:= i+1;
  until n < k;
  
 writeln('Целочисленное деление ', num, ' на ', k, ' = ',i);
 writeln(n);
end.
 