class HelloCount
  @@count = 0           # helloメソッドの呼び出し回数

  def HelloCount.count  # 呼び出し回数を参照するためのクラスメソッド
    @@count
  end
  def initialize(myname="Ruby")
    @name = myname
  end
  def hello
    @@count += 1        # 呼び出し回数を加算する
    print "Hello, world. I am ", @name, ".\n"
  end
end

bob   = HelloCount.new("Bob")
alice = HelloCount.new("Alice")
ruby  = HelloCount.new

p HelloCount.count    #=> 0
bob.hello
alice.hello
ruby.hello
p HelloCount.count    #=> 3
