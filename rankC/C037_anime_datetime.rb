mmdd, hhmi = gets.chomp.split(' ')
mm, dd = mmdd.split('/').map(&:to_i)
hh, mi = hhmi.split(':').map(&:to_i)

additional_dd = hh / 24
final_dd = dd + additional_dd
final_hh = hh % 24

printf('%02d/%02d %02d:%02d', mm, final_dd, final_hh, mi)
