rectangles,lozenges = 0,0
while line = gets
  side1,side2,diagonal = line.split(',').map(&:to_i)
  if side1**2 + side2**2 == diagonal**2
    rectangles += 1
  else
    if side1 == side2
      lozenges += 1
    end
  end
end
puts rectangles,lozenges

