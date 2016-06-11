require 'matrix'
while line = gets
  xa,ya,xb,yb,xc,yc,xd,yd = line.split(',').map(&:to_f)
  v1 = Vector[xa-xb, ya-yb, 0]
  v2 = Vector[xb-xc, yb-yc, 0]
  v3 = Vector[xc-xd, yc-yd, 0]
  v4 = Vector[xd-xa, yd-ya, 0]
  z = []
  z << v1.cross_product(v2)[2]
  z << v2.cross_product(v3)[2]
  z << v3.cross_product(v4)[2]
  z << v4.cross_product(v1)[2]
  if z.all?{|s| s < 0} or z.all?{|s| s > 0}
    puts "YES"
  else
    puts "NO"
  end
end
