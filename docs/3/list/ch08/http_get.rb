  require "net/http"
  url = URI.parse("http://www.ruby-lang.org/ja/")
  http = Net::HTTP.start(url.host, url.port)
  doc = http.get(url.path)
  puts doc
