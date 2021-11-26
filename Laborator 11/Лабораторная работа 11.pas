Program laborator_10;
Type
  tab = Array[1..30,1..30] of integer;
var
  
  Ar: tab;
  i, j, m, n, temp, row: integer;

begin
  writeln('Введите количество строк: ');
  readln(n);
  writeln('Введите количество столбцов: ');
  readln(m);
  for i:=1 to n do
    for j:=1 to m do
      readln(Ar[i,j]);
  
  for i:=1 to n do
    for j:=1 to m do
      if Ar[i,j]= 0 then row:=i;
      
  for j:=1 to m do
    begin
      temp:= Ar[1,j];
      Ar[1,j]:= Ar[row, j];
      Ar[row,j]:= temp;
    end;
  for i:=1 to n do begin
    for j:=1 to m do
      write(Ar[i,j]);
    writeln;
  end;
  
 
end.