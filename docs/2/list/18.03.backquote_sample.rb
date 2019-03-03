dirlist = `dir`
dirlist.each{|line|
  if line =~ /.rb$/i
    print line
  end
}
