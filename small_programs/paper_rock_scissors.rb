#1.all players pick either Paper, Rock, or Scissors
#2.Compare paper > rocj, rock>scisors, scissors > paper or tie if the same 
#3. Play again


CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}
puts "Welcome to paper rock scissors!"

def display_winning_message(winning_choice)
	case winning_choice
	when 'p'
		puts "Paper wraps Rock!"
	when 'r'
		puts "Rock smashes Scissors!"
	when 's'
		puts "Scissors cuts Paper"
	end
end


loop do
	#player makes a pick
	begin
		puts "Pick one: (p, r, s):"
		player_input = gets.chomp.downcase
	end until CHOICES.keys.include?(player_input)
	# computer make a pick

	computer_choice = CHOICES.keys.sample

	if player_input == computer_choice
		puts "Its a tie"

#if player wins?
	elsif (player_input == 'p' && computer_choice == 'r' ) || (player_input == 'r' && computer_choice == 's') || (player_input == 's' && computer_choice == 'p')
		display_winning_message(player_input)
		puts "You Won!"
	else
		display_winning_message(computer_choice)
		puts "Computer Won!"
	end

puts "Play again? (y/n)"
break if gets.chomp.downcase != 'y'

end

puts "Good bye!"

