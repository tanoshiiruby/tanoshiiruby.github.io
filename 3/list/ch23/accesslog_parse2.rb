require "access_log"        # access_log.rbを読み込む

count = 0
File.open(ARGV[0]) do |io|
  AccessLog.each_entry(io) do |entry|
    p entry.to_a            # エントリを表示する
    count += 1
  end
end
puts count
