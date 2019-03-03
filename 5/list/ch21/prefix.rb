def prefix(ary, obj)
  result = []                # 結果の配列を初期化する
  ary.each do |item|         # 要素を1つずつ見ながら
    result << item           # 要素を結果の配列に追加する
    if item == obj           # 要素が条件に一致するものがあれば
      return result          # 結果の配列を返す
    end
  end
  return result              # すべての要素を検査し終わった場合
end

p prefix([1, 2, 3, 4, 5], 3) #=> [1, 2, 3]
