Program Ex20;
var
 A: array [1..20, 1..20] of integer;
 n, m, i, j, num: integer;
begin
  writeln('Введите количество строк: ');
  readln(n);
  writeln('Введите количество столбцов; ');
  readln(m);
  
  num:=1;
  for i:= 1 to n do begin
    for j:=1 to m do begin
      if (i mod 2 = 1) then
        A[i,j]:= num
      else
        A[i,m-(j-1)]:= num;
     num:= num+1;
    end;
  end;
  
  for i:= 1 to n do begin
    for j:=1 to m do
      write(A[i,j]:3);
    writeln;
  end;
end.