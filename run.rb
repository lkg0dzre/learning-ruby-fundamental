# RubyMonk — Primer: 8.1 Getting Modular


module Perimeter
  def perimeter
    sides.inject(0) { |result,i| result += i }
  end
end

class Rectangle
  include Perimeter
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def sides
    [@length, @breadth, @length, @breadth]
  end
end

class Square
  include Perimeter
  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
  end
end


puts Rectangle.new(2, 3).perimeter
