def add *args
  args.inject(0) { |result, number| result += number}
end

def subtract *args
  args.inject(args[0]*2) { |result, number| result -= number}
end

def calculate(*args)
  mode = args.pop if args.last.is_a?(Hash)

  if mode==nil or mode[:add]==true
    add *args
  elsif mode[:subtract]==true
    subtract *args
  end
end

puts calculate(4, 5)
