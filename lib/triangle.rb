class Triangle
  def initialize(a,b,c)
    @triangle=[a,b,c].sort
  end

  def kind
    if @triangle[0]<0||@triangle[0]+@triangle[1]<=@triangle[2]
      raise TriangleError
    elsif @triangle.uniq.length==1
      :equilateral
    elsif @triangle.uniq.length==2
      :isosceles
    else
      :scalene
    end
  end

  # triangle code

  class TriangleError < StandardError
    # triangle error code
  end

end
