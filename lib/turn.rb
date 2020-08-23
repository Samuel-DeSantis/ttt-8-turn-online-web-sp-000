def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  input -= 1
  return input
end

def position_taken?(board, index)
  if (board[index] === " " || board[index] === "")
    return false
  elsif (board[index] === nil)
    return false
  elsif (board[index] === "X" || board[index] === "O")
    return true
  end
end

def valid_move?(board, index)
  if (index <= 8 && !(position_taken?(board, index)))
    return true
  else
    return false
  end
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  input_to_index(input)
  puts input
  if (valid_move?(board, input))
    move(board, input, value[0])
  else
    until (valid_move?(board, input))
      puts "Please enter 1-9:"
      input = gets.strip
    end
  end
end
