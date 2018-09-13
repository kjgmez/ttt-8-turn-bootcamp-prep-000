def input_to_index(input)
  index = input.to_i - 1 
end
  
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "] 
  
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
  
def valid_move? (board, index)
  if (position_taken?(board, index) == FALSE) && (index.between?(0,8))
    TRUE
  elsif position_taken?(board, index) == TRUE
  FALSE
  else
  FALSE
  end
end

def position_taken? (board, index)
  if (board[index] ==  "") || (board[index] == " ") || (board[index] == NIL)
    FALSE
    elsif (board[index] ==  "X") || (board[index] == "O")
    TRUE
  end
end

def move (board, index, token = "X")
  board[index].push(token)
end

  
  