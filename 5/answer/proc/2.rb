to_class = :class.to_proc
p to_class.call("test")    #=> String
p to_class.call(123)       #=> Fixnum
p to_class.call(2 ** 100)  #=> Bignum
