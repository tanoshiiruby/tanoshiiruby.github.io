prc0 = Proc.new{ nil }
prc1 = Proc.new{|a| a }

p prc0.source_location
p prc1.source_location
