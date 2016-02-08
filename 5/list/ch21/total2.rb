def total2(from, to, &block)
  result = 0               # 合計の値
  from.upto(to) do |num|   # fromからtoまで処理する
    if block               #   ブロックがあれば
      result +=            #     ブロックで処理した値を足す
           block.call(num)
    else                   #   ブロックがなければ
      result += num        #     そのまま足す
    end
  end
  return result            # メソッドの結果を返す
end

p total2(1, 10)                   # 1から10の和 => 55
p total2(1, 10){|num| num ** 2 }  # 1から10の2乗の値の和 => 385
