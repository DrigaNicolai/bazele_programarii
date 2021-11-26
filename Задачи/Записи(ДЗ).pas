Program laborator_12;
Type
  bithdate = record
    day: 1..31;
    month: 1..12;
    year: integer;
  end;
  student = record
    name: string;
    surname: string;
    birth: bithdate;
    medium: real;
    city: string;
    number: string;
  end;
  Ar = Array[1..100] of student;
var
  arStudent: Ar;
  i, j, n:integer;
  currentName, currentSurname: string;
  min: real;
  change: student;
begin
  writeln('Введите кол-во студентов: ');
  readln(n);
  for i:= 1 to n do begin
    writeln('Введите имя студента: ');
    readln(arStudent[i].name);
    writeln('Введите фамилию студента: ');
    readln(arStudent[i].surname);
    writeln('Введите дату рождения студента(день, месяц, год) через пробел: ');
    readln(arStudent[i].birth.day, arStudent[i].birth.month, arStudent[i].birth.year);
    writeln('Введите среднюю оценку студента: ');
    readln(arStudent[i].medium);
    writeln('Введите город проживания студента: ');
    readln(arStudent[i].city);
    writeln('Введите номер телефона студента: ');
    readln(arStudent[i].number);
  end;

  // 1
  writeln('=====Condition 1=====');
  min:= arStudent[1].medium;
  for i:=1 to n do 
    if (arStudent[i].medium < min) then min:= arStudent[i].medium;
  
  for i:=1 to n do
    if (arStudent[i].medium = min) then writeln(arStudent[i].name, ' ', arStudent[i].surname);
  
  
  // 2
  writeln('=====Condition 2=====');
  for i:=1 to n do
    if (arStudent[i].city = 'Balti') then begin
      writeln('Есть');
      break;
    end;
    
  i:=1;
  while (i<=n) and (arStudent[i].city <> 'Balti') do
    i:= i+1;
  if i<=n then writeln('Есть') else
    writeln('Нет');
    
  // 3
  writeln('=====Condition 3=====');
  writeln('Введите имя искомого студента');
  readln(currentName);
  writeln('Введите фамилию искомого студента');
  readln(currentSurname);
  for i:=1 to n do
    if (arStudent[i].name = currentName) and (arStudent[i].surname = currentSurname) then
      writeln('Его номер телефона: ', arStudent[i].number);
  
  
  // 4
  writeln('=====Condition 4=====');
  for i:=1 to n-1 do begin
    for j:=1 to n-i do begin
      if(arStudent[j].medium < arStudent[j+1].medium) then begin
        change:= arStudent[j];
        arStudent[j]:= arStudent[j+1];
        arStudent[j+1]:= change;
      end;
    end;
  end;
  writeln('Отсортированный список: ');
  for i:=1 to n do
    writeln(arStudent[i].name, ' ', arStudent[i].surname);
end.