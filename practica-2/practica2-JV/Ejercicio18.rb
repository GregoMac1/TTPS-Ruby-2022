fibonacci = Enumerator.new do |caller|
  i1 = 1
  i2 = 1
  loop do
    caller.yield i1
    il = i2
    i2 = i1 + i2
  end
end

p fibonacci.first(10)
