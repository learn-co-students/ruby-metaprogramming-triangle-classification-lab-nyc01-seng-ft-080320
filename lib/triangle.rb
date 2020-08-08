class Triangle

  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c
  end

  def kind
    if [@a,@b,@c].any? {|x| x <= 0}
      raise TriangleError
    elsif @a+@b <= @c || @b+@c <= @a || @c + @a <= @b
      raise TriangleError
    else 
      check_type
    end

    



  end

  def check_type
    if @a == @b && @b == @c
      return :equilateral
    elsif
      @a == @b || @b == @c || @a == @c
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "That ain't a Triangle"
    end
  end
end
