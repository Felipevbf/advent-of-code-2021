count = 0
file = File.open('day01.txt')
file_data = file.readlines.map(&:chomp)
numbers = file_data.map(&:to_i)
for i in (1...numbers.size)
  if numbers[i] > numbers[i - 1]
    count += 1
  end
end

# numbers.each_with_index do |number, index|
#   preview_element = numbers[index - 1]
#   unless preview_element.nil?
#     if number[index] > number[preview_element]
#       count += 1
#     end
#   end
# end
p count
file.close
