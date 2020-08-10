class Triangle
  # custom error class
  class TriangleError < StandardError
    def message
      "no error yet"
    end
  end

  # attrs section
  attr_accessor :first, :second, :third

  def initialize(first, second, third)
    # attributes.each {|key, value| self.send("#{key}=", value)}
    self.first = first
    self.second = second
    self.third = third
  end

  def kind
    #begin
      if self.valid?
        if self.first == self.second && self.second == self.third
          return :equilateral
        elsif self.first == self.second || self.second == self.third || self.first == self.third
          return :isosceles
        else
          return :scalene
        end
      else
        puts "raising error"
        raise TriangleError
      end
    #rescue TriangleError => error
    
    #puts error.message
    #end
  end

  def valid?
    if self.first + self.second <= self.third || self.first + self.third <= self.second || self.second + self.third <= self.first
      puts "the sum of two sides of this triangle is less than the third"
      return false
    elsif self.first == 0 || self.second == 0 || self.third == 0
      puts "one of the sides is equal to 0"
      return false
    else
      puts "passed as legal triangle"
      return true
    end
  end
end