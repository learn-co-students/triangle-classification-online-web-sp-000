class Triangle
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end 
  
  def kind
    if @side_1 == 0 #|| @side_2 <= 0 || @side_3 <= 0 
      #@side_1+@side_2<@side_3#||@side_2+@side_3<@side_1||@side_1+@side_3<@side_2
      begin
        raise TriangleError
      rescue TriangleError => error 
        puts error.message
      end 
        
        
    
    elsif @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
    elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
      :isosceles
    else
      :scalene
    end 
  end
  
  class TriangleError < StandardError
    def message
      "This Triangle is illegal!"
    end 
  end 
end     
