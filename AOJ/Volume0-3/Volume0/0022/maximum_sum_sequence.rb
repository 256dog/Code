until (n = gets.to_i) == 0
  a = []
  n.times do
    a << gets.to_i
  end
  dp = []
  dp[0] = a[0]
  (1...n).each do |i|
    dp[i] = [dp[i-1] + a[i], a[i]].max 
  end
  puts dp.max
end
