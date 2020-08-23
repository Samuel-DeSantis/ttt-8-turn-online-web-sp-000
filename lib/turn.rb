def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input_i = input.to_i
  input_i -= 1
  return input_i
end

def valid_move?(board, index)
  if (board[index] === " " || board[index] === "")
    return true
  elsif (board[index] === nil)
    return true
  else
    return false
  end
end

def move(board, index, value = "X")
  board[index] = value
end

def turn
  board = [" ", " ",  " ",  " ",  " ",  " ",  " ",  " ",  " "]

  puts " Please enter 1-9:"
  input = gets.strip

  input = input_to_index(input)
  valid_move?(board, input)
end
