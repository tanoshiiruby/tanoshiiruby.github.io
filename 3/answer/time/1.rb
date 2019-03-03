def jparsedate(str)
  now = Time.now
  year = now.year
  month = now.month
  day = now.day
  hour = now.hour
  min = now.min
  sec = now.sec
  str.scan(/(¸áÁ°|¸á¸å)?(\d+)(Ç¯|·î|Æü|»þ|Ê¬|ÉÃ)/) do
    case $3
    when "Ç¯"
      year = $2.to_i
    when "·î"
      month = $2.to_i
    when "Æü"
      day = $2.to_i
    when "»þ"
      hour = $2.to_i
      hour += 12 if $1 == "¸á¸å"
    when "Ê¬"
      min = $2.to_i
    when "ÉÃ"
      sec = $2.to_i
    end
  end
  return Time.mktime(year, month, day, hour, min, sec)
end

p jparsedate("2010Ç¯12·î23Æü¸á¸å8»þ17Ê¬50ÉÃ")
p jparsedate("12·î23Æü¸á¸å8»þ17Ê¬50ÉÃ")
p jparsedate("¸áÁ°8»þ17Ê¬50ÉÃ")
p jparsedate("8»þ17Ê¬50ÉÃ")
