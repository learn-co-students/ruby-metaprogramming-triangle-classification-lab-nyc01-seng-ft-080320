class Triangle

  attr_reader :ele_1, :ele_2, :ele_3

  def initialize(ele_1, ele_2, ele_3)
    @ele_1 = ele_1
    @ele_2 = ele_2
    @ele_3 = ele_3
  end

  def kind
    actual_triangle?
    if ele_1 == ele_2 && ele_2 == ele_3
      :equilateral
    elsif ele_1 == ele_2 || ele_2 == ele_3 || ele_1 == ele_3
      :isosceles
    else
      :scalene
    end
  end

  def actual_triangle?
    triangle_sides = [ele_1, ele_2, ele_3]
    actual_triangle = [(ele_1 + ele_2 > ele_3), (ele_1 + ele_3 > ele_2), (ele_2 + ele_3 > ele_1)]
    triangle_sides.each do |side|
      if side <= 0
        actual_triangle << false
      end
    end
    if actual_triangle.include?(false)
      raise TriangleError
    end
  end

    class TriangleError < StandardError
    end

end
