def kan2num(string)
  digit4 = digit3 = digit2 = digit1 = "0"

  nstring = string.dup
  nstring.gsub!(/∞Ï/, "1")
  nstring.gsub!(/∆Û/, "2")
  nstring.gsub!(/ª∞/, "3")
  nstring.gsub!(/ªÕ/, "4")
  nstring.gsub!(/∏ﬁ/, "5")
  nstring.gsub!(/œª/, "6")
  nstring.gsub!(/º∑/, "7")
  nstring.gsub!(/»¨/, "8")
  nstring.gsub!(/∂Â/, "9")

  if nstring =~ /((\d)?¿È)?((\d)?…¥)?((\d)?ΩΩ)?(\d)?$/
    if $1
      digit4 = $2 || "1"
    end
    if $3
      digit3 = $4 || "1"
    end
    if $5
      digit2 = $6 || "1"
    end
    digit1 = $7 || "0"
  end

  return (digit4+digit3+digit2+digit1).to_i
end

p kan2num("º∑¿È»¨…¥∆ÛΩΩª∞")
p kan2num("¿È»¨…¥∆ÛΩΩª∞")
p kan2num("»¨…¥∆ÛΩΩª∞")
p kan2num("…¥∆ÛΩΩª∞")
p kan2num("…¥ª∞")
p kan2num("∆ÛΩΩª∞")
p kan2num("ΩΩª∞")
p kan2num("ª∞")
