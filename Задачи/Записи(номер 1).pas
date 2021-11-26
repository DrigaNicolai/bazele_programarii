Type
Data = Record
Day: 1..31
Month: 1..12
Year: Natural
 End
 Person = Record
  Name: String
  Birthdate: Data
End
List = Array[1..50] of Person
Var
X: List
i, m, y, age, currentMonth, currentYear, currentDay, min, max, V, j: integer;
begin
// 1
  for i:=1 to 50 do
    if X[i].Birthdate.Month = m then write(X[i])
  end end
  
// 2 
    for i:=1 to 50 do
      if X[i].Birthdate.Year = y then write(X[i])
    end end
    
// 3
    for i:=1 to 50 do
      if (X[i].Birthdate.Day = d) and (Xn[i].Birthdate.Month = m) and (X[i].Birthdate.Year = y) then write(X[i])
    end end
  
// 4, 5
    function checkAge(day, month, year) : integer
      var
        age: integer;
      begin
        age:= currentYear - year
      if (currentMonth < month) then do age:= age - 1
      else
        if (currentMonth = month) then do
          if (currentDay < day) then do age:=age - 1 end
        end
      end
      Return age
      end
    min:= 1; max:=1;
    for i:=1 to 50 do
      checkAge(X[i].Birthdate.Day, X[i].Birthdate.Month, X[i].Birthdate.Year)
    end
      if (checkAge(X[min]) > checkAge(X[i]) then do min:= i end
      if (checkAge(X[max]) < checkAge(X[i]) then do max:= i end
    write(checkAge(X[min])
    write(checkAge(X[max])
      
// 6
    for i:=1 to 50 do
      write(X[i].Name, ' ', checkAge(X[i].Birthdate.Day, X[i].Birthdate.Month, X[i].Birthdate.Year) )
      writeln
    end

// 7
    for i:=1 to 50 do
      if (checkAge(X[i].Birthdate.Day, X[i].Birthdate.Month, X[i].Birthdate.Year)> V) then writeln(X[i])
    end

// 8
    for i:=1 to 50 do
      for j:=1 to 50 do
        if(X[i].Birthdate.Year = X[j].Birthdate.Year) then writeln(X[i]) end
      end
      writeln
      writeln
    end