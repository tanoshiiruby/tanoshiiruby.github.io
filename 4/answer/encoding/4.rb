# encoding: utf-8

Dir.glob("*.txt") do |filename|
  ## UTF8-MACだったファイル名をUTF-8に変換すると、UTF-8の「ルビー.txt」と比較できるようになります
  if filename.encode("UTF8-MAC").encode("UTF-8") == "ルビー.txt"
    puts "found."; exit
  end
end
puts "not found."
