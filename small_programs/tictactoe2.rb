#1. Have detailed requirements or specifications in a written form
#2. Extract major nouns -> classes
#3. Extrct major verbs -> instance methods
#4. Group instance methods into classes

# Aprroach to OOP
#1. Extract classes and objects from existing code
#2. Write out a description of the program.Extract nouns from the description and group common verbs into the nouns

#What is Tic Tac Toe Game?

#1. draw board with two players. We start with an empty 3X3 board.
#2. assign player to "X"
#3. assign player to "O"
#4. choose random squares
#5. determine the winner and looser
#6. Alternate turns untill player gets 3 squares in a row.
#7. If all squares are marked and nobody won than it is a tie

class Board
	WINNING_LINES = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]

	def initialize
		@data = {}
		(1..9).each {|position| @data[position] = Square.new(' ')}
	end

	def draw
		system 'clear'
		puts
		puts " #{@data[1]} | #{@data[2]} | #{@data[3]} "
		puts "------------ "
		puts " #{@data[4]} | #{@data[5]} | #{@data[6]} "
		puts "------------ "
		puts " #{@data[7]} | #{@data[8]} | #{@data[9]} "
	end

	def all_squares_marked?
		empty_squares.size == 0
	end

	def empty_squares
		@data.select {|_, square| square.value == ' '}.values
	end

	def empty_positions
		@data.select {|_, square| square.empty?}.keys
	end

	def mark_square(position, marker)
		@data[position].mark(marker)
	end

	def winning_condition?(marker)
		WINNING_LINES.each do |line|
			return true if @data[line[0]].value == marker && @data[line[1]].value == marker && @data[line[2]].value == marker
		end
		false
	end

end


class Square
	attr_accessor :value

	def initialize(value)
		@value = value
	end

	def mark(marker)
		@value = marker
	end

	def occupied?
		@value != ' '
	end

	def empty?
		@value == ''
	end

	def to_s
		@value
	end
end

class Player
	attr_accessor :marker, :name

	def initialize(name, marker)
		@name = name
		@marker = marker
	end
end



board = Board.new
board.draw

class Game
	def initialize
		@board = Board.new
		@human = Player.new("Ziv", "X")
		@computer = Player.new("R2D2", "O")
		@current_player = @human
	end

	def current_player_mark_square
		if @current_player == @human
			begin
				puts "Choose a position (1-9):"
				position = gets.chomp.to_i
			end until @board.empty_positions.include?(position)
		else
			position = @board.empty_positions.sample
		end
		@board.mark_square(position, @current_player.marker)
	end

	def current_player_win?
		@board.winning_condition?(@current_player.marker)
	end

	def alternate_player
		if @current_player ==@human
			@current_player = @computer
		else
			@current_player = @human
		end
	end

	def play
		@board.draw
		loop do
			@current_player_mark_square
			@board.draw
			if current_player_win?
				puts "The winner is #{@current_player.name}!"
				break
			elsif @board.all_squares_marked?
				puts "Its a tie!"
				break
			else
			alternate_player
		end
	end
	puts "Bye!"
end
end


Game.new.play











