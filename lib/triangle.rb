class Triangle
  # write code here
  def initialize(aa, bb, cc)

    @sides = [aa, bb, cc]
  end

  class TriangleError <StandardError
  end

  def kind
    if @sides.max >= @sides.min(2).sum
      raise TriangleError
    else
      if @sides.uniq.length == 1
        :equilateral
      elsif @sides.uniq.length == 2
        :isosceles
      else
        :scalene
      end
    end
  end


end
