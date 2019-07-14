class Triangle
  # write code here
  attr_accessor :s_1, :s_2, :s_3, :kind

  def initialize(s_1, s_2, s_3)
    @s_1 = s_1
    @s_2 = s_2
    @s_3 = s_3
  end

  def kind
    if (s_1 * s_2 * s_3) == 0 || (s_1 + s_2) <= s_3 || (s_2 + s_3) <= s_1 || (s_1 + s_3) <= s_2

      begin
        raise TriangleError
      end

    elsif s_1 == s_2 && s_1 == s_3
      self.kind = :equilateral
    elsif s_1 == s_2 || s_1 == s_3 || s_2 == s_3
      self.kind = :isosceles
    else
      self.kind = :scalene
    end
  end


  class TriangleError < StandardError
    #triangle error code
    def message
      puts "not a triangle"
    end
  end

end
