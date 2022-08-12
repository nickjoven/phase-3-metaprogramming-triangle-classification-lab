class Triangle
  # write code here
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    check_errors
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def sides_larger_than_0?
    a > 0 && b > 0 && c > 0
  end

  def obeys_inequality?
    a + b > c && a + c > b && b + c > a 
  end

  def check_errors
    raise TriangleError unless sides_larger_than_0? && obeys_inequality?
  end

    


  class TriangleError < StandardError
  end
end
