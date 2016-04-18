base = ('a'..'z').to_a
words = ['the','this','that']
while line = gets
  catch(:decoded) do
    (1..base.length).each do |i|
      words.each do |w|
        cw = ''
        w.split('').each do |c|
          cw << base[(base.index(c) + i) % base.length]
        end

        if line.include?(cw)
          line.split('').each do |c|
            if c =~ /[a-z]/
              print base[base.index(c) - i]
            else
              print c
            end
          end
          break(:decoded)
        end
      end
    end
  end
end
