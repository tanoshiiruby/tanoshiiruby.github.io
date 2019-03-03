def jparsedate(str)
  now = Time.now
  year = now.year
  month = now.month
  day = now.day
  hour = now.hour
  min = now.min
  sec = now.sec
  str.scan(/(����|���)?(\d+)(ǯ|��|��|��|ʬ|��)/) do
    case $3
    when "ǯ"
      year = $2.to_i
    when "��"
      month = $2.to_i
    when "��"
      day = $2.to_i
    when "��"
      hour = $2.to_i
      hour += 12 if $1 == "���"
    when "ʬ"
      min = $2.to_i
    when "��"
      sec = $2.to_i
    end
  end
  return Time.mktime(year, month, day, hour, min, sec)
end

p jparsedate("2010ǯ12��23�����8��17ʬ50��")
p jparsedate("12��23�����8��17ʬ50��")
p jparsedate("����8��17ʬ50��")
p jparsedate("8��17ʬ50��")
