class HelloWorld                   # class文
  def initialize(myname = "Ruby")  # initializeメソッド
    @name = myname                 # インスタンス変数の初期化
  end

  def hello                        # インスタンスメソッド
    puts "Hello, world. I am #{@name}."
  end
end

bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby = HelloWorld.new

bob.hello
