class Triangle
  attr_accessor :leg_one, :leg_two, :leg_three
  
  def initialize(leg1, leg2, leg3)
    @leg_one = leg1
    @leg_two = leg2
    @leg_three = leg3
  end


  def kind
    triangle_array = [@leg_one, @leg_two, @leg_three]
    
    if triangle_array.all?{ |t_size| t_size == 0 }
      raise TriangleError
    elsif triangle_array.any?{ |t_size| t_size < 0 }
      raise TriangleError
    elsif triangle_array.sum - triangle_array.max <= triangle_array.max 
        raise TriangleError 
    elsif triangle_array.all? { |leg| leg == @leg_one}
      :equilateral
    elsif triangle_array.any?{ |t_size| triangle_array.count(t_size) == 2 }
      :isosceles
    elsif triangle_array.any?{ |t_size| triangle_array.count(t_size) == 1 }
      :scalene
    end
    
  end

  class TriangleError < StandardError
  end
end

