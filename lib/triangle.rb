class Triangle
  # write code here
attr_accessor :kind

  def initialize (side_a,side_b,side_c)
    if side_a * side_b * side_c == 0 then raise TriangleError
    elsif side_a < 0 || side_b < 0 || side_c < 0 then raise TriangleError
    elsif side_a + side_b <= side_c ||  side_c + side_b <= side_a || side_c + side_a <= side_b then raise TriangleError
    elsif side_a == side_b && side_b == side_c then @kind = :equilateral
    elsif side_a == side_b || side_b == side_c || side_a == side_c then @kind = :isosceles
    else @kind = :scalene
    end

  end


  class TriangleError < StandardError

  end

end
