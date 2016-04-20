while line = gets
  v = line.to_f
  t = v / 9.8
  y = 4.9 * t**2
  n = ((y + 5) / 5).ceil
  puts n
end
