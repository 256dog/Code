while line = gets
  a,b =  line.split.map(&:to_i)
  puts a.gcdlcm(b).join(" ")
end
