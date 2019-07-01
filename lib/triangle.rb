class Triangle
  # write code here
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    array = [s1, s2, s3].sort
    @s1 = array[0]
    @s2 = array[1]
    @s3 = array[2]
  end

  def kind
    if @s1 <= 0 || @s1 + @s2 <= @s3
      #begin
        raise TriangleError
      #rescue TriangleError => error
      #  puts error.message
#      end
    else
      if @s1==@s2 && @s2==@s3
        :equilateral
      elsif @s1==@s2 || @s2==@s3
        :isosceles
      else
        :scalene
      end
    end
  end



  class TriangleError < StandardError
    def message
      "Those sides don't make a triangle."
    end
  end

end
