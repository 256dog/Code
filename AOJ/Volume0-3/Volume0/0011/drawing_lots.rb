w = gets.to_i
lots = (0..w).to_a
n = gets.to_i
n.times do
  a,b = gets.split(',').map(&:to_i)
  lots[a],lots[b] = lots[b],lots[a]
end
puts lots[1..w]
