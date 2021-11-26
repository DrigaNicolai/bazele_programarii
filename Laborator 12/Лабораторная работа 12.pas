Program laborator_12;
Type
  book = record
    title: string;
    author: string;
    year: integer;
  end;
  Ar = Array[1..100] of book;
var
  arBook: Ar;
  i, j, tYear, n, yearSort:integer;
  tTitle, tAuthor, x: string;
  tempSort: book;
begin
  writeln('Введите кол-во книг: ');
  readln(n);
  for i:= 1 to n do begin
    writeln('Введите название книги: ');
    readln(tTitle);
    arBook[i].title:= tTitle;
    writeln('Введите автора книги: ');
    readln(tAuthor);
    arBook[i].author:= tAuthor;
    writeln('Введите год издания книги: ');
    readln(tYear);
    arBook[i].year:= tYear;
  end;
  
  // 1
  writeln('=====Condition 1=====');
  for i:=1 to n-1 do begin
    for j:=1 to n-i do begin
      if(arBook[j].author > arBook[j+1].author) then begin
        tempSort:= arBook[j];
        arBook[j]:= arBook[j+1];
        arBook[j+1]:= tempSort;
      end;
    end;
  end;
  
  for i:=1 to n do
    writeln(arBook[i].author);
    
  // 2
  writeln('=====Condition 2=====');
  for i:=1 to n-1 do begin
    for j:=1 to n-i do begin
      if(arBook[j].year > arBook[j+1].year) then begin
        yearSort:= arBook[j].year;
        arBook[j].year:= arBook[j+1].year;
        arBook[j+1].year:= yearSort;
      end;
    end;
  end;
  
  for i:=1 to n do
    writeln(arBook[i]);
    
 // 3
 writeln('=====Condition 3=====');
 writeln('Введите имя автора: ');
 readln(x);
 for i:=1 to n do begin
  if(arBook[i].author = x) and (arBook[i].year > 1989) then writeln(arBook[i].title);
 end;
end.