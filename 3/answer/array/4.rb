# ������������
a = (1..100).to_a

# (a) Array#reverse��Ȥ�
a2 = a.reverse
p a2

# (b) Array#sort��Ȥ�
a2 = ary.sort{|n1, n2| -(n1 <=> n2) }
p a2

# (c) Array#sort_by��Ȥ�
a2 = a.sort_by{|i| -i }
p a2
