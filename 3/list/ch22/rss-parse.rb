require 'rss'

url = 'http://www.ruby-lang.org/ja/feeds/news.rss'
rss = RSS::Parser.parse(url)
puts rss.channel.title
