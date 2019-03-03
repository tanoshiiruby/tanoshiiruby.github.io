def balanced?(array)
  stack = Array.new()
  array.each{|elem|
    case elem
    when '('
      stack.push(elem)
    when '{'
      stack.push(elem)
    when ')'
      prev_elem = stack.pop
      if prev_elem != '('
        return false
      end
    when '}'
      prev_elem = stack.pop
      if prev_elem != '{'
        return false
      end
    else
      return false
    end
  }

  if stack.empty?
    return true
  else
    return false
  end
end

p balanced?([])                   #=> true
p balanced?(["(",")"])            #=> true
p balanced?(["{","(",")","}"])    #=> true
p balanced?(["{","(",")"])        #=> false
p balanced?(["(",")","}"])        #=> false

p balanced?(["(", "{", "{", "}", "(", ")", "}", "(", ")", ")"]) #=> true
p balanced?(["(", "{", "{", "}", "(", "}", ")", ")"])           #=> false
