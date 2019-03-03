require "open-uri"

# HTTP経由でデータを読み込む
open("http://www.ruby-lang.org") do |io|
  puts io.read       # Rubyのホームページをコンソールに出力する
end

# FTP経由でデータを読み込む
open("ftp://www.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7.tar.gz") do |io|
  open("ruby-1.8.7.tar.gz", "w") do |f|  # ローカルファイルを開く
    f.write(io.read)
  end
end
