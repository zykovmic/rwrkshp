# Michal Zykov         
# Railsworkshop 1.0   
# Homework #1: Triangle       

# Triangle: 3-sided polygon
class Triangle

  # data is r/w
  attr_accessor :a, :b, :c

  # create an instance
  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end

  # class method, input: two sides
  def self.create_rectangular(a, b)
    Triangle.new(a, b, Math.sqrt(a ** 2 + b ** 2))
  end

  # instance method, return true if triangle is valid
  def valid?
    a + b > c && b + c > a && c + a > b
  end

  # return triangle circuit
  def circuit
    a + b + c
  end

  def print
    puts "- triangle: a = #{@a}, b =  #{@b}, c =  #{@c}\n- is valid? #{self.valid?}\n- circuit: #{self.circuit}"
  end
end

# create triangle and print information
# t = Triangle.new(2, 2, 2)
# t = Triangle.new(2, 2, 8)
t = Triangle.create_rectangular(3, 2)
t.print
