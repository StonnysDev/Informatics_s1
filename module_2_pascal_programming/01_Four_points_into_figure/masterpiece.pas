﻿uses  graphABC;
const N=4;
var i: integer; //переменная для цикла
    p1:integer; //параллельность между сторонами 1-2 и 3-4
    p2:integer; //параллельность между сторонами 2-3 и 4-1
    z1:integer; //равенство между сторонами 1-2 и 3-4
    z2:integer; //равенство между сторонами 2-3 и 4-1
    d:integer; //угол между сторонами 1-2 и 2-3
    r:integer; //равенство между сторонами 1-2 и 2-3
    L:string; //переменная типа четырехугольника
    x: array[1..N] of integer; //координата x
    y: array[1..N] of integer; //координата y
BEGIN
  L:='введен четырехугольник непредусмотренного типа'; //изначальное значение вывода
  for i:=1 to N do begin //начало цикла              
                   readln(x[i],y[i]); //рисваивание координатам x и y определенных значений
                   end; //конец цикла 
  setwindowsize(900,700); //создание графического пространства
  line(x[1],y[1],x[2],y[2]); //построение стороны 1-2
  line(x[2],y[2],x[3],y[3]); //построение стороны 2-3
  line(x[3],y[3],x[4],y[4]); //построение стороны 3-4
  line(x[4],y[4],x[1],y[1]); //построение стороны 4-1
  if ((x[1]-x[2])/(y[1]-y[2])=(x[3]-x[4])/(y[3]-y[4]))or((y[1]-y[2])/(x[1]-x[2])=(y[3]-y[4])/(x[3]-x[4]))then p1:=1; //проверка параллельности сторон 1-2 и 3-4
  if ((x[1]-x[4])/(y[1]-y[4])=(x[2]-x[3])/(y[2]-y[3]))or((y[1]-y[4])/(x[1]-x[4])=(y[2]-y[3])/(x[2]-x[3]))then p2:=1; //проверка параллельности сторон 2-3 и 4-1
  if ((x[1]-x[2])/(y[1]-y[2])=(y[2]-y[3])/(x[2]-x[3]))or((y[1]-y[2])/(x[1]-x[2])=(x[2]-x[3])/(y[2]-y[3]))then d:=1; //проверка наличия прямого угла между сторонами 1-2 и 2-3  
  if exp(1/2*ln((x[1]-x[2])*(x[1]-x[2])+(y[1]-y[2])*(y[1]-y[2])))=exp(1/2*ln((x[3]-x[4])*(x[3]-x[4])+(y[3]-y[4])*(y[3]-y[4]))) then z1:=1; //проверка равенства сторон 1-2 и 3-4
  if exp(1/2*ln((x[2]-x[3])*(x[2]-x[3])+(y[2]-y[3])*(y[2]-y[3])))=exp(1/2*ln((x[1]-x[4])*(x[1]-x[4])+(y[1]-y[4])*(y[1]-y[4]))) then z2:=1; //проверка равенства сторон 2-3 и 4-1
  if exp(1/2*ln((x[1]-x[2])*(x[1]-x[2])+(y[1]-y[2])*(y[1]-y[2])))=exp(1/2*ln((x[2]-x[3])*(x[2]-x[3])+(y[2]-y[3])*(y[2]-y[3]))) then r:=1; //проверка равенства сторон 1-2 и 2-3  
  if (p1=1) and (p2=1) and (z1=1) and (z2=1) and (d=1) and (r=1) then L:='Квадрат            '; //присвоение вывода "квадрат"
  if (p1=1) and (p2=1) and (z1=1) and (z2=1) and (d=1) and (r=0) then L:='Прямоугольник'; //присвоение вывода "прямоугольник"
  if (p1=1) and (p2=1) and (z1=1) and (z2=1) and (d=0) and (r=0) then L:='Параллелограм'; //присвоение вывода "параллелограм"
  if ((p1=1) and (p2=0))or((p1=0) and (p2=1)) then L:='Трапеция         '; //присвоение вывода "трапеция"
  If L<>'введен четырехугольник непредусмотренного типа' then begin
                                                              writeln (' '); writeln (' '); writeln (' '); writeln (' '); writeln (' '); writeln (' '); //создание отступа
                                                              writeln (' '); writeln (' '); writeln (' '); writeln (' '); writeln (' '); writeln (' '); //создание отступа
                                                              writeln (' '); writeln (' '); writeln (' '); writeln (' '); writeln (' '); writeln (' '); //создание отступа
                                                              writeln (' +---------------------------------+-------------------+------------------+---------------+---------------+'); //создание верхней грани таблицы
                                                              writeln (' |Вид четырехугольника | сторона 1-2 | сторона 2-3 | сторона 3-4 | сторона 4-1 |'); //названия столбцов
                                                              writeln (' +---------------------------------+-------------------+------------------+---------------+---------------+'); //создание средней грани таблицы
                                                              writeln (' |',L,'            |  ',round(exp(1/2*ln((x[1]-x[2])*(x[1]-x[2])+(y[1]-y[2])*(y[1]-y[2])))),'               |  ', //ввод типа четырехугольника и значения сторонв 1-2 
                                                                                                round(exp(1/2*ln((x[2]-x[3])*(x[2]-x[3])+(y[2]-y[3])*(y[2]-y[3])))),'                |  ', //ввод типа четырехугольника и значения сторонв 2-3 
                                                                                                round(exp(1/2*ln((x[3]-x[4])*(x[3]-x[4])+(y[3]-y[4])*(y[3]-y[4])))),'              |  ', //ввод типа четырехугольника и значения сторонв 3-4 
                                                                                                round(exp(1/2*ln((x[1]-x[4])*(x[1]-x[4])+(y[1]-y[4])*(y[1]-y[4])))),'               |'); //ввод типа четырехугольника и значения сторонв 4-1 
                                                              writeln (' +---------------------------------+-------------------+------------------+---------------+---------------+'); //создание нижней грани таблицы
                                                              end
                                                         else writeln (L); //редусмотрение случая ввода непредусмотренного четыреугольника
                                                              
end.