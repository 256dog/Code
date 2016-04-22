while line = gets
  n,s = line.split.map(&:to_i)
  break if n == 0 and s == 0
  puts (0..9).to_a.combination(n).count{|a| s ==  a.inject(:+)}
end
