hs = []
10.times do
  hs << gets.to_i
end
hs.sort!
3.times do
  puts hs.pop
end
