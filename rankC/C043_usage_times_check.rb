n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)

hash = {}
max_cnt = 0
arr.length.times do |i|
  id = arr[i]
  if hash.has_key?(id)
    hash[id] = hash[id] + 1
  else
    hash[id] = 1
  end
  max_cnt = hash[id] if hash[id] > max_cnt
end

ret_arr = []
hash.each do |k, v|
  ret_arr << k if v == max_cnt
end

puts ret_arr.sort.join(' ')

