class HelloWorld                 # classÊ¸
  def initialize(myname="Ruby")  # initialize¥á¥½¥Ã¥
    @name = myname               # ¥¤¥ó¥¹¥¿¥ó¥¹¿ô¤Î½²½
  end
  def hello                      # ¥¤¥ó¥¹¥¿¥ó¥¹¥á¥½¥Ã¥
    print "Hello, world. I am ", @name, ".\n"
  end
end

bob   = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby  = HelloWorld.new

bob.hello
