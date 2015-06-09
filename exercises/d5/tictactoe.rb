class TicTacToe

	def initialize
       @board = {}
       display(@board)
       @ttt = false
       @full = false
	end


	#check for tic-tac-toe
  def check_ttt(board, player)
  	#check hash for  g, h, i  or b, e, h  or d, e, f  or c, e, g  or c, f, i
    if [board[:a], board[:b], board[:c]].uniq.length == 1
       	@ttt = true
       	puts "Tic-tac-toe! #{player} won!"
    elsif [board[:a], board[:d], board[:g]].uniq.length == 1
       @ttt = true
       puts "Tic-tac-toe! #{player} won!"
    elsif [board[:a], board[:e], board[:i]].uniq.length == 1
       @ttt = true
       puts "Tic-tac-toe! #{player} won!"
    elsif [board[:g], board[:h], board[:i]].uniq.length == 1
       @ttt = true
       puts "Tic-tac-toe! #{player} won!"
    elsif [board[:b], board[:e], board[:h]].uniq.length == 1
       @ttt = true
       puts "Tic-tac-toe! #{player} won!"
    elsif [board[:d], board[:e], board[:f]].uniq.length == 1
       @ttt = true
       puts "Tic-tac-toe! #{player} won!"
    elsif [board[:c], board[:e], board[:g]].uniq.length == 1
       @ttt = true
       puts "Tic-tac-toe! #{player} won!"
    elsif [board[:c], board[:f], board[:i]].uniq.length == 1
       @ttt = true
       puts "Tic-tac-toe! #{player} won!"
    else
    end
  end

#Display clear board

 
	

def display(board)
  board[:a] ||= "1"
  board[:b] ||= "2"
  board[:c] ||= "3"
  board[:d] ||= "4"
  board[:e] ||= "5"
  board[:f] ||= "6"
  board[:g] ||= "7"
  board[:h] ||= "8"
  board[:i] ||= "9"
  print "\n"
  print " #{board[:a]} | #{board[:b]} | #{board[:c]} \n"
  print "---+---+--- \n"
  print " #{board[:d]} | #{board[:e]} | #{board[:f]} \n"
  print "---+---+--- \n"
  print " #{board[:g]} | #{board[:h]} | #{board[:i]} \n"
  print "\n"
end

#run after every move
def check_board(board)
	#check whether all squares have been played
	board_full = 0
	[board[:a], board[:b], board[:c], board[:d], board[:e], board[:f], board[:g], board[:h], board[:i]].each {|square| board_full += 1 if square == "X" || square == "O"}
	if board_full == 9
		@full = true
		puts "Game over."
	else 
	end
end

=begin 
then make calls like this: display(board = {a: "X"})
board = (board = {a: "O", e: "O"})
display(board)
board[:f] = "X"
display(board)
board[:g] = "O"
display(board)
=end


#Setting up player1 and player 2



def play(player)
  while @ttt == false && @full == false
  	puts "It is #{player}'s move. Enter the number of the square where you would like to go:"
    move = gets.chomp.to_s
    move_board(move, player)
    if player == "X"
  	  player = "O"
    elsif player == "O"
  	  player = "X"
  	else
    end
  end
end

def move_board(move, player)
case move
when "1"
	@board[:a] = player
	display(@board) 
	check_ttt(@board, player)
	check_board(@board)
when "2"
    @board[:b] = player
    display(@board) 
	check_ttt(@board, player)
	check_board(@board)
when "3"
	@board[:c] = player
	display(@board) 
	check_ttt(@board, player)
	check_board(@board)
when "4"
	@board[:d] = player
    display(@board) 
	check_ttt(@board, player)
	check_board(@board)
when "5"
	@board[:e] = player
	display(@board) 
	check_ttt(@board, player)
	check_board(@board)
when "6"
	@board[:f] = player
	display(@board) 
	check_ttt(@board, player)
	check_board(@board)
when "7"
	@board[:g] = player
	display(@board) 
	check_ttt(@board, player)
	check_board(@board)
when "8"
	@board[:h] = player
	display(@board) 
	check_ttt(@board, player)
	check_board(@board)
when "9"
	@board[:i] = player
	display(@board) 
	check_ttt(@board, player)
	check_board(@board)
else
	puts "Try again."
	play(player)
end

end
end

TicTacToe.new.play("X")
  
#Place X for player1 or O for player2 on board
#Update board
#Check for tic-tac-toe
#If not, Display updated board

