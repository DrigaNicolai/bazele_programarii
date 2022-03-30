Program lab2;
Type
  Element = ^Nod;
  Nod = Record
    val: integer;
    link: Element;
  end;
Var
  stiva1, stiva2: Element;
  temp: Element;
  parc1, parc2: Element;
  num: integer;
  check: boolean;
Begin
  stiva1:= Nil;
  stiva2:= Nil;
  writeln('Introduceti numere pentru lista nr.1: ');
  readln(num);
  while (num <> 0) do
   begin
     New(temp);
     temp^.val:= num;
     temp^.link:= stiva1;
     stiva1:= temp;
     readln(num);
    end;
  writeln;
  writeln('Introduceti numere pentru lista nr.2: ');
  readln(num);
  while (num <> 0) do
   begin
     New(temp);
     temp^.val:= num;
     temp^.link:= stiva2;
     stiva2:= temp;
     readln(num);
    end;
  writeln;
  parc1:= stiva1;
  parc2:= stiva2;
  check:= true;
  while((parc1 <> Nil) and (parc2 <> Nil) and check) do begin
    if (parc1^.val <> parc2^.val) or ((parc1^.link = Nil) and (parc2^.link <> Nil)) or ((parc1^.link <> Nil) and (parc2^.link = Nil)) then check:= false;
    parc1:= parc1^.link;
    parc2:= parc2^.link;
  end;
  if (check) then writeln('Sunt identice')
  else writeln('Nu sunt identice');
End.