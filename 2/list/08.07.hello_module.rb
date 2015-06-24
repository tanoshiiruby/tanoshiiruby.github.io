module HelloModule            # moduleÊ¸
  Version = "1.0"             # ¿ô¤
  def hello(name)             # ¥á¥½¥Ã¥É¤
    print "Hello, ", name, ".\n"
  end
  module_function :hello      # hello¤ò¥â¥¸¥å¡¼¥¿ô¤È¤·¤Æ¸ø³«¤¹¤
end

p HelloModule::Version        #=> "1.0"
HelloModule.hello("Alice")    #=> Hello, Alice.

include HelloModule           # ¥¤¥ó¥¯¥ë¡¼¥É¤·¤Æ¤ß¤
p Version                     #=> "1.0"
hello("Alice")                #=> Hello, Alice.
