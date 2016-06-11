gets.to_i.times do
  l = r = 0
  catch(:no) do
    gets.split.map(&:to_i).each do |b|
      if l < b
        l = b
      elsif r < b
        r = b
      else
        puts 'NO'
        throw :no
      end
    end
    puts 'YES'
  end
end
