require 'matrix'
n = gets.to_i
n.times do
  x1,y1,x2,y2,x3,y3 = gets.split.map(&:to_f)
  x = [x1,x2,x3]
  y = [y1,y2,y3]
  # circle equation
  # x^2 + y^2 + ax + by + c = 0
  l = Matrix[[x1,y1,1],
             [x2,y2,1],
             [x3,y3,1]]
  m = Matrix[[-(x1**2 + y1**2)],
             [-(x2**2 + y2**2)],
             [-(x3**2 + y3**2)]]
  abc = l.inverse * m
  a,b,c = abc.to_a.flatten

  # (x - x_c)^2 + (y - y_c)^2 = r^2
  x_c = -(a/2)
  y_c = -(b/2)
  r = Math.sqrt(-c + (x_c**2) + (y_c**2))
  printf "%0.3f %0.3f %0.3f\n",x_c.round(3), y_c.round(3), r.round(3)
end
