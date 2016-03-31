require 'matrix'
while line = gets
  a,b,c,d,e,f = line.split.map(&:to_f)
  abdf = Matrix[[a,b],[d,e]]
  cf = Matrix[[c],[f]]
  ans = abdf.inv * cf
  x,y = ans.to_a.flatten.map{|x| x.round(3)}
  printf "%0.3f %0.3f\n",x,y
end
