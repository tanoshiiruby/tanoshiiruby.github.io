require "erb"
require "nkf"

def _(name)
  file = File.expand_path(name)
  src = NKF.nkf("-w", File.read(file))
  src.gsub!(/#*　\@<tt>\{…\}/){"#　…"}
  return "<pre class=\"brush: ruby\">" + ERB::Util.html_escape(src) + "</pre>"
end

filename = "index.rhtml"
erb = ERB.new(File.read(filename))
erb.filename = filename
$> = open("../list.html", "w")
erb.run
