var = 1            # ファイル内のvar
class Foo
  var = 2          # クラス定義内のvar
  def meth
    var = 3        # メソッド定義内のvar
  end
end

=== ローカル変数の初期化

　ローカル変数は，最初に代入されたときに初期化されます。初期化されていないローカル変数を参照しようとすると例外（NameError）が発生します。

//cmd{
> 【ruby -e 'puts a'】
-e:1: undefined local variable or method `a' for main:Object (NameError)
