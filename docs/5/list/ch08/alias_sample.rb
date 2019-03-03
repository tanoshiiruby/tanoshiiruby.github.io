class C1                 # C1クラスの定義
  def hello              # helloを定義
    "Hello"
  end
end

class C2 < C1            # C1クラスを継承してC2クラスを定義
  alias old_hello hello  # 別名old_helloを設定

  def hello              # helloを再定義
    "#{old_hello}, again"
  end
end

obj = C2.new
p obj.old_hello          #=> "Hello"
p obj.hello              #=> "Hello, again"
