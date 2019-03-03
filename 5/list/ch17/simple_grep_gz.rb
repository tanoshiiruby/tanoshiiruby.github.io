pattern = Regexp.new(ARGV[0])
filename = ARGV[1]
if /.gz$/ =~ filename
  file = IO.popen("zcat #{filename}")
else
  file = File.open(filename)
end
file.each_line do |line|
  if pattern =~ line
    print line
  end
end
