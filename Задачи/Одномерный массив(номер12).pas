Type
Vector = Array[1..30] of Integer;
Var
Temp: Vector;
N_zile,i:integer;

begin
  N_zile:=0;
  i:=1;

  While i<=30 do
   If Temp[i] > 20 then
    N_zile:=N_zile+1;
   end
   i:=i+1;
  end

end.