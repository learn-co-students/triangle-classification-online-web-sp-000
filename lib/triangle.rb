class Triangle

	def initialize(side_1, side_2, side_3)
		@sides = [side_1, side_2, side_3].sort
	end

	def kind
		raise TriangleError if @sides.any?{|side| side <= 0} || @sides[0] + @sides[1] <= @sides[2]

		if @sides.uniq.size == 1
			:equilateral
		elsif @sides.uniq.size == 2
			:isosceles
		else
			:scalene
		end
	end

	class TriangleError < StandardError
	end

end
