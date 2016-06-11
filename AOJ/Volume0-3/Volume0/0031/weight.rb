while line = gets
  w = line.to_i
  weights = []
  10.times do |n|
    weights << 2**n if w[n] == 1
  end
  puts weights.join(' ')
end
