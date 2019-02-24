n = gets.chomp.to_i
g = gets.chomp

is_none = true
n.times do |i| 
  input = gets.chomp
  if input.include?(g)
    puts input
    is_none = false
  end
end
puts "None" if is_none



