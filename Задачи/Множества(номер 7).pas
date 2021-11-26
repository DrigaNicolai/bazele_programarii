Program ex7;
var
  firstNum, secondNum: integer;
  m1, m2, mAll: set of byte;
  i: byte;
  
begin
  writeln('Введите первое число: ');
  readln(firstNum);
  writeln('Введите второе число: ');
  readln(secondNum);
  
  firstNum:= abs(firstNum);
  secondNum:= abs(secondNum);
  
  while firstNum > 0 do
    begin
      Include(m1, firstNum mod 10);
      firstNum := firstNum div 10
    end;
    
  while secondNum > 0 do
    begin
      Include(m2, secondNum mod 10);
      secondNum := secondNum div 10
    end;
  mAll:= m1 - m2;

  for i := 0 to 9 do
    if i in mAll then Write(i, ' ');
end.