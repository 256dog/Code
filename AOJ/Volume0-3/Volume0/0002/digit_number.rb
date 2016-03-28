while line = gets
  a,b = line.split.map(&:to_i) 
  puts Math.log10(a+b).to_i + 1
end
