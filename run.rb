a = [7437,5,23,5,23,266,4,7437,7,273,46,34,723,7437]
puts "Изначальный массив"
p a

puts "Найти все индексы, по которым располагается максимальный элемент."

max = a.compact.max
for i in 1..a.count(max)
  i = a.index(max)
  a[i] = nil
  print i.to_s, " "
end
