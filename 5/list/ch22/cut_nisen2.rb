require 'cgi/util'
htmlfile = "nisendouka.html"
textfile = "nisendouka.txt"

html = File.read(htmlfile)

File.open(textfile, "w") do |f|
  in_header = true
  html.each_line do |line|
    if in_header && /<div class="main_text">/ !~ line
      next
    else
      in_header = false
    end
    break if /<div class="bibliographical_information">/ =~ line
    line.gsub!(/<[^>]+>/, '')
    esc_line = CGI.unescapeHTML(line)
    f.write esc_line
  end
end
