print "<html><title>font size list</title>"
print "<body>\n<p>\n"
font_table = {"normal" => "+0", "small" => "-1", "big" => "+1"}
font_table.each{ |key, value|
  print '<font size="', value, '">',key,'</font><br>',"\n"
}
print "</p></body></html>\n"
