{
Создать список, позволяющий хранить информацию о сотрудниках фирмы.
Информация включает след. данные: ФИО, Дата рождения, Прописка, Стаж работы, Должность и Оклад
1) Написать подпрограмму,позволяющую добавть в список сотрудников нового сотрудника четыремя способами:
   Начало; Конец; До или после опред. сотрудника
2) Создать подпрограмму, позволяющую удалить определенного сотрудника
3) Проверить,присутствует ли в списке сотрудники, рабочий стаж которых больше 20 лет
4) Вычислить сред. значение оклада по фирме
5) Вывести на экран группы сотрудников, сгрупированных по стажу
}
Program angajati;
type
  Angajat = Record
    nume: string;
    data: Record
      zi: 1..31;
      luna: 1..12;
      an: integer;
    end;
    domiciliu: string;
    stagiul: byte;
    rol: string;
    salariu: integer;
  end;
  Element = ^Nod;
  Nod = Record
    info: Angajat;
    next: Element;
    pred: Element;
  end;
var
  x: Angajat;
  sant1, sant2: Element;
  raspuns: char;
  key: 1..4;
  
Procedure AdaugInc(x: Angajat; var sant1: Element);
var y: Element;
begin
  y:= sant1;
  new(sant1);
  y^.info:= x;
  y^.pred:= sant1;
  sant1^.next:=y;
  {x^.pred:= sant1;
  x^.next:= sant1^.next;
  sant1^.next^.pred:= x;
  sant1^.next:= x;}
end;
Procedure AdaugCap(x: Angajat; var sant2: Element);
var y: Element;
begin
  y:= sant2;
  new(sant1);
  y^.info:= x;
  y^.next:= sant2;
  sant2^.pred:=y;
  {x^.pred:= sant2^.pred;
  x^.next:= sant2;
  sant2^.pred^.next:= x;
  sant1^.pred:= x;}
end;
Procedure AdaugIna(x: Angajat; var sant1: Element; var sant2: Element);
var 
  poz, tempPoz: byte;
  temp, parc: Element;
  y: Element;
begin
  writeln('Introduceti pozitia: ');
  readln(poz);
  parc:= sant1^.next;
  tempPoz:= 1;
  while((parc <> sant2) and (tempPoz <> poz)) do begin
    tempPoz:= tempPoz + 1;
    temp:= parc;
    parc:= parc^.next;
  end;
  x^.pred:= temp^.pred;
  x^.next:= temp;
  temp^.pred^.next:= x;
  temp^.pred:= x;
end;
Procedure AdaugDup(x: Angajat; var sant1: Element; var sant2: Element);
var 
  poz, tempPoz: byte;
  temp, parc: Element;
  y: Element;
begin
  writeln('Introduceti pozitia: ');
  readln(poz);
  parc:= sant1^.next;
  tempPoz:= 1;
  while((parc <> sant2) and (tempPoz <> poz)) do begin
    tempPoz:= tempPoz + 1;
    temp:= parc;
    parc:= parc^.next;
  end;
  x^.pred:= temp;
  x^.next:= temp^.next;
  temp^.next^.pred:= x;
  temp^.next:= x;
end;
begin
  new(sant1);
  new(sant2);
  sant1^.next:= sant2;
  sant1^.pred:= Nil;
  sant1^.next:= Nil;
  sant2^.pred:= sant1;
  writeln('Doriti sa adaugauti un student, daca DA, apasati litera D: ');
  readln(raspuns);
  while((raspuns = 'd') or (raspuns = 'D')) do begin
    //new(x);
    writeln('Introduceti numele angjatului: ');
    readln(x.info.nume);
    writeln('Introduceti ziua nasterii angjatului: ');
    readln(x.info.data.zi);
    writeln('Introduceti luna nasterii angjatului: ');
    readln(x.info.data.luna);
    writeln('Introduceti anul nasterii angjatului: ');
    readln(x.info.data.an);
    writeln('Introduceti domiciliul angjatului: ');
    readln(x.info.domiciliu);
    writeln('Introduceti stagiul angjatului: ');
    readln(x.info.stagiul);
    writeln('Introduceti rolul angjatului: ');
    readln(x.info.rol);
    writeln('Introduceti salariul angjatului: ');
    readln(x.info.salariu);
    writeln('Unde doriti sa adaugati: ');
    writeln('1. Inceput');
    writeln('2. Capat');
    writeln('3. Inainte de element');
    writeln('4. Dupa element');
    readln(key);
    if (key = 1) then AdaugInc(x, sant1)
    else
      if (key = 2) then AdaugCap(x, sant2)
      else
       if (key = 3) then AdaugIna(x)
       else AdaugDup(x);
       
    writeln('Doriti sa adaugauti un student, daca DA, apasati litera D: ');
    readln(raspuns);
   end;
end.  