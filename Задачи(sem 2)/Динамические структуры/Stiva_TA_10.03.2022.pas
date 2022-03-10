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
  Repeat
    readln(num);
    New(temp);
    if (num <> 0) then temp^.val:= num;
    temp^.link:= stiva;
    stiva:= temp;
  Until (num = 0);
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