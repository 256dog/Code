while line = gets
  d = line.to_i
  area = 0
  x = 0
  while x < 600
    area += x**2 * d
    x += d
  end
  puts area
end
