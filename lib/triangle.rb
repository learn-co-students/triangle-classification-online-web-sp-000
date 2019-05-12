class Triangle
  # write code here
attr_accessor :kind

  def initialize (sideA,sideB,sideC)
    if sideA * sideB * sideC == 0 then raise TriangleError
    elsif sideA < 0 || sideB < 0 || sideC < 0 then raise TriangleError
    elsif sideA + sideB <= sideC ||  sideC + sideB <= sideA || sideC + sideA <= sideB then raise TriangleError
    elsif sideA == sideB && sideB == sideC then @kind = :equilateral
    elsif sideA == sideB || sideB == sideC || sideA == sideC then @kind = :isosceles
    else @kind = :scalene
    end

  end


  class TriangleError < StandardError

  end

end
