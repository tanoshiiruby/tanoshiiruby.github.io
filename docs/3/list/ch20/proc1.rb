pr = Proc.new{
  p "a"
}
p "b"
pr.call()
