filename = "buffering.txt"
File.open(filename, "w") do |file|
  file.sync = true                     # 出力を同期させる
  3.times do |i|
    # 5バイト書き込むごとにファイルのサイズを調べる
    file.write("a" * 5)
    puts "#{i+1}回目: #{File.size(filename)}"
  end
end
puts "終了後: #{File.size(filename)}"  # もう一度調べる
p File.read(filename)                  # 出力を確認する
