a = [5,23,5,-23,266,-4,7437,-7,273,46,34,723]
puts "Изначальный массив"
p a

puts "В численном массиве найти сумму отрицательных элементов."

p a.find_all{|el| el < 0}.inject(0){ |res,el| res+el }
