program project3;

{Выполнил Арцибасов А.В. Вариант №1. Определить вид четырехугольника и длины его сторон}

var
  X:real;         //
  Znach:real;     //
  Chet:integer;   //
  Nechet:integer; //
  i:integer;      //
  E:real;         //
  S:real;         //
  N:real;
  BEGIN
    i:=1;                                                                //
    Znach:=1;                                                            //
    S:=1;                                                                //
    writeln ('');                                                        //
    read(x);                                                             //
    while abs(x)>1 do begin                                              //
                      writeln('');                                       //
                      writeln('');                                       //
                      read (x);                                          //
                      end;                                               //
    writeln ('');                                                        //
    read(E);                                                             //
    writeln(i,'  ',znach:15,'  ',S:15);                                  //
    nechet:=-1;                                                          //
    chet:=2;                                                             //
    if x<>-1 then N:=abs(exp(1/2*ln(abs(x+1))))
             else N:=0;
    writeln('Номер        Значение     Частичная');
    writeln('члена ряда   члена ряда   сумма');
    writeln(#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205);
    while (abs(N-s)>=E) do begin                                         //
      i:=1+i;                                                            // 
      Znach:=znach*(-x*nechet/chet);                                     //
      S:=S+znach;                                                        //
      nechet:=nechet+2;                                                  //
      chet:=chet+2;                                                      //
      writeln(i,'  ',znach:15,'  ',S:15);                                //
    end;                                                                 //
    S:=0;                                                                //
    while i>=1 do begin                                                  //
      S:=S+znach;                                                        //
      if x=0 then begin
                  writeln(i:6,'  ',znach:15,'  ',S:15);
                  writeln(i:6,'  ',znach:15,'  ',S:15);
                  end
             else writeln(i:6,'  ',znach:15,'  ',S:15);
      nechet:=nechet-2;                                                  //
      chet:=chet-2;                                                      //
      if x=0 then znach:=1                                               //
             else if (chet<>0) then Znach:=znach/(-x*nechet/chet);       //
                                                                         //
      i:=i-1;                                                            // 
    end;                                                                 //
                                     //
    writeln(#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205);
    writeln(' ');
    if N>S then s:=S+E;
    writeln(S,'  ') ;                //
    writeln(N:15,'    ');            //
    writeln(abs(S-N):15,'     ');    //
    writeln(abs(S-N)/s:15,'    ');   //
    readln(x);
  end.
