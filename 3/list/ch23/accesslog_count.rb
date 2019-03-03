count = 0                   # 行数を初期化する
File.open(ARGV[0]) do |io|  # ファイルを開く
  io.each_line do |line|    # 行ごとに処理する
    count += 1              # 行数を更新する
  end
end
puts count                  # 行数を表示する
