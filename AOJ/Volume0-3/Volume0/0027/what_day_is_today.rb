while line = gets
  m,d = line.split.map(&:to_i)
  break if m == 0 and d == 0
  puts Time.new(2004,m,d).strftime("%A")
end
