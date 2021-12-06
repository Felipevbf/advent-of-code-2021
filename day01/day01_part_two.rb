count = 0
file = File.open('day01.txt')
file_data = file.readlines.map(&:chomp)
numbers = file_data.map(&:to_i)

for i in (3...numbers.size)
  if numbers[i] > numbers[i - 3]
    count += 1
  end
end
p count
