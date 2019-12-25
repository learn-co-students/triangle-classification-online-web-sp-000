require 'pry'

class Triangle

  # write code here
  def initialize(side1, side2, side3)
  	@sides = []
  	@sides << side1
  	@sides << side2
  	@sides << side3
  end

  def kind
  	puts @sides.inspect
  	puts @sides.include?(0)
  	puts valid?

  	if @sides.include?(0) || !valid?
  		raise TriangleError		
  	end

  	equals = @sides.select {|e| @sides.count(e) > 1 }.size 
  	case equals 
  		when 3 
  			:equilateral
  		when 2
  			:isosceles
  		else
  			:scalene
  	end
  end

  def valid?
  	if @sides.each_with_index.map { |side, i| 
  		others = []
  		@sides.each_with_index {|e, j| others << e if j != i} 
  		others.sum > side }.include?(false)
  		false
  	else
  		true
  	end
  end

  class TriangleError < StandardError
  end
end
