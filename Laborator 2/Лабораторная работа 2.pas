Program day;
var
 d1, m1, d2, m2:1..31;
 y1, y2: integer;
begin
 writeln('Введите дату(день\месяц\год,через пробелы): ');
 readln(d1,m1,y1);
 writeln;
 case m1 of
    1,3,5,7,8,10,12 :
        if d1>31 then writeln('Дата введена некорректно')
        else
          begin
            d2:= d1+1;
            if d2> 31 then
              begin
                d2:=1;
                m2:=m1+1;
                if m2>12 then 
                  begin
                    m2:=1;
                    y2:=y1+1;
                  end;
              end
            else
              begin
                m2:= m1;
                y2:= y1;
              end;
          end;
    4,6,9,11 :
        if d1>30 then writeln('Дата введена некорректно')
        else
          begin
            d2:=d1+1;
            if d2>30 then
              begin
                d2:=1;
                m2:=m1+1;
                y2:= y1;
              end
            else
              begin
                m2:= m1;
                y2:= y1;
              end;
          end;
    2:
        if ((y1 mod 4) =0) then  
            if d1>29 then writeln('Дата введена некорректно')
            else
              begin
                d2:=d1+1;
                if d2>29 then
                  begin
                    d2:=1;
                    m2:=m1+1;
                    y2:=y1;
                  end
                else
                  begin
                    m2:=m1;
                    y2:=y1;
                  end;
              end
        else
          if ((y1 mod 4)<>0) then
            if d1>28 then writeln('Дата введена некорректно')
            else
              begin
                d2:=d1+1;
                if d2>28 then
                  begin
                    d2:=1;
                    m2:=m1+1;
                    y2:=y1;
                  end
                else
                  begin
                    m2:=m1;
                    y2:=y1;
                  end;
              end;
 end;              
 if d2=0 then writeln('Следующее число найти невозможно!')
 else
  writeln('Следующее число:', d2, ' ', m2, ' ', y2);
end.