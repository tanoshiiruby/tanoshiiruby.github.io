def kan2num(string)
  digit4 = digit3 = digit2 = digit1 = "0"

  nstring = string.dup
  nstring.gsub!(/��/, "1")
  nstring.gsub!(/��/, "2")
  nstring.gsub!(/��/, "3")
  nstring.gsub!(/��/, "4")
  nstring.gsub!(/��/, "5")
  nstring.gsub!(/ϻ/, "6")
  nstring.gsub!(/��/, "7")
  nstring.gsub!(/Ȭ/, "8")
  nstring.gsub!(/��/, "9")

  if nstring =~ /((\d)?��)?((\d)?ɴ)?((\d)?��)?(\d)?$/
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

p kan2num("����Ȭɴ�󽽻�")
p kan2num("��Ȭɴ�󽽻�")
p kan2num("Ȭɴ�󽽻�")
p kan2num("ɴ�󽽻�")
p kan2num("ɴ��")
p kan2num("�󽽻�")
p kan2num("����")
p kan2num("��")
