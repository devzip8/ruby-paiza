input = gets.chomp
#puts "1: '#{input}'"
input = gets.chomp
#puts "2: '#{input}'"
arr = input.split(' ').map(&:to_i)
#p arr
sum = arr.inject(0) { |ret, n| ret + n }
puts "#{sum}"