require "erb"
require "nkf"

def _(name)
  file = File.expand_path(name + ".rb")
  src = NKF.nkf("-w", File.read(file))
  return "<pre class=\"brush: ruby\">" + ERB::Util.html_escape(src) + "</pre>"
end

filename = "index.rhtml"
erb = ERB.new(File.read(filename))
erb.filename = filename
$> = open("index.html", "w")
erb.run
