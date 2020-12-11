class Triangle
  # write code here
  attr_accessor :kind

  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3]
    @sides.sort!
  end

  def kind
   if @sides.any?{|side| side <= 0} || ((@sides[0] + @sides[1]) <= @sides[2])
     raise TriangleError
   elsif @sides.uniq.length == 1
     :equilateral
   elsif @sides.uniq.length == 2
     :isosceles
   else
     :scalene
  end
end

  class TriangleError < StandardError
    def message
      "OOF"
    end
  end
end
