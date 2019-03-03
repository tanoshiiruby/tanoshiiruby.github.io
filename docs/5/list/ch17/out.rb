3.times do |i|
  $stdout.puts "#{Random.rand}"        # 標準出力へ
  $stderr.puts "#{i+1}回出力しました"  # 標準エラー出力へ
end
