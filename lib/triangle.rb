class Triangle

  def initialize(right, left, bottom)
    @right = right
    @left = left
    @bottom = bottom
  end

  def kind

    if (@right <= 0) || (@left <=0) || (@bottom <= 0)
      raise TriangleError
    elsif (@right + @left <= @bottom) || (@right + @bottom <= @left) || (@left + @bottom <= @right)
      raise TriangleError
    else

      if (@right === @left) && (@left === @bottom)
        :equilateral
      elsif (@right === @left) || (@right === @bottom) || (@left === @bottom)
        :isosceles
      elsif (@right != @left) && (@left != @bottom) && (@right != @bottom)
        :scalene
      end

    end
  end

  class TriangleError < StandardError
    def raise_error
      "error!"
    end
  end


end
