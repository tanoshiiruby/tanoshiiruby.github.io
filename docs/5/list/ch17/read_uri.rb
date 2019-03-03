require "open-uri" 

# HTTP経由でデータを読み込む 
open("http://www.ruby-lang.org/ja/") do |io| 
  puts io.read  # Rubyのホームページをコンソールに出力する 
end 

# FTP経由でデータを読み込む
filename = "ruby-2.3.0.tar.gz"
url = "ftp://ftp.ruby-lang.org/pub/ruby/2.3/#{filename}"
open(url) do |io| 
  File.binwrite(filename, io.read)  # ファイルに書き込む
end
