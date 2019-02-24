h, w = gets.chomp.split(' ').map(&:to_i)

h.times do |i|
  arr = gets.chomp.split(' ').map(&:to_i)
  
  arr2 = []
  arr.length.times do |wi|
    arr2 << (arr[wi] >= 128 ? 1 : 0)
  end

  puts arr2.join(' ')
end