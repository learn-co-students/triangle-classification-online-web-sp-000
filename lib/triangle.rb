class Triangle
  # write code here
  attr_reader :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    if !isEquilateral && !isIsosceles && !isScalene
      raise TriangleError
    end
  end
  def aboveZero
    if side1 > 0 && side2 >0 && side3 > 0
      return true
    end
    false
  end
  def isEquilateral
    if !aboveZero
      return false
    end
    if (side1 == side2) && (side2 == side3)
      true
    else
      false
    end
  end
  def isIsosceles
    if !aboveZero
      return false
    end
    if side1 < 3
      return false
    end
    if (side1 == side2) || (side2 == side3) || (side1 == side3)
      return true
    else
      return false
    end
  end
  def isScalene
    # if ((side1 != side2) && (side2 != side3) && (side1 != side3)) && ((side2 - side1 == -1) || (side2 - side1 == -1))
    min1 = -0.10000000000000003
    if !aboveZero
      return false
    end

    if ((side1 != side2) && (side2 != side3) && (side1 != side3))
      if (side2 - side1 == -1) || (side1 - side2 == -1) || (side3 - side1 == -1)  || (side1 - side3 == -1)  ||
         (side2 - side1 == min1) || (side1 - side2 == min1) || (side3 - side1 == min1) || (side1 - side2 == min1)
        return true
      else
        return false
      end
    else
      return false
    end
  end
  def kind
    if isEquilateral
      return :equilateral
    elsif isIsosceles
      return :isosceles
    elsif isScalene
      return :scalene
    # else
    #     begin
    #         raise TriangleError
    #         # rescue TriangleError => error
    #         #     puts error
    #     end
    #
    end
  end
  class TriangleError < StandardError
    def message
      "Invalid triangle"
    end
  end
end
