def local_scope_test(n)
  if n > 0
    positive = true
  elsif n < 0
    negative = true
  else
    zero = true
  end
  return [positive, negative, zero]
end
p local_scope_test(1)
p local_scope_test(0)
p local_scope_test(-1)
