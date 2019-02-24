n = gets.chomp.to_i
#puts "1: '#{input}'"
hw = gets.chomp
#puts "2: '#{input}'"
arr = hw.split(' ').map(&:to_i)
total = arr[0] * arr[1]
puts total % n