require 'prime'
ARGF.each do |line|
  n = line.to_i
  s = b = nil
  i = n
  loop do
    i -= 1
    if Prime.prime?(i)
      s = i
      break
    end
  end
  i = n
  loop do
    i += 1
    if Prime.prime?(i)
      b = i
      break
    end
  end
  puts "#{s} #{b}"
end
