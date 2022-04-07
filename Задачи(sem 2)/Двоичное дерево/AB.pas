{
  С клавиатуры вводятся действительные значения (если не существует,то 0):
  1) Создать двоичное дерево (ф-ия или процедура)
  2) Вычислить кол-во отрицательных элементов
  3) Проверить,принадлежит ли дереву,введенное значение
  4) Определить минимальное значение, принадлежащее дереву
}
Program arbore;
type
  Ab = ^Nod;
  Nod = Record
    inf: real;
    ASt, ADr: Ab;
  end;
Function Creare_Ab: Ab;
var n: real; Ab: Ab;
begin
  readln(n);
  if n = 0 then Creare_Ab:= Nil
  else begin
    new(Ab);
    Ab^.inf:= n;
    writeln('Indicati descendentul stang a nodului ', n, ':');
    Ab^.ASt:= Creare_Ab;
    writeln('Indicati descendentul drept a nodului ', n, ':');
    Ab^.ADr:= Creare_Ab;
    Creare_Ab:= Ab;
  end;
end;
Function NumNegative(Arb: Ab):integer;
begin
  if Arb = Nil then NumNegative:= 0
  else begin
    if Arb^.inf < 0 then NumNegative:= 1 + NumNegative(Arb^.ASt) + NumNegative(Arb^.ADr)
    else NumNegative:= NumNegative(Arb^.ASt) + NumNegative(Arb^.ADr)
  end;
end;
Function Check(Arb: Ab; val: integer): boolean;
begin
  if Arb = Nil then Check:= false
  else begin
  
  end;
end; 
var
  ArboreBin: Ab;
  val: real;
begin
  writeln('Indicati datele radacinii');
  ArboreBin:= Creare_Ab;
  writeln('Numarul de valori negative: ', NumNegative(ArboreBin));
  writeln('Introduceti valoare pe care-o cautati: ');
  readln(val);
  if (Check(ArboreBin, val)) then writeln('Elementul ', val, ' apartine arborelui binar')
  else writeln('Elementul ', val, ' nu apartine arborelui binar')
  
end.