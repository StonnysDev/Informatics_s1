var chislo:integer; //вводимое число
    i:integer; //переменная цикла
    bufer:integer; //копия вводимого числа
    schetchik:integer; //количество цифр в вводимом числе
BEGIN
  read(chislo); //ввод числа
  bufer:=chislo; //копирование числа
  while chislo>0 do //условие цикла, определяющего количество цифр в числе
    begin
    schetchik:=schetchik+1; //счетчик количества цифр в числе
    chislo:=chislo div 10; //отрезание от числа последней цифры для дальнейшей работы цикла
    end;
  if schetchik=1 then writeln ('нет второй цифры') //случай №1: введенное число имеет только одну цифру
                 else begin //случай №2: введенное число имеет более одной цифры
                      for i:=1 to schetchik-2 do bufer:=bufer div 10; //отрезание от изначального числа всех цифр, кроме первых двух
                      bufer:=bufer mod 10; //отрезание первой цифры
                      writeln(bufer); //вывод получившейся цифры
                      end;
end.