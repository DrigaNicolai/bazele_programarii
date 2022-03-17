Program students;
type
  Student = Record
    nume: string;
    prenume: string;
    nota: 1..10;
    data: Record
      zi: 1..31;
      luna: 1..12;
      an: integer;
    end;
  end;
  Element = ^Nod;
  Nod = Record
    info: Student;
    next: Element;
  end;
var
  stiva, x: Element;
  raspuns: char;
  i: byte;
begin
  stiva:= Nil;
  writeln('Doriti sa adaugauti un student, daca DA, apasati litera D: ');
  readln(raspuns);
  while((raspuns = 'd') or (raspuns = 'D')) do begin
     new(x);
     writeln('Introduceti numele studentului: ');
     readln(x^.info.nume);
     writeln('Introduceti prenumele studentului: ');
     readln(x^.info.prenume);
     writeln('Introduceti nota studentului: ');
     readln(x^.info.nota);
     writeln('Introduceti ziua nasterii studentului: ');
     readln(x^.info.data.zi);
     writeln('Introduceti luna nasterii studentului: ');
     readln(x^.info.data.luna);
     writeln('Introduceti anul nasterii studentului: ');
     readln(x^.info.data.an);
     x^.next:= stiva;n
     stiva:= x;
     writeln('Doriti sa adaugauti un student, daca DA, apasati litera D: ');
     readln(raspuns);
   end;
   writeln;   
   writeln('Informatia despre ultimelor trei studenti: ');
   //writeln('Informatia despre studenti: ');
   x:= stiva;
   i:= 0;
   while((x<>Nil) and (i < 3)) do begin
    writeln('Nume si prenume: ', x^.info.nume, ' ', x^.info.prenume);
    writeln('Nota: ', x^.info.nota);
    writeln('Data nasterii: ', x^.info.data.zi, ' ', x^.info.data.luna, ' ', x^.info.data.an);
    writeln;
    i:= i + 1;
    x:= x^.next;
   end;
  
  
end.