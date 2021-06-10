class Triangle
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end 
  
  def kind
    if @side_one <= 0 || @side_two <= 0 || @side_three <= 0 || @side_one + @side_two <= @side_three || @side_two + @side_three <= @side_one || @side_one + @side_three <= @side_two
      begin 
       raise TriangleError
      resuce TriangleError => error 
        puts error.message
      end 
    elsif @side_one != @side_two && @side_two != @side_three && @side_one != @side_three
      :scalene
    elsif @side_one == @side_two && @side_two == @side_three && @side_one == @side_three
      :equilateral
    else 
      :isosceles
  end
end 
  
  
  class TriangleError < StandardError
    def error 
      puts "Invalid triangle! All sides must be greater than zero and the sum of two sides may not be smaller than the length of the third side."
    end 
  end 
end
