Program laborator_10;
var
  
  line, reverse: string;
  i: integer;

begin
  writeln('Введите строку символов: ');
  readln(line);
  reverse:= '';
  for i:=1 to length(line) do
    reverse:= line[i] + reverse;
  
  if line = reverse then
    writeln('Yes')
  else
    writeln('No');
end.