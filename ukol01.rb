# Michal Zykov         
# Railsworkshop 1.0   
# Homework #1: Triangle       

# Triangle: 3-sided polygon
class Triangle

  # data is r/w
  attr_accessor :a, :b, :c

  # create an instance
  def initialize( a, b, c )
    @a = a
    @b = b
    @c = c
  end

  # class method, input: two sides
  def self.create_triangle( a, b )
    Triangle.new( a, b, Math.sqrt( a ** 2 + b ** 2 ).to_i )
  end

  # instance method, return true if triangle is valid
  def valid?()
    a + b > c ? true : false
  end

  # return triangle circuit
  def circuit()
    a + b + c
  end
end

# create triangle and print information
# t = Triangle.new( 2, 2, 2 )
# t = Triangle.new( 2, 2, 8 )
t = Triangle.create_triangle( 3, 2 )
puts "- triangle: a = #{t.a} b = #{t.b} c = #{t.c}"
puts "- is it valid? #{t.valid?()}"
puts "- circuit is: #{t.circuit()}"
