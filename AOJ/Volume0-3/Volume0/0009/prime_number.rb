require "prime"
primes = []
Prime.each(999999) do |prime|
  primes << prime
end
while line = gets
  n = line.to_i
  puts primes.count{|item| item <= n}
end
