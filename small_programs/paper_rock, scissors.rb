require 'pry'

# 1. Come up with requirements/specifications, which will determine the scope.
# 2. Application Logic: sequence of steps
# 3. Translation of the steps into code
# 4. Run code to verify the logic.

#Application sequence
# 1. draw a board
# 2. Assign player 1 to: "X"
# 3. Assign player 2 to: "O"

# 4. Loop untill all squares are taken
# 5. player 1 picks an empty square
# 6. check for a winner
# 7. player 2 pick an epty square
# 8. check for a winner

# 9. If there is a winner, show the winner
# 10. else it's a tie

def initialize_board
	b = {}
	(1..9).each {|position| b[position] = ' '}
	b
end

def draw_board(b)
	puts " #{b[1]} | #{b[2]} | #{b[3]} "
	puts "--------- "
	puts " #{b[4]} | #{b[5]} | #{b[6]} "
	puts "--------- "
	puts " #{b[7]} | #{b[8]} | #{b[9]} "
end


def empty_positions(o)
	b.select {|k, v|v == ' '}.keys
end

def player_picks_square(b)
	puts "Pick a square (1 - 9):"
	position = gets.chomp.to_i
	b[position] = 'x'
	# binding.pry
end

def computer_picks_square(b)
position = empty_positions(b).sample
b[position] = 'o'
end

board = initialize_board

draw_board(board)
player_picks_square(board)
computer_picks_square(board)
	
begin

end until winner || all_squares_taken?






