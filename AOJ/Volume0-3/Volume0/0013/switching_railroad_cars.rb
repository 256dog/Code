cars = []
while line = gets
  car = line.to_i
  if car == 0
    puts cars.pop
  else
    cars.push car
  end
end
