#1. Players pick a hand of either "paper", "rock", or "scissors". Then the 2 hands are comparent and its either a tie (if hands are the same) or p > r, r > s and s > p.
#2. PRS is a games between 2 players
#3. use the comparable method


class Hand
	include Comparable

	attr_reader :value

	def initialize(v)
		@value = v
	end

		def <=>(another_hand) 
			if @value == another_hand.value
				0
			elsif (@value == 'p' && another_hand.value == 'r') || (@value == 'r' && another_hand.value == 's') || (@value == 's' && another_hand.value == 'p')
				1
			else
			  -1		
		end
	end

	def display_winning_message
		case @value
		when 'p'
			puts "Paper wraps Rock!"
		when 'r'
			puts "Rock smashes Scissors!"
		when 's'
			puts "Scissors cutes Paper!"
	end
end

end

class Player
	attr_accessor :hand
	attr_reader :name

	def initialize(n)
		@name = n
	end

	def to_s
		"#{name} currently has a choice of #{self.hand.value}"
	end
end

class Human < Player
	def pick_hand
		begin
			puts "Pick one: (p, r, s):"
			c = gets.chomp.downcase
		end until Game::CHOICES.keys.include?(c)
		
		self.hand = Hand.new(c)
	end
end

class Computer < Player
	def pick_hand
		self.hand = Hand.new(Game::CHOICES.keys.sample)
	end
end

class Game
	CHOICES = {'p' => 'paper', 'r' => 'rock', 's' => 'scissors'}

	attr_reader :player, :computer

	def initialize
		@player = Human.new("Bob")
		@computer = Computer.new("R202")
	end

	def compare_hands
		if player.hand == computer.hand
			puts "It's a tie!"
		elsif player.hand > computer.hand
			player.hand.display_winning_message
			puts "#{player.name} won!"
		else
			computer.hand.display_winning_message
			puts "#{computer.name} won!"
		end	
	end

	def play
		player.pick_hand
		computer.pick_hand
		compare_hands

		puts player
		puts computer
	end
end

game = Game.new.play

