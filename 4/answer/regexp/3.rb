def word_capitalize(str)
  return str.split(/\-/).collect{|w| w.capitalize}.join('-')
end

p word_capitalize("in-reply-to") #=> "In-Reply-To"
p word_capitalize("X-MAILER")    #=> "X-Mailer"
