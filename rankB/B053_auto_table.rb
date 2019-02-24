h, w = gets.chomp.split(' ').map(&:to_i)
a00, a01 = gets.chomp.split(' ').map(&:to_i)
a10, a11 = gets.chomp.split(' ').map(&:to_i)

arr = []
arr << Array.new(w, 0)
arr << Array.new(w, 0)

arr[0][0] = a00
arr[0][1] = a01
arr[1][0] = a10
arr[1][1] = a11

# まずは1, 2行目を全て埋める
(2...w).each do |wi|
  arr[0][wi] = arr[0][1] + (a01 - a00) * (wi - 1)
  arr[1][wi] = arr[1][1] + (a11 - a10) * (wi - 1)
end

# 次に1, 2列目を全て埋める
(2...h).each do |hi|
  arr << Array.new(w)
  arr[hi][0] = arr[1][0] + (a10 - a00) * (hi - 1)
  arr[hi][1] = arr[1][1] + (a11 - a01) * (hi - 1)
end

# 3列目以降、３行目以降を埋めていく
(2...h).each do |hi|
  (2...w).each do |wi|
    arr[hi][wi] = arr[hi][1] + (arr[hi][1] - arr[hi][0]) * (wi - 1)
  end
end

arr.each { |row| puts row.join(' ') }