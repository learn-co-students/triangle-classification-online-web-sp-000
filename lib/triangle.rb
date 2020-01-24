class Triangle
	def initialize(side_1, side_2, side_3)
		@side_1 = side_1
		@side_2 = side_2
		@side_3 = side_3
		@all = [@side_1, @side_2, @side_3]
	end

	def kind
		if @side_1 + @side_2 <= @side_3 ||
			@side_1 + @side_3 <= @side_2 ||
			@side_3 + @side_2 <= @side_1 ||
			@all.include?(0)
				raise TriangleError
		elsif @side_1 == @side_2 && @side_1 == @side_3
			:equilateral
		elsif @all.uniq.count == 2
			:isosceles
		else
			:scalene
		end
	end

	class TriangleError < StandardError
	end
end
