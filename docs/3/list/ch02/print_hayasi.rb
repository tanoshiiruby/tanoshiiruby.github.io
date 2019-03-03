names = ["小林", "林", "高野", "森岡"]
names.each do |name|
  if /林/ =~ name
    puts name
  end
end
