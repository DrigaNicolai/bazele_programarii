Program lab4;
Type
  MedArray = array [1..2] of real;
  Elev = Record
    ord: integer;
    nume: string[24];
    mediile: MedArray;
    anuala: real;
  end;
  Tree = ^Nod;
  Nod = Record
    inf: Elev;
    st, dr: Tree;
  end;
Var
  arb: Tree;
  key: 0..6;
  caut: string[24];
Procedure Inserare(var arb: Tree; x: Elev);
begin
  if arb = Nil then
    begin
      new(arb);
      arb^.inf:= x;
      arb^.st:= Nil;
      arb^.dr:= Nil;
    end
  else
   begin
    if x.nume < arb^.inf.nume then Inserare(arb^.st, x)
    else Inserare(arb^.dr, x);
   end;
end;
Procedure Adaugare;
var elev: Elev;
begin
  write('Nr. ordin: '); readln(elev.ord);
  write('Nume: '); readln(elev.nume);
  write('Media pentru semestru 1: '); readln(elev.mediile[1]);
  write('Media pentru semestru 2: '); readln(elev.mediile[2]);
  write('Media anuala: '); readln(elev.anuala);
  Inserare(arb, elev);
end;
Procedure Afisare(arb: Tree);
begin
  if arb <> Nil then begin
    Afisare(arb^.st);
    writeln(arb^.inf.nume);
    Afisare(arb^.dr);
  end;
end;
Procedure CautSub(var curent, f: Tree);
var aux: Tree;
begin
  if f^.dr <> Nil then
    CautSub(curent, f^.dr)
  else begin
    curent^.inf:= f^.inf;
    aux:= f;
    f:= f^.st;
    dispose(aux);
  end;
end;
Procedure Eliminare(var arb: Tree; x: string[24]);
var aux: Tree;
begin
  if arb <> Nil then
    if arb^.inf.nume = x then
      if (arb^.st = Nil) and (arb^.dr = Nil) then  begin
        dispose(arb);
        arb:= Nil;
      end
      else
        if arb^.st = Nil then begin
          aux:= arb^.dr;
          dispose(arb);
          arb:= aux;
        end
        else
          if arb^.dr = Nil then begin
            aux:= arb^.st;
            dispose(arb);
            arb:= aux;
          end
          else
            CautSub(arb, arb^.st)
    else
      if x < arb^.inf.nume then Eliminare(arb^.st, x)
      else Eliminare(arb^.dr, x)
  else
    writeln('Numele nu exista');
end;
Procedure Cautare(arb: Tree; x: string[24]);
begin
  if arb = Nil then writeln('Numele nu exista')
  else
    if x = arb^.inf.nume then
      writeln('Elev ', arb^.inf.nume, ' ordin: ', arb^.inf.ord, ' media la sem 1: ', arb^.inf.mediile[1],
              ' media la sem 2: ', arb^.inf.mediile[2], ' media anuala: ', arb^.inf.anuala)
    else
      if x < arb^.inf.nume then Cautare(arb^.st, x)
      else  Cautare(arb^.dr, x);
end;
Begin
  arb:= Nil;
  Repeat
    writeln('1. Adaugarea unui elev nou');
    writeln('2. Eliminarea unui elev');
    writeln('3. Modificarea mediei anuale a unui elev');
    writeln('4. Cautarea unui elev dupa nume');
    writeln('5. Afisarea elevilor cu mediile semestriale cuprinse intre doua valori');
    writeln('6. Afisarea arborelui');
    writeln('0. Stop');
    write('Indica operatia necesara: ');
    readln(key);
    case key of
      1: Adaugare;
      2: 
        begin
          write('Introduceti numele elevului');
          readln(caut);
          Eliminare(arb, caut);
        end;
      3: 
        begin
          write('Introduceti numele elevului');
          readln(caut);
          Cautare(arb, caut);
        end;
      4: writeln('4');
      5: writeln('5');
      6: Afisare(arb);
    end;
  Until key = 0;
End.