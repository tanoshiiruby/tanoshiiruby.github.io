class HelloWorld                 # class文
  Version = "1.0"                # 定数の定義

  def initialize(myname="Ruby")  # initializeメソッド
    @name = myname               # インスタンス変数の初期化
  end

  def hello                      # インスタンスメソッド
    print "Hello, world. I am ", @name, ".\n"
  end
end

bob   = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby  = HelloWorld.new

bob.hello
