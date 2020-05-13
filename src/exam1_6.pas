program exam1_6;
{
Вариант 6:
Задача 2
Из данной строки удалить все цифры и малые латинские
буквы.
}
procedure TaskOne;
{Задача 1
Дано натуральное n > 0. Найти произведение первых n простых чисел.
Подсказка: используйте булевскую функцию для проверки, является число простым числом или нет.}
var n, i, j, k :integer;
  pr :longint;
  b :boolean;
begin
//  n := 0;
  {Получаем натральное число, защищаем от ввода некорректного значения}
  repeat
    write('Введите n > 0: ');
    readln(n);
  until n > 0;
//  while n <= 0 do
//  begin
//    write('Введите n > 0: ');
//    readln(n);
//  end;
  while k < n do
  begin
    inc(i);
    j := 1;
    b := true;
    while (j < i div 2) and (b) do
    begin
      inc(j);
      if i mod j = 0 then b := false;
    end;
    if b then
    begin
      pr := pr * i;
      writeLn('*', i);
      inc(k);
    end;
  end;
  write(' = ', pr);
  readln;
end;

begin
  WriteLn('Задача 1');
  TaskOne();
end.

