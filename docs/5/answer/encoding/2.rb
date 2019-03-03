# encoding: utf-8

## Shift_JISでsjis.txtに出力します
File.open("sjis.txt","w:Shift_JIS") do |f|
  f.write("こんにちは")
end

## sjis.txtを開いて、それをUTF-8で出力します
File.open("sjis.txt","r:Shift_JIS") do |f|
  str = f.read
  ## strはShift_JISなので、putsで出力する際にUTF-8にします
  puts str.encode("UTF-8")
end
