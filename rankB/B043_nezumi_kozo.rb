def steal(grid, row, column, direction)
  house = grid[row][column]
  next_dir = next_direction(house, direction)

  if house == '.'
    grid[row][column] = '*'
  else
    grid[row][column] = '.'
  end

  ret_arr = move(row, column, next_dir)

  { 'row': ret_arr[0], 'column': ret_arr[1], 'direction': next_dir }
end

def next_direction(house, direction)
  if house == '.'
    case direction
    when 'N' then
      'E'
    when 'E' then
      'S'
    when 'S' then
      'W'
    when 'W' then
      'N'
    end
  else
    case direction
    when 'N' then
      'W'
    when 'W' then
      'S'
    when 'S' then
      'E'
    when 'E' then
      'N'
    end
  end
end

def move(row, column, next_direction)
  next_row = row
  next_column = column

  case next_direction
  when 'N' then
    next_row -= 1
  when 'E' then
    next_column += 1
  when 'S' then
    next_row += 1
  when 'W' then
    next_column -= 1
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

row = h0 - 1
column = w0 - 1
direction = 'N'

2000.times do |_|
  if row.negative? || column.negative? || row == h || column == w
    break
  end

  obj = steal(grid, row, column, direction)
  # p obj
  row = obj[:row]
  column = obj[:column]
  direction = obj[:direction]
end

h.times do |ri|
  row_str = grid[ri]
  puts row_str
end
