require 'open-uri'
open("http://www.ruby-lang.org/ja/") do |f|
  5.times do
    print f.gets
  end
end
