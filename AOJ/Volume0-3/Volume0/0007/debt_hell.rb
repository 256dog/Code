n = gets.to_i
dept = 100_000
n.times do
  dept = (dept * 1.05 / 1000).ceil * 1000
end
puts dept
