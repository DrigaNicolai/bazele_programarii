Program laborator_9;
Type
  Vector =  Array [1..1000] of real;
var
  A: Vector;
  n, i, pos: integer;

begin
  writeln('Введите количество чисел в массиве: ');
  readln(n);
  writeln('Введите ', n, ' чисел для массива: ');
  for i:=1 to n do
    readln(A[i]);
  
  for i:=1 to n do
    if A[i]=0 then
      pos:= i;
  
  writeln('Последний ноль находиться на позиции: ', pos);
end.