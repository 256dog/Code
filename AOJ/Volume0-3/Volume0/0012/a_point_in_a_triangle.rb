require 'matrix'
while line = gets
  x1,y1,x2,y2,x3,y3,xp,yp = line.split.map(&:to_f)
  va = Vector[x2-x1, y2-y1, 0]
  vb = Vector[x3-x2, y3-y2, 0]
  vc = Vector[x1-x3, y1-y3, 0]
  vap = Vector[x1-xp, y1-yp, 0]
  vbp = Vector[x2-xp, y2-yp, 0]
  vcp = Vector[x3-xp, y3-yp, 0]
  z = []
  z << va.cross_product(vap)[2]
  z << vb.cross_product(vbp)[2]
  z << vc.cross_product(vcp)[2]
  if z.count{|e| e < 0} == 3 or z.count{|e| e > 0} == 3
    puts "YES"
  else
    puts "NO"
  end
end
