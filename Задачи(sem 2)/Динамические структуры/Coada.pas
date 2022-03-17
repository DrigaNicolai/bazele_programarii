{ Создать структуру, которая хранит информацию о студентах, записавшихся на курс
Вывести на экран структуру в порядке записи студентов 
Проверить, есть ли среди студентов студенты с оценкой меньше 7 (ДА/НЕТ)
Вычислить кол-во студентов, которые родились в месяце L
}
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
  prim, ultim, x: Element;
  raspuns: char;
  n, l: byte;
  check: boolean;
begin
  n:= 0;
  check:= false;
  prim:= Nil;
  writeln('Introduceti luna necesara: ');
  readln(l);
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
     x^.next:= Nil;
     if prim = Nil then
       prim:= x
     else
       ultim^.next:= x;
     ultim:= x;
     writeln('Doriti sa adaugauti un student, daca DA, apasati litera D: ');
     readln(raspuns);
   end;
   writeln;   
   writeln('Informatia despre studenti: ');
   x:= prim;
   while(x<>Nil) do begin
    writeln('Nume si prenume: ', x^.info.nume, ' ', x^.info.prenume);
    writeln('Nota: ', x^.info.nota);
    writeln('Data nasterii: ', x^.info.data.zi, ' ', x^.info.data.luna, ' ', x^.info.data.an);
    writeln;
    if (x^.info.nota >= 7) then check:= true;
    if (x^.info.data.luna = l) then n:= n + 1;
    x:= x^.next;
   end;
   writeln;
   if (check) then writeln('Exista studentii cu nota mai mare sau egala cu 7')
   else writeln('Nu exista studentii cu nota mai mare sau egala cu 7');
   writeln;
   writeln('In luna ', l, ' au nascut ', n, ' studenti');
end.