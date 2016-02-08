# 単語数のカウント
count = Hash.new(0)

## 単語の集計
File.open(ARGV[0]) do |f|
  f.each_line do |line|
    words = line.split
    words.each do |word|
      count[word] += 1
    end
  end
end

## 結果の出力
count.sort{|a, b|
  a[1] <=> b[1]
}.each do |key, value|
  print "#{key}: #{value}\n"
end
