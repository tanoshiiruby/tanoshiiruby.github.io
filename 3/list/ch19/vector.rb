class Vector
  attr_reader :x, :y
  def initialize(x=0, y=0)
    @x, @y = x, y
  end
  def inspect         # 表示用
    "(#{@x}, #{@y})"
  end
  def +(other)
    Vector.new(@x + other.x, @y + other.y) # x, y のそれぞれを足す
  end
  def -(other)
    Vector.new(@x - other.x, @y - other.y) # x, y のそれぞれを引く
  end
end

vec0 = Vector.new(3, 6)
vec1 = Vector.new(1, 8)

p vec0          #=> (3, 6)
p vec1          #=> (1, 8)
p vec0 + vec1   #=> (4, 14)
p vec0 - vec1   #=> (2, -2)
