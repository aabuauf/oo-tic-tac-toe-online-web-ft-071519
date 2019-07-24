class TicTacToe
 WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]
  def initialize
    @board = [" ", " "," "," "," "," "," "," "," "]
  end
  
def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move( index, current_player = "X")
  @board[index] = current_player
end

def position_taken?( location)
  @board[location] != " " && @board[location] != ""
end

def valid_move?(index)
  index.between?(0,8) && !position_taken?( index)
end

def turn
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(index)
    move(index)
    display_board
  else
    turn
  end
end

  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end
  
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
  
  def won?
    WIN_COMBINATIONS.each do|winningArray|
      if @board[winningArray[0]]== @board[winningArray[1]] && @board[winningArray[1]]== @board[winningArray[2]]
    end
  end
  
  def full?
    unless @board.include?(" ")
  end
  
  def draw?
    if full?==true && won?==false
      true
    end
  end
  
  def over?
    if won? || full?
  end
  
  def winner
    if won?
    WIN_COMBINATIONS.each do|winningArray|
        if @board[winningArray[0]]== @board[winningArray[1]] && @board[winningArray[1]]== @board[winningArray[2]]
        won = @board[winningArray[2]]
      end
    end
    return won
    end
  end
  

end