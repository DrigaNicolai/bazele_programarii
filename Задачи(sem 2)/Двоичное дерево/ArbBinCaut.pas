{
1. Создать двоичное дерево поиска из действительных значений, введенных с клаивиатуры,до ввода нуля
2. Проверить,если значение,введенное с клавиатуры принадлежит двоичному дереву
3. Найти максиальное и минимальное значение
4. Найти кол-во терминальных узлов в дереве
}
Program ArbBinCaut;
type
  Tree = ^Nod;
  Nod = Record
    inf: real;
    ASt: Tree;
    ADr: Tree;
  end;
var
  arb, aux: Tree;
  num, caut: real;
Procedure Inserare(var arb: Tree; n: real);
begin
  if arb = Nil then begin
    new(arb);
    arb^.inf:= n;
    arb^.ASt:= Nil;
    arb^.ADr:= Nil;
  end
  else begin
    if n < arb^.inf then Inserare(arb^.ASt, n)
    else
      if n > arb^.inf then Inserare(arb^.ADr, n);
  end;
end;
Procedure Afisare(arb: Tree);
begin
  if arb <> Nil then begin
    Afisare(arb^.ASt);
    writeln(arb^.inf);
    Afisare(arb^.ADr);
  end;
end;
Function Cautare(arb: Tree; n: real): boolean; 
begin
  if arb = Nil then Cautare:= false
  else
    if n = arb^.inf then Cautare:= true
    else
      Cautare:= Cautare(arb^.ASt, n) or Cautare(arb^.ADr, n);
end;
Function Minim(arb: Tree): real;
begin
  if arb^.ASt = Nil then Minim:= arb^.inf
  else Minim:= Minim(arb^.ASt);
end;
Function Maxim(arb: Tree): real;
begin
  if arb^.ADr = Nil then Maxim:= arb^.inf
  else Maxim:= Maxim(arb^.ADr);
end;
Function Terminal(arb: Tree): integer;
begin
  if arb = Nil then Terminal:= 0
  else begin
    if (arb^.ASt = Nil) and (arb^.ADr = Nil) then Terminal:= 1
    else Terminal:= Terminal(arb^.ASt) + Terminal(arb^.ADr);
  end;
end;
begin
  arb:= Nil;
  writeln('Introduceti numere');
  readln(num);
  while(num <> 0) do begin
    Inserare(arb, num);
    readln(num);
  end;
  writeln('Arbore creat');
  Afisare(arb);
  writeln('Ce valoarea vreti sa cautati: ');
  readln(caut);
  if (Cautare(arb, caut)) then writeln('Numarul dat este in arbore')
  else writeln('Numarul dat nu este in arbore');
  writeln('Valoarea minima: ', Minim(arb));
  writeln('Valoarea maxima: ', Maxim(arb));
  writeln('Arbore are ', Terminal(arb), ' noduri terminali');
end.