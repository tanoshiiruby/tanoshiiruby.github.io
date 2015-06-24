def num2astrisk(str)
  num = ""
  str.split(//).each{|char|
    char.sub!("0", "")
    char.sub!("1", "*")
    char.sub!("2", "**")
    char.sub!("3", "***")
    char.sub!("4", "****")
    char.sub!("5", "*****")
    char.sub!("6", "******")
    char.sub!("7", "*******")
    char.sub!("8", "********")
    char.sub!("9", "*********")
    num = num + num + num + num + num + num + num + num + num + num + char
  }
  return num
end

p num2astrisk("1")
p num2astrisk("2")
p num2astrisk("3")
p num2astrisk("4")
p num2astrisk("5")
p num2astrisk("10")
p num2astrisk("15")
p num2astrisk("20")
p num2astrisk("25")
p num2astrisk("30")
p num2astrisk("35")
p num2astrisk("40")
