# ������������
a = (1..100).to_a

# (a) Array#each���¤����
result = 0
a.each{|i| result += i }
p result

# (b) Array#inject���¤����
p a.inject(0){|memo, i| memo += i }
