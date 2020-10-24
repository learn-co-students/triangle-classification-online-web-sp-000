class Triangle
  
  attr_accessor :edge_a, :edge_b, :edge_c
  
  def initialize(edge_a,edge_b,edge_c)
    @edge_a = edge_a 
    @edge_b = edge_b 
    @edge_c = edge_c
  end
  
  def triangle_valid?
    @edge_a + @edge_b > @edge_c && @edge_c + @edge_b > @edge_a && @edge_c + @edge_a > @edge_b 
  end
  
  def build_triangle
    Array.new.push(@edge_a,@edge_b,@edge_c).uniq.length
  end
  
  def kind 
    if triangle_valid? != true
      raise TriangleError
    else
      case build_triangle
      when 3
        :scalene
      when 2 
        :isosceles
      when 1
        :equilateral
      end
    end
  end
      
  
  
  class TriangleError < StandardError
  end
end
