class Triangle
  # write code here
  attr_accessor :kind, :sides

  def initialize(a, b, c)
    @sides = []
    @sides << a
    @sides << b
    @sides << c
    @sides = @sides.sort
    if (@sides[0] + @sides[1] <= @sides[2]) || @sides.include?(0)

      raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
    end
  end

  def kind
    if @sides[0] == @sides[1] && @sides[0] == @sides[2]
      :equilateral
    elsif @sides[0] == @sides[1] || @sides[1] == @sides[2]
      :isosceles
    else
      :scalene
    end
  end


  class TriangleError < StandardError
    def message
      "not a triangle"
    end
  end

end

#this = Triangle.new(0,4,8)
