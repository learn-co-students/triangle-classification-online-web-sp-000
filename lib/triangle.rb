class Triangle


  attr_accessor :side_a, :side_b, :side_c


  # :equilateral

  # :isosceles
  
  # :scalene

  def initialize(side_a, side_b,side_c)

    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    
  end


#|| side_a < 0 || side_b < 0 || side_c < 0
      
  def kind

    if (side_c <= 0) || (side_b <= 0) || (side_a <= 0) || ((side_a + side_b) <= side_c) || ((side_b + side_c) <= side_a) || ((side_a + side_c) <= side_b)
     
     
      raise TriangleError

    else
      if (side_a != side_b) && (side_a != side_c) && (side_b != side_c)
        return :scalene
      elsif side_a == side_b && side_a == side_c 
        return :equilateral
      else
        return :isosceles
      end
    end

   
    
  end


  class TriangleError < StandardError
    def message
      "Invalid Parameters"
    end
  end



end
