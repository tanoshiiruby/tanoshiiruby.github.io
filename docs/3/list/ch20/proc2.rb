def foo(a, b, &block)
  block.call(a, b)
end

foo("a1", "b1"){|a, b|
  p a
  p b
}
