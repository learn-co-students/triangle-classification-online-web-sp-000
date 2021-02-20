class Triangle

  attr_accessor :s1, :s2, :s3

    def initialize(s1, s2, s3)
      @s1 = s1
      @s2 = s2
      @s3 = s3

    end

    def valid_triangle?
      real_triangle = [(s1 < s2 + s3), (s2 < s1 + s3), (s3 < s2 + s1)]
      [s1, s2, s3].each{|side| real_triangle << false if side <= 0}
      raise TriangleError if real_triangle.include?(false)

    end

    class TriangleError < StandardError
    end

    def kind
      valid_triangle?
      if s1 == s2 && s1 == s3
        :equilateral
      elsif s1 == s2 || s2 == s3 || s1 == s3
        :isosceles
      else
        :scalene
      end

    end
  end
