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

  def +@
    self.dup
  end

  def -@
    Vector.new(-@x, -@y)
  end

  def ~@
    Vector.new(-@y, @x)
  end

  def [](idx)
    case idx
    when 0
      @x
    when 1
      @y
    else
      raise ArgumentError, "out of range `#{idx}'"
    end
  end

  def []=(idx, val)
    case idx
    when 0
      @x = val
    when 1
      @y = val
    else
      raise ArgumentError, "out of range `#{idx}'"
    end
  end
end

vec0 = Vector.new(3, 6)
vec1 = Vector.new(1, 8)
p vec0          #=> (3, 6)
p vec1          #=> (1, 8)
p vec0 + vec1   #=> (4, 14)
p vec0 - vec1   #=> (2, -2)

vec = Vector.new(3, 6)
p +vec          #=> (3, 6)
p -vec          #=> (-3, -6)
p ~vec          #=> (-6, 3)

vec = Vector.new(3, 6)
p vec[0]        #=> 3
p vec[1] = 2    #=> 2
p vec[1]        #=> 2
p vec[2]        #=> エラー (ArgumentError)
