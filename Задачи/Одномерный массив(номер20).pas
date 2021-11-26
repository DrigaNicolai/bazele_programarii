Type
Days = (Sun, Mon, Tues, Wed, Thurs, Fri, Sat);
Profit = Array[Days] of Real;
Var
V: Profit;
s: integer;
i: Days;
begin
  s:=0;
  for i:=Sun to Sat do
    begin
      s:= s + V[i];
    end;
end.