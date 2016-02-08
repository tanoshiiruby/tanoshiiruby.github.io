# %w(...) は各単語を要素とする配列を生成するリテラルです
ary = %w(
  Ruby is a open source programming language with a focus
  on simplicity and productivity. It has an elegant syntax
  that is natural to read and easy to write
)

call_num = 0    # ブロックの呼び出し回数
sorted = ary.sort do |a, b|
  call_num += 1 # ブロックの呼び出し回数を加算する
  a.length <=> b.length
end

puts "ソートの結果 #{sorted}"
puts "配列の要素数 #{ary.length}"
puts "ブロックの呼び出し回数 #{call_num}"
