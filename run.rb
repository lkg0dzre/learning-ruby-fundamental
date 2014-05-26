#
# Герман Хохлов
# lkg0dzre@gmail.com
#
# ------------------
# Описание алгоритма
# ------------------
# Открываем оба файла на чтение
# Считываем из каждого по одной строке
# Сравниваем строки, если равны, то записываем одну строку в результат,
# ... и считываем следующую строку из обоих файлов
# Поскольку в файлах нет повторов, то не надо запоминать совпадение строк
# Если меньше строка из первого файла, то записываем ее в результат
# ... и считываем следующую сроку из первого файла
# Аналогично, если больше строки из второго файла
# Если какой-либо из файлов закончился, то дописываем все оставшиеся строки
# ... из другого



# Считываем имена двух входны и одного выходного файла
fname_first = ARGV[0]
fname_second = ARGV[1]
out_fname = ARGV[2]

# Открываем файлы на чтение и запис
in_first = File.open(fname_first) # по умолчанию "r"
in_second = File.open(fname_second)
out = File.open(out_fname, "w") # запись со стиранием при открытии



# Реализация алгоритма, описание в начале файла

ended_first = in_first.eof?
ended_second = in_second.eof?

st_first = in_first.gets
st_second = in_second.gets

i = 0

while (!ended_first or !ended_second) and i < 1000000 do

  case st_first <=> st_second
  when 0
    out.puts st_first
    st_first = in_first.gets
    st_second = in_second.gets
  when -1
    out.puts st_first
    st_first = in_first.gets
  when 1
    out.puts st_second
    st_second = in_second.gets
  when nil
    unless ended_first
      out.puts st_first
      st_first = in_first.gets
    else
      out.puts st_second
      st_second = in_second.gets
    end
  end

  ended_first = in_first.eof?
  ended_second = in_second.eof?

  i += 1
end
