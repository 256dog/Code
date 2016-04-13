n = gets.to_i
n.times do 
  a = gets.to_i
  b = gets.to_i
  ans = a + b
  if ans >= 10**80
    puts "overflow"
  else
    puts ans
  end
end
