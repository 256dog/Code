az = ('a'..'z').to_a
M=26
def e(a,b,c)
  return (c*a + b) % M
end
def d(a,b,c)
  return a*(c - b) % M
end
def inv(a)
  (1..26).each do |i|
    if i*a%M == 1
      return  i
    end
  end
end

gets.to_i.times do
  cipher = gets.chomp
  catch :decipher do
    (1..26).each do |a|
      next unless 26.gcd(a) == 1
      (0..26).each do |b|
        %w"this that".each do |t|
          aff = ""
          t.each_char do |c|
            aff << az[e(a,b,az.index(c))]
          end
          if cipher.include?(aff)
            decipher = ""
            inva = inv(a)
            cipher.each_char do |c|
              if c =~ /[a-z]/
                decipher << az[d(inva,b,az.index(c))]
              else
                decipher << c
              end
            end
            puts decipher
            throw :decipher
          end
        end
      end
    end
  end
end
