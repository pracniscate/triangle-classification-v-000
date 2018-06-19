class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a # side 1
    @b = b # side 2
    @c = c # side 3
  end

  def kind
    case different_triangles

      when @a + @b + @c == 0
        raise TriangleError
      when @a < 0 || @b < 0 || @c < 0
        raise TriangleError
      when @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
        raise TriangleError
      when @a == @b && @b == @c
        :equilateral
      when @a == @b || @b == @c || @a == @c
        :isosceles
      when @a != @b && @b != @c && @a != @c
        :scalene

    end
  end

    class TriangleError < StandardError
      puts "This violates the triangle equality principle."
    end
end
