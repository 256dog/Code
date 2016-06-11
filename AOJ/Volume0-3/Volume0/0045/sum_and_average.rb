val = num = line = 0
ARGF.each do |l|
  v,n = l.split(',').map(&:to_i)
  val += v*n
  num += n
  line += 1
end
puts val,(num.to_f/line).round
