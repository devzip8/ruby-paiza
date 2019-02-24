n, k, p = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ')
arr = arr.sort

#pages = n / k
#pages + 1 if n % k != 0

s = (p - 1) * k
e = p * k - 1

words = arr[s..e]
words.each { |w| puts w }

