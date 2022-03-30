Program lab3;
type 
  Element = ^Nod;
  Nod = record
    info : char;
    link : Element;
  end;
var 
  stiva : Element;
  p : string;

procedure pune(c:char);
var r: Element;
begin
  new(r); 
  r^.info:=c; 
  r^.link:=stiva; 
  stiva:=r;
end;

procedure scoate;
var r: Element;
begin
  r:=stiva; 
  stiva:=stiva^.link; 
  dispose(r);
end;

function corect(t:string):boolean;
var   i: integer;   G: 0..1;
begin
  G:=0;
  i:=1;
 while (i<=length(t)) and (G=0) do
   begin
     case t[i] of
       '(','[','{': pune(t[i]);
       ')': if (stiva <> Nil) and (stiva^.info='(') then scoate else G:=1;
       ']': if (stiva <> Nil) and (stiva^.info='[') then scoate else G:=1;
       '}': if (stiva <> Nil) and (stiva^.info='{') then scoate else G:=1;
       else G:=1;
     end;
     i:=i+1;
   end;
    corect:= (stiva = Nil) and (G = 0);
end;

begin
  write('Scrieti sirul de paranteze: '); 
  readln(p);
  stiva:=nil;
  if corect(p) then writeln('Sir corect')
  else writeln('Sir incorect');
end.