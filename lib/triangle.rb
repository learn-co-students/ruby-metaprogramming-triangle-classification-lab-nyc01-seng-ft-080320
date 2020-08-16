
class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b 
    @c = c
  end

  def kind
    validate_triangle
    # if self.real_triangle? == false
    #   begin
    #   raise TriangleError
    #   rescue TriangleError => error 
    #     puts error.message
    #   end
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  # def real_triangle?
  #   if a != 0 && b != 0 && c != 0 && (((self.a + self.b) > self.c) || ((self.a + self.c) > self.b) || ((self.b + self.c) > self.a))
  #   else
  #       begin
  #     raise TriangleError
  #     rescue TriangleError => error 
  #       puts error.message
  #     end
  #     # false
  #   end
  # end

  class TriangleError < StandardError
    def error
    "That's not a valid triangle"
    end
  end

  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each { |s| real_triangle << false if s <= 0 }
    [a, b, c].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    end
  end

  # class TriangleError < StandardError
  # end
end

# class Triangle
#   attr_reader :a, :b, :c
#   def initialize(a, b, c)
#     @a = a
#     @b = b
#     @c = c
#   end
#   def kind
#     validate_triangle
#     if a == b && b == c
#       :equilateral
#     elsif a == b || b == c || a == c
#       :isosceles
#     else
#       :scalene
#     end
#   end

#   def validate_triangle
#     real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
#     [a, b, c].each { |s| real_triangle << false if s <= 0 }
#     [a, b, c].each do |side|
#       real_triangle << false if side <= 0 
#     raise TriangleError if real_triangle.include?(false)
#     end
#   end

#   class TriangleError < StandardError
#   end
# end



