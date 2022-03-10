Program test;
Function count(n,x:integer):integer;
begin
  if(n mod 10 = x) then
   count:=1+ count(n div 10, x)
  else
   count:=0 + count(n div 10, x);
end;
var
  n, x: integer;
begin
  writeln('n,x= ');
  readln(n,x);
  writeln('=====');
  writeln(count(n, x));
end.