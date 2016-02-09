# encoding: utf-8

str1 = '①'
str2 = '①'

str01 = str1.encode(Encoding::Windows_31J)
p str01.force_encoding("Windows-31J").valid_encoding?

str02 = str1.encode(Encoding::Windows_31J)
p str02.force_encoding("Shift_JIS").valid_encoding?



