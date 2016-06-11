n = 1
until (max_w = gets.to_i) == 0
  treasures = []
  max_n = gets.to_i

  w = Array.new(max_n+1)
  v = Array.new(max_n+1)
  dp = Array.new(max_n+1).map{Array.new(max_w+1,0)}
  (1..max_n).each do |i|
    treasure = gets.split(',').map(&:to_i)
    v[i] = treasure[0]
    w[i] = treasure[1]
  end
  for i in 1..max_n do
    for j in 0..max_w do
      if w[i] <= j
        dp[i][j] = [dp[i-1][j],dp[i-1][j-w[i]]+v[i]].max
      else
        dp[i][j] = dp[i-1][j]
      end
    end
  end
  max_val = dp.last.last
  max_wei = dp.last.index(max_val)
  puts "Case #{n}:"
  puts max_val
  puts max_wei
  n += 1
end
