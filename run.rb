def median(*list)
  return nil if list.empty?
  list.sort!

  count = list.count

  if count.odd?
    n = (count - 1) / 2
    list[n]
  elsif
    n1 = count / 2
    n2 = n1 - 1
    (list[n1] + list[n2]) / 2.0
  end
end

p median 2,3,1
p median 1,2,3,4
