def dice
  return Random.rand(6) + 1
end

def dice10
  ret = 0
  10.times do
    ret += dice
  end
  ret
end
