print "breakの例:\n"
i = 0
["Perl", "Python", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i == 3
    break
  end
  p [ i, lang ]
end
10:
print "\nnextの例:\n"
i = 0
["Perl", "Python", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i == 3
    next
  end
  p [ i, lang ]
end
20:
print "\nredoの例:\n"
i = 0
["Perl", "Python", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i == 3
    redo
  end
  p [ i, lang ]
end
