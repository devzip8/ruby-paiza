def steal(grid, row, column, direction)
  house = grid[row][column]
  next_dir = next_direction(house, direction)

  grid[row][column] = if house == '.'
                        '*'
                      else
                        '.'
                      end

  ret_arr = move(row, column, next_dir)

  { 'row': ret_arr[0], 'column': ret_arr[1], 'direction': next_dir }
end

def next_direction(house, direction)
  if house == '.'
    next_direction_normal(direction)
  else
    next_direction_rich(direction)
  end
end

def next_direction_normal(direction)
  case direction
  when 'N' then 'E'
  when 'E' then 'S'
  when 'S' then 'W'
  when 'W' then 'N'
  end
end

def next_direction_rich(direction)
  case direction
  when 'N' then 'W'
  when 'W' then 'S'
  when 'S' then 'E'
  when 'E' then 'N'
  end
end

def move(row, column, next_direction)
  next_row = row
  next_column = column

  case next_direction
  when 'N' then next_row -= 1
  when 'E' then next_column += 1
  when 'S' then next_row += 1
  when 'W' then next_column -= 1
  end

  [next_row, next_column]
end

h, w = gets.chomp.split(' ').map(&:to_i)
h0, w0 = gets.chomp.split(' ').map(&:to_i)

grid = []
h.times do |_|
  str = gets.chomp
  grid << str
end

# 最初の場所
row = h0 - 1
column = w0 - 1
direction = 'N'

2000.times do |_|
  break if row.negative? || column.negative? || row == h || column == w

  next_info = steal(grid, row, column, direction)
  row = next_info[:row]
  column = next_info[:column]
  direction = next_info[:direction]
end

h.times do |ri|
  row_str = grid[ri]
  puts row_str
end
