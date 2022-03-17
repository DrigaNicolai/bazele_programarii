Program StivaTA;
Type
  Element = ^Nod;
  Nod = Record
    val: real;
    link: Element;
  end;
Var
  stiva: Element;
  temp: Element;
  num: real;
  produs: real;
Begin
  produs:= 1;
  stiva:= Nil;
  writeln('Introduceti numere: ');
  readln(num);
  while (num <> 0) do
   begin
     New(temp);
     temp^.val:= num;
     temp^.link:= stiva;
     stiva:= temp;
     readln(num);
    end;
  write('Stiva = ');
  temp:= stiva;
  while(temp <> Nil) do begin
    write(temp^.val, ' ');
    if(temp^.val < 0) then produs:= produs * temp^.val;
    temp:= temp^.link;
  end;
  writeln;
  writeln('Produs = ', produs);
End.
