h, w = gets.chomp.split(' ').map(&:to_i)
a11, a12 = gets.chomp.split(' ').map(&:to_i)
b21, b22 = gets.chomp.split(' ').map(&:to_i)

diff_h = a12 - a11
diff_v = b21 - a11

arr = []
arr << Array.new(w, 0)
arr << Array.new(w, 0)

arr[0][0] = a11
arr[0][1] = a12
arr[1][0] = b21
arr[1][1] = b22

(2...w).each do |wi|
  arr[0][wi] = arr[0][1] + (a12 - a11) * (wi -1)
  arr[1][wi] = arr[1][1] + (b22 - b21) * (wi -1)
end

w.times do |wi|
  diff_v = arr[1][wi] - arr[0][wi]
  (2...h).each do |hi|
    # puts hi
    
    arr << Array.new(w) if wi == 0 && hi >= 2
    # p arr
    ret = arr[1][wi] + diff_v * (hi - 1)
    # puts "#{hi}, #{wi}"
    arr[hi][wi] = ret
  end
end

arr.each { |row| puts row.join(' ') }