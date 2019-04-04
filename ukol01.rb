class Triangle

  attr_accessor :a, :b, :c

  def initialize( a, b, c )
    @a = a
    @b = b
    @c = c
  end

  def self.create_triangle( a, b )
    Triangle.new( a, b, Math.sqrt( a ** 2 + b ** 2 ) )
  end

  def valid?()
    a + b > c ? true : false
  end

  def circuit()
    a + b + c
  end
end

t = Triangle.create_triangle( 3, 2 )
puts t.valid?()
puts t.circuit().to_i
