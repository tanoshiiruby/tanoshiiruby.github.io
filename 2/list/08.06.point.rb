class Point
  attr_accessor :x, :y  # アクセスメソッドを定義する
  protected :x=, :y=    # x=とy=をprotectedにする
  def initialize(x=0.0, y=0.0)
    @x = x
    @y = y
  end
  def swap(other)       # x, yの値を入れ換えるメソッド
    xtmp = @x
    ytmp = @y
    @x = other.x
    @y = other.y
    other.x = xtmp      # 同一クラス内では呼び出すことができる
    other.y = ytmp
    self
  end
end

p0 = Point.new
p1 = Point.new(1.0, 2.0)
p [ p0.x, p0.y ]        #=> [0.0, 0.0]
p [ p1.x, p1.y ]        #=> [1.0, 2.0]

p0.swap(p1)
p [ p0.x, p0.y ]        #=> [1.0, 2.0]
p [ p1.x, p1.y ]        #=> [0.0, 0.0]

p0.x = 10.0             #=> エラー
