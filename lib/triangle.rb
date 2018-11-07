class Triangle
  # write code here
  attr_accessor :sides

  def initialize(a, b, c)
    @sides = [a, b, c]
  end

  def kind
    @sides.sort!
    if @sides[0] + @sides[1] <= @sides[2] || @sides[0] <= 0
      raise TriangleError
    else
      if @sides[0]==@sides[1]|| @sides[1]==@sides[2]
        if @sides[0]==@sides[2]
          return :equilateral
        else
          return :isosceles
        end
      else
        return :scalene
      end
    end
  end


  class TriangleError < StandardError
  # triangle error code
    puts "Invalid triangle."
  end
end
