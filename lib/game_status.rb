# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]
  top_row_win = WIN_COMBINATIONS[0]
  mid_row_win = WIN_COMBINATIONS[1]
  bot_row_win = WIN_COMBINATIONS[2]
  first_col_win = WIN_COMBINATIONS[3]
  sec_col_win = WIN_COMBINATIONS[4]
  third_col_win = WIN_COMBINATIONS[5]
  left_dia_win = WIN_COMBINATIONS[6]
  right_dia_win = WIN_COMBINATIONS[7]
  
def won?(board)
  if board == [" "," "," "," "," "," "," "," "," "]
    false
  else
    board.each do |combo|
      board.each do |position|
        t_f = board.all? |position| position == 'X'
        if t_f == true
          puts combo
        else
          false
        end
    end
  end
  end
end

def full?(board)
  board.none? do |elements| 
    board[elements] == " "
    
  end
end