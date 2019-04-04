class Triangle
  # triangle vertices
  attr_accessor :a, :b, :c

  def initialize( a, b, c )
    @a = a
    @b = b
    @c = c
  end

  def valid?()
    if a + b > c ? true : false
  end

  def circuit()
    a + b + c
  end

  def self.create_rectangular( a, b )
    Triangle.new( a, b, Math.sqrt( a ** 2 + b ** 2 )  )
  end
end
end

puts "Hello!"
t = Triangle.create_rectangular( 2, 2 )
t.class
