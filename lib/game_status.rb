# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

ç

def won?(board)
  
  WIN_COMBINATIONS.detect do |win|
    if board[win[0]] == "X" && board[win[1]] == "X" && board[win[2]] == "X"
      return win
  elsif
    board[win[0]]== "O" && board[win[1]] == "O" && board[win[2]] == "O"
      return win
    end
  end
  false
end

def full?(board)
  board.each do |spot|
    if spot == " " 
      return false
    end
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  else
    return nil
  end
end

#if the spot is empty then return false 

#no more matching combo and no more spaces

#return true when the board is taken up
#return true for a won game when board is full
#return false when the game is not over yet

#return x when x won

