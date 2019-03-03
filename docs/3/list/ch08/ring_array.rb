ring_array.rb
class RingArray < Array    # スーパークラスを指定する
  def [](i)                # 演算子[]の再定義
    idx = i % size         # 新しいインデックスを求める
    super(idx)             # スーパークラスの同名のメソッドを呼ぶ
  end
end

eto = RingArray[ "子", "丑", "寅", "卯", "辰", "巳",
                 "午", "未", "申", "酉", "戌", "亥" ]
p eto[6]     #=> "午"
p eto[11]    #=> "亥"
p eto[15]    #=> "卯"
p eto[-1]    #=> "亥"
