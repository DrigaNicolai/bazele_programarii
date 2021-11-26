Program ex3;
type
  info = record
    author: string;
    name: string;
    edition: string;
    year: integer;
  end;
  bookInfo = record
    nr: integer;
    book: info;
    amount: byte;
  end;
  Ar = Array[1..100] of bookInfo;
var
  arBook: Ar;
  f1: text;
  n, i:integer;
  temp: bookInfo;
  
begin
  assign(f1, 'file-copy.txt');
  
  // Condition 1
  {
  writeln('Введите кол-во книг: ');
  readln(n);
  
  rewrite(f1);
  writeln(f1,n);
  for i:=1 to n do begin
    writeln('Введите номер книги: ', i,' ');
    readln(arBook[i].nr);
    writeln('Введите автора: ', i,' ');
    readln(arBook[i].book.author);
    writeln('Введите название книги: ', i,' ');
    readln(arBook[i].book.name);
    writeln('Введите издание: ', i,' ');
    readln(arBook[i].book.edition);
    writeln('Введите год издания: ', i,' ');
    readln(arBook[i].book.year);
    writeln('Введите кол-во книг: ', i,' ');
    readln(arBook[i].amount);
    writeln(f1, arBook[i]);
  end;
  }
  
  // Condition 2
  reset(f1);
  readln(f1,n);
  for i:=1 to n do begin
    readln(f1, temp.nr, temp.book.author, temp.book.name, temp.book.edition, temp.book.year, temp.amount);
    writeln(temp.nr, temp.book.author, temp.book.name, temp.book.edition, temp.book.year, temp.amount);
  end;
  close(f1);
end.