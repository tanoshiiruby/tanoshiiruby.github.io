module HelloModule            # module文
  Version = "1.0"             # 定数の定義
  def hello(name)             # メソッドの定義
    print "Hello, ", name, ".\n"
  end
  module_function :hello      # helloをモジュール関数として公開する
end

p HelloModule::Version        #=> "1.0"
HelloModule.hello("Alice")    #=> Hello, Alice.

include HelloModule           # インクルードしてみる
p Version                     #=> "1.0"
hello("Alice")                #=> Hello, Alice.
