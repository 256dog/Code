a = []
ARGF.each do |line|
  a << line.to_f
end
puts a.max - a.min

