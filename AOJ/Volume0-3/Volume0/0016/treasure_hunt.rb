include Math
x,y = 0.0, 0.0
r = 90 * PI / 180.0
while line = gets
  w,d = line.split(',').map(&:to_i)
  x += w * cos(r)
  y += w * sin(r)
  r -= d * PI / 180.0
end
puts x.to_i,y.to_i
